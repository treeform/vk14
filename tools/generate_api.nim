## XML-based Nim code generator for Vulkan 1.4 bindings.
## Reads vk.xml from xml/ and generates .nim files in src/vk14/.
## Also generates the src/vk14.nim switchboard.
##
## Usage: nim r tools/generate_api.nim

import std/[os, strutils, strformat, sets, tables]
import vk_xml

proc nimNormalize(name: string): string =
  ## Normalizes a Nim identifier for deduplication.
  result = ""
  for i, c in name:
    if i > 0 and c == '_':
      continue
    result.add c.toLowerAscii()

const
  Header = "# Auto-generated from vk.xml — do not edit manually.\n" &
           "# Regenerate with: nim r tools/generate_api.nim\n"

  CTypeMap = {
    "uint32_t": "uint32", "uint64_t": "uint64", "uint16_t": "uint16",
    "uint8_t": "uint8", "int32_t": "int32", "int64_t": "int64",
    "int16_t": "int16", "int8_t": "int8", "size_t": "csize_t",
    "float": "float32", "double": "float64", "char": "char",
    "int": "int32",
  }.toTable()

  PlatformTypeMap = {
    "Display": "ptr object", "VisualID": "uint32", "Window": "uint64",
    "RROutput": "uint64",
    "wl_display": "ptr object", "wl_surface": "ptr object",
    "HINSTANCE": "pointer", "HWND": "pointer", "HMONITOR": "pointer",
    "HANDLE": "pointer", "SECURITY_ATTRIBUTES": "pointer",
    "DWORD": "uint32", "LPCWSTR": "pointer",
    "xcb_connection_t": "ptr object", "xcb_visualid_t": "uint32",
    "xcb_window_t": "uint32",
    "IDirectFB": "ptr object", "IDirectFBSurface": "ptr object",
    "zx_handle_t": "uint32",
    "GgpStreamDescriptor": "uint32", "GgpFrameToken": "uint32",
    "_screen_context": "", "_screen_window": "",
    "_screen_buffer": "",
    "ANativeWindow": "ptr object", "AHardwareBuffer": "ptr object",
    "CAMetalLayer": "ptr object",
    "MTLDevice_id": "pointer", "MTLCommandQueue_id": "pointer",
    "MTLBuffer_id": "pointer", "MTLTexture_id": "pointer",
    "MTLSharedEvent_id": "pointer", "IOSurfaceRef": "pointer",
    "NvSciSyncAttrList": "pointer", "NvSciSyncObj": "pointer",
    "NvSciSyncFence": "pointer", "NvSciBufAttrList": "pointer",
    "NvSciBufObj": "pointer",
    "OHNativeWindow": "ptr object", "OHBufferHandle": "ptr object",
    "OH_NativeBuffer": "ptr object",
    "ubm_device": "ptr object", "ubm_surface": "ptr object",
  }.toTable()

  SkippedStructs: HashSet[string] = initHashSet[string]()

type
  TypeKind = enum
    tkUnknown, tkPrimitive, tkBaseType, tkHandle, tkStruct, tkEnum,
    tkBitmask, tkFuncPointer, tkPlatform

  TypeInfo = object
    kind: TypeKind
    nimName: string

  GenContext = object
    reg: VkRegistry
    typeMap: Table[string, TypeInfo]
    handleSet: HashSet[string]
    structSet: HashSet[string]
    enumSet: HashSet[string]
    bitmaskSet: HashSet[string]
    commandMap: Table[string, VkCommand]

proc buildContext(reg: VkRegistry): GenContext =
  ## Builds lookup tables from the registry.
  result.reg = reg

  for (k, v) in CTypeMap.pairs:
    result.typeMap[k] = TypeInfo(kind: tkPrimitive, nimName: v)
  result.typeMap["void"] = TypeInfo(kind: tkPrimitive, nimName: "void")

  for (name, nimType) in PlatformTypeMap.pairs:
    result.typeMap[name] = TypeInfo(kind: tkPlatform, nimName: nimType)

  for bt in reg.baseTypes:
    result.typeMap[bt.name] = TypeInfo(kind: tkBaseType, nimName: bt.name)

  for h in reg.handles:
    result.handleSet.incl h.name
    result.typeMap[h.name] = TypeInfo(kind: tkHandle, nimName: h.name)

  for s in reg.structs:
    if s.name notin SkippedStructs:
      result.structSet.incl s.name
      result.typeMap[s.name] = TypeInfo(
        kind: tkStruct, nimName: s.name
      )

  for g in reg.enumGroups:
    result.enumSet.incl g.name
    result.typeMap[g.name] = TypeInfo(kind: tkEnum, nimName: g.name)

  for bm in reg.bitmaskTypes:
    result.bitmaskSet.incl bm.name
    result.typeMap[bm.name] = TypeInfo(
      kind: tkBitmask, nimName: bm.name
    )

  for fp in reg.funcPointers:
    result.typeMap[fp.name] = TypeInfo(
      kind: tkFuncPointer, nimName: fp.name
    )

  for a in reg.typeAliases:
    if a.alias in result.typeMap:
      result.typeMap[a.name] = result.typeMap[a.alias]
    result.structSet.incl a.name

  for a in reg.enumTypeAliases:
    if a.alias in result.typeMap:
      result.typeMap[a.name] = result.typeMap[a.alias]

  for cmd in reg.commands:
    result.commandMap[cmd.name] = cmd
  for a in reg.commandAliases:
    if a.alias in result.commandMap:
      result.commandMap[a.name] = result.commandMap[a.alias]

proc resolveAlias(ctx: GenContext, name: string): string =
  ## Resolves a struct/type alias to its canonical name.
  for a in ctx.reg.typeAliases:
    if a.name == name:
      return a.alias
  return name

proc mapType(ctx: GenContext, typeName: string, ptrDepth: int,
             isConst: bool, arraySize: string): string =
  ## Maps a C type + pointer depth to a Nim type string.
  var base = ctx.resolveAlias(typeName)

  if base in CTypeMap:
    base = CTypeMap[base]
  elif base in PlatformTypeMap:
    let mapped = PlatformTypeMap[base]
    if mapped.len > 0:
      # Platform types like "ptr object" become "pointer" in struct fields.
      if mapped == "ptr object":
        base = "pointer"
      else:
        base = mapped
    else:
      base = "pointer"

  var nimType = base
  var depth = ptrDepth

  # If the base is already a pointer type, reduce depth.
  if base == "pointer" and depth > 0:
    depth -= 1
  elif base.startsWith("ptr ") and depth > 0:
    depth -= 1
    if depth == 0:
      nimType = base
    else:
      nimType = "pointer"

  # Apply pointer depth.
  for i in 0 ..< depth:
    nimType = "ptr " & nimType

  # Fix common patterns.
  nimType = nimType.replace("ptr void", "pointer")
  nimType = nimType.replace("ptr ptr char", "cstringArray")
  nimType = nimType.replace("ptr char", "cstring")
  nimType = nimType.replace("ptr pointer", "ptr pointer")

  if arraySize.len > 0:
    if arraySize == "_DYNAMIC":
      nimType = "ptr " & base
    else:
      nimType = &"array[{arraySize}, {base}]"

  result = nimType

proc mapParamType(ctx: GenContext, m: VkMember): string =
  ## Maps a command parameter to its Nim type.
  mapType(ctx, m.typeName, m.pointerDepth, m.isConst, m.arraySize)

proc cleanFloatLiteral(val: string): string =
  ## Strips C float suffixes (f, F) and ensures proper Nim float literal.
  result = val
  if result.endsWith("f") or result.endsWith("F"):
    result = result[0 ..< result.len - 1]

proc generateEnums(ctx: GenContext): string =
  ## Generates enums.nim with all constants and enum values.
  var lines: seq[string]
  lines.add Header
  lines.add ""

  # Version templates.
  lines.add "template vkMakeApiVersion*(variant, major, minor, patch: untyped): untyped ="
  lines.add "  ## Constructs a Vulkan API version number."
  lines.add "  ((uint32(variant) shl 29) or (uint32(major) shl 22) or (uint32(minor) shl 12) or uint32(patch))"
  lines.add ""
  lines.add "template vkApiVersionMajor*(version: untyped): untyped ="
  lines.add "  ## Extracts the major version."
  lines.add "  ((uint32(version) shr 22) and 0x7F'u32)"
  lines.add ""
  lines.add "template vkApiVersionMinor*(version: untyped): untyped ="
  lines.add "  ## Extracts the minor version."
  lines.add "  ((uint32(version) shr 12) and 0x3FF'u32)"
  lines.add ""
  lines.add "template vkApiVersionPatch*(version: untyped): untyped ="
  lines.add "  ## Extracts the patch version."
  lines.add "  (uint32(version) and 0xFFF'u32)"
  lines.add ""

  # API version constants.
  lines.add "const"
  lines.add "  VK_API_VERSION_1_0* = vkMakeApiVersion(0, 1, 0, 0)"
  lines.add "  VK_API_VERSION_1_1* = vkMakeApiVersion(0, 1, 1, 0)"
  lines.add "  VK_API_VERSION_1_2* = vkMakeApiVersion(0, 1, 2, 0)"
  lines.add "  VK_API_VERSION_1_3* = vkMakeApiVersion(0, 1, 3, 0)"
  lines.add "  VK_API_VERSION_1_4* = vkMakeApiVersion(0, 1, 4, 0)"
  lines.add ""

  # API Constants.
  lines.add "# API Constants"
  lines.add "const"
  for c in ctx.reg.apiConstants:
    var val = c.value
    val = val.replace("(~0U)", "(not 0'u32)")
    val = val.replace("(~0ULL)", "(not 0'u64)")
    val = val.replace("(~1U)", "(not 1'u32)")
    val = val.replace("(~2U)", "(not 2'u32)")
    if val.startsWith("(~0U"):
      val = val.replace("(~0U-1)", "(not 0'u32) - 1")
      val = val.replace("(~0U-2)", "(not 0'u32) - 2")
    if val.contains('.') and not val.startsWith("("):
      val = cleanFloatLiteral(val) & "'f32"
    lines.add &"  {c.name}* = {val}"
  lines.add ""

  # Build a global name -> value map for resolving aliases.
  var enumValueMap: Table[string, string]
  for group in ctx.reg.enumGroups:
    for v in group.values:
      if v.value.len > 0 and not v.value[0].isAlphaAscii():
        enumValueMap[v.name] = v.value

  # Enum groups.
  for group in ctx.reg.enumGroups:
    if group.values.len == 0:
      continue
    lines.add &"# {group.name}"
    lines.add "const"

    # Detect if this group contains negative values (signed enum).
    var hasSigned = false
    for v in group.values:
      if v.value.startsWith("-"):
        hasSigned = true
        break

    let suffix =
      if group.is64bit: "'u64"
      elif hasSigned: "'i32"
      else: "'u32"

    var seen: HashSet[string]
    for v in group.values:
      let normalized = nimNormalize(v.name)
      if normalized in seen:
        continue
      seen.incl normalized
      var val = v.value

      # Resolve alias references to numeric values.
      if val.len > 0 and val[0].isAlphaAscii():
        if val in enumValueMap:
          val = enumValueMap[val]
        else:
          lines.add &"  {v.name}* = {val}"
          continue

      if val.startsWith("-"):
        lines.add &"  {v.name}* = {val}'i32"
      elif val.startsWith("0x") or val.startsWith("0X"):
        lines.add &"  {v.name}* = {val}{suffix}"
      else:
        try:
          let intVal = val.parseBiggestInt()
          if intVal < 0:
            lines.add &"  {v.name}* = {val}'i32"
          else:
            lines.add &"  {v.name}* = {val}{suffix}"
        except:
          lines.add &"  {v.name}* = {val}"
    lines.add ""

  result = lines.join("\n") & "\n"

proc generateTypes(ctx: GenContext): string =
  ## Generates types.nim with all type definitions.
  var lines: seq[string]
  var emittedTypes: HashSet[string]
  lines.add Header
  lines.add ""
  lines.add "import enums"
  lines.add "export enums"
  lines.add ""

  # Handle base types.
  lines.add "type"
  lines.add "  VkHandle* = int64"
  lines.add "  VkNonDispatchableHandle* = int64"
  emittedTypes.incl "VkHandle"
  emittedTypes.incl "VkNonDispatchableHandle"
  lines.add ""

  # Base types (void basetypes become pointer).
  lines.add "type"
  for bt in ctx.reg.baseTypes:
    if bt.name in emittedTypes:
      continue
    emittedTypes.incl bt.name
    if bt.nimType == "void" or bt.nimType == "":
      lines.add &"  {bt.name}* = pointer"
    else:
      lines.add &"  {bt.name}* = {bt.nimType}"
  lines.add ""

  # Enum group names as type aliases so struct fields can reference them.
  lines.add "type"
  for group in ctx.reg.enumGroups:
    if group.name in emittedTypes:
      continue
    emittedTypes.incl group.name
    if group.name == "VkResult":
      lines.add &"  {group.name}* = int32"
    else:
      lines.add &"  {group.name}* = uint32"
  lines.add ""

  # Platform types (from external headers).
  lines.add "type"
  for pt in ctx.reg.platformTypes:
    if pt notin emittedTypes:
      if pt.startsWith("_"):
        continue
      emittedTypes.incl pt
      if pt in PlatformTypeMap:
        let nimType = PlatformTypeMap[pt]
        if nimType.len == 0 or nimType == "ptr object":
          lines.add &"  {pt}* = pointer"
        else:
          lines.add &"  {pt}* = {nimType}"
      else:
        lines.add &"  {pt}* = pointer"
  lines.add ""

  # Handles.
  lines.add "type"
  var handleAliases: seq[tuple[name, alias: string]]
  for h in ctx.reg.handles:
    if h.name in emittedTypes:
      continue
    if h.alias.len > 0:
      handleAliases.add (h.name, h.alias)
      continue
    emittedTypes.incl h.name
    let baseType =
      if h.dispatchable: "VkHandle"
      else: "VkNonDispatchableHandle"
    lines.add &"  {h.name}* = distinct {baseType}"
  for ha in handleAliases:
    if ha.name notin emittedTypes:
      emittedTypes.incl ha.name
      lines.add &"  {ha.name}* = {ha.alias}"
  lines.add ""

  # Bitmask types (with deduplication).
  lines.add "type"
  var bmAliases: seq[tuple[name, alias: string]]
  for bm in ctx.reg.bitmaskTypes:
    if bm.name in emittedTypes:
      continue
    if bm.alias.len > 0:
      bmAliases.add (bm.name, bm.alias)
      continue
    emittedTypes.incl bm.name
    lines.add &"  {bm.name}* = distinct {bm.flagsType}"
  for bma in bmAliases:
    if bma.name notin emittedTypes:
      emittedTypes.incl bma.name
      lines.add &"  {bma.name}* = {bma.alias}"
  lines.add ""

  # Enum type aliases.
  lines.add "type"
  for a in ctx.reg.enumTypeAliases:
    if a.name notin emittedTypes:
      emittedTypes.incl a.name
      lines.add &"  {a.name}* = {a.alias}"
  lines.add ""

  # Function pointer types.
  lines.add "type"
  for fp in ctx.reg.funcPointers:
    if fp.name notin emittedTypes:
      emittedTypes.incl fp.name
      lines.add &"  {fp.name}* = pointer"
  lines.add ""

  # Structs and unions.
  lines.add "type"
  for s in ctx.reg.structs:
    if s.name in SkippedStructs:
      continue
    if s.isUnion:
      lines.add &"  {s.name}* {{.union.}} = object"
    else:
      lines.add &"  {s.name}* = object"

    for m in s.members:
      let nimType = mapParamType(ctx, m)
      let safeName = safeName(m.name)
      lines.add &"    {safeName}*: {nimType}"
    lines.add ""

  # Struct type aliases (after struct definitions).
  for a in ctx.reg.typeAliases:
    if a.name notin emittedTypes:
      emittedTypes.incl a.name
      lines.add &"type {a.name}* = {a.alias}"
  lines.add ""

  result = lines.join("\n") & "\n"

proc generateCommands(ctx: GenContext): string =
  ## Generates commands.nim with all proc variable declarations.
  var lines: seq[string]
  lines.add Header
  lines.add ""
  lines.add "import types"
  lines.add "export types"
  lines.add ""

  # Loader infrastructure.
  lines.add "var vkGetProc*: proc(name: cstring): pointer {.cdecl.}"
  lines.add ""

  lines.add "var"
  var emitted: HashSet[string]

  # Pre-instance commands (emitted separately).
  let preInstanceCmds = [
    "vkCreateInstance",
    "vkEnumerateInstanceExtensionProperties",
    "vkEnumerateInstanceLayerProperties",
    "vkEnumerateInstanceVersion",
    "vkGetInstanceProcAddr",
  ].toHashSet()

  for cmd in ctx.reg.commands:
    if cmd.name in emitted:
      continue
    emitted.incl cmd.name

    var sig = &"  {cmd.name}*: proc("
    var first = true
    for p in cmd.params:
      if not first:
        sig &= ", "
      first = false
      let nimType = mapParamType(ctx, p)
      let safeName = safeName(p.name)
      sig &= &"{safeName}: {nimType}"
    sig &= "): "
    let retNimType =
      if cmd.returnType == "void": "void"
      elif cmd.returnType in CTypeMap: CTypeMap[cmd.returnType]
      else: cmd.returnType
    sig &= retNimType
    sig &= " {.stdcall.}"
    lines.add sig

  # Command aliases.
  for a in ctx.reg.commandAliases:
    if a.name notin emitted:
      emitted.incl a.name
      if a.alias in ctx.commandMap:
        let cmd = ctx.commandMap[a.alias]
        var sig = &"  {a.name}*: proc("
        var first = true
        for p in cmd.params:
          if not first:
            sig &= ", "
          first = false
          let nimType = mapParamType(ctx, p)
          let safeName = safeName(p.name)
          sig &= &"{safeName}: {nimType}"
        sig &= "): "
        let retNimType =
          if cmd.returnType == "void": "void"
          elif cmd.returnType in CTypeMap: CTypeMap[cmd.returnType]
          else: cmd.returnType
        sig &= retNimType
        sig &= " {.stdcall.}"
        lines.add sig

  lines.add ""
  result = lines.join("\n") & "\n"

proc generateCastLine(ctx: GenContext, cmd: VkCommand, procName: string): string =
  ## Generates a cast line for loading a command via vkGetProc.
  var sig = &"  {procName} = cast[proc("
  var first = true
  for p in cmd.params:
    if not first:
      sig &= ", "
    first = false
    let nimType = mapParamType(ctx, p)
    let safeName = safeName(p.name)
    sig &= &"{safeName}: {nimType}"
  sig &= "): "
  let retNimType =
    if cmd.returnType == "void": "void"
    elif cmd.returnType in CTypeMap: CTypeMap[cmd.returnType]
    else: cmd.returnType
  sig &= retNimType
  sig &= " {.stdcall.}](vkGetProc(\""
  sig &= procName
  sig &= "\"))"
  result = sig

proc generateFeatures(ctx: GenContext): string =
  ## Generates features.nim with version and extension loaders.
  var lines: seq[string]
  lines.add Header
  lines.add ""
  lines.add "import types, commands"
  lines.add ""

  # Feature loaders (Vulkan 1.0 through 1.4).
  var allVersionCommands: HashSet[string]
  for (version, commands) in ctx.reg.featureCommands:
    lines.add &"proc vkLoad{version}*() ="
    lines.add "  ## Loads Vulkan {version} commands.".replace("{version}", version)
    var hasAny = false
    for cmdName in commands:
      if cmdName in allVersionCommands:
        continue
      allVersionCommands.incl cmdName
      let resolvedName =
        if cmdName in ctx.commandMap: cmdName
        else: cmdName
      if resolvedName notin ctx.commandMap:
        continue
      let cmd = ctx.commandMap[resolvedName]
      lines.add generateCastLine(ctx, cmd, cmdName)
      hasAny = true
    if not hasAny:
      lines.add "  discard"
    lines.add ""

  # Extension loaders.
  for (extName, commands) in ctx.reg.extensionCommands:
    if commands.len == 0:
      continue
    let procName = "load" & extName
    lines.add &"proc {procName}*() ="
    lines.add "  ## Loads " & extName & " extension commands."
    var hasAny = false
    for cmdName in commands:
      if cmdName notin ctx.commandMap:
        # Try command aliases.
        var found = false
        for a in ctx.reg.commandAliases:
          if a.name == cmdName and a.alias in ctx.commandMap:
            let cmd = ctx.commandMap[a.alias]
            lines.add generateCastLine(ctx, cmd, cmdName)
            hasAny = true
            found = true
            break
        if not found:
          continue
      else:
        let cmd = ctx.commandMap[cmdName]
        lines.add generateCastLine(ctx, cmd, cmdName)
        hasAny = true
    if not hasAny:
      lines.add "  discard"
    lines.add ""

  result = lines.join("\n") & "\n"

proc generateSwitchboard(modules: seq[string]): string =
  ## Generates the src/vk14.nim switchboard file.
  var lines: seq[string]
  lines.add Header
  lines.add ""

  let genMods = modules.join(", ")
  lines.add &"import vk14/[{genMods}]"
  lines.add &"export {genMods}"
  lines.add ""
  lines.add "import vk14/[loader, extras, context]"
  lines.add "export loader, extras, context"
  lines.add ""

  result = lines.join("\n") & "\n"

proc main() =
  let scriptDir = parentDir(currentSourcePath())
  let xmlPath = normalizedPath(scriptDir / ".." / "xml" / "vk.xml")
  let outDir = normalizedPath(scriptDir / ".." / "src" / "vk14")
  let switchPath = normalizedPath(scriptDir / ".." / "src" / "vk14.nim")

  echo "Parsing vk.xml..."
  let reg = parseVkXml(xmlPath)
  echo &"  {reg.baseTypes.len} base types"
  echo &"  {reg.handles.len} handles"
  echo &"  {reg.bitmaskTypes.len} bitmask types"
  echo &"  {reg.structs.len} structs"
  echo &"  {reg.enumGroups.len} enum groups"
  echo &"  {reg.commands.len} commands"
  echo &"  {reg.featureCommands.len} feature versions"
  echo &"  {reg.extensionCommands.len} extensions with commands"

  echo "Building generation context..."
  let ctx = buildContext(reg)

  createDir(outDir)

  echo "Generating enums.nim..."
  let enumsContent = generateEnums(ctx)
  writeFile(outDir / "enums.nim", enumsContent)

  echo "Generating types.nim..."
  let typesContent = generateTypes(ctx)
  writeFile(outDir / "types.nim", typesContent)

  echo "Generating commands.nim..."
  let commandsContent = generateCommands(ctx)
  writeFile(outDir / "commands.nim", commandsContent)

  echo "Generating features.nim..."
  let featuresContent = generateFeatures(ctx)
  writeFile(outDir / "features.nim", featuresContent)

  echo "Generating switchboard..."
  let modules = @["enums", "types", "commands", "features"]
  writeFile(switchPath, generateSwitchboard(modules))

  # Summary.
  var totalEnumVals = 0
  for g in reg.enumGroups:
    totalEnumVals += g.values.len
  totalEnumVals += reg.apiConstants.len

  echo ""
  echo "Done!"
  echo &"  Generated 4 modules + switchboard"
  echo &"  Constants:  {reg.apiConstants.len}"
  echo &"  Enum vals:  {totalEnumVals}"
  echo &"  Structs:    {reg.structs.len}"
  echo &"  Commands:   {reg.commands.len}"

when isMainModule:
  main()

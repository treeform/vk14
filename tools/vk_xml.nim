## Vulkan XML registry parser.
## Parses vk.xml into typed data structures for code generation.
## No code generation here — just data extraction.

import std/[strutils, tables, xmlparser, xmltree,
  streams, sets]

type
  VkMember* = object
    name*: string
    typeName*: string
    pointerDepth*: int
    isConst*: bool
    arraySize*: string

  VkStructDef* = object
    name*: string
    isUnion*: bool
    members*: seq[VkMember]

  VkEnumVal* = object
    name*: string
    value*: string

  VkEnumGroup* = object
    name*: string
    isBitmask*: bool
    is64bit*: bool
    values*: seq[VkEnumVal]

  VkCommand* = object
    name*: string
    returnType*: string
    params*: seq[VkMember]

  VkRegistry* = object
    baseTypes*: seq[tuple[name, nimType: string]]
    bitmaskTypes*: seq[tuple[name, flagsType, alias: string]]
    handles*: seq[tuple[name: string, dispatchable: bool, alias: string]]
    enumTypeAliases*: seq[tuple[name, alias: string]]
    funcPointers*: seq[tuple[name, nimDecl: string]]
    structs*: seq[VkStructDef]
    typeAliases*: seq[tuple[name, alias: string]]
    apiConstants*: seq[VkEnumVal]
    enumGroups*: seq[VkEnumGroup]
    commands*: seq[VkCommand]
    commandAliases*: seq[tuple[name, alias: string]]
    featureCommands*: seq[tuple[version: string, commands: seq[string]]]
    extensionCommands*: seq[tuple[name: string, commands: seq[string]]]
    platformTypes*: seq[string]

const
  NimKeywords* = ["addr", "and", "as", "asm", "bind", "block", "break",
    "case", "cast", "concept", "const", "continue", "converter", "defer",
    "discard", "distinct", "div", "do", "elif", "else", "end", "enum",
    "except", "export", "finally", "for", "from", "func", "if", "import",
    "in", "include", "interface", "is", "isnot", "iterator", "let", "macro",
    "method", "mixin", "mod", "nil", "not", "notin", "object", "of", "or",
    "out", "proc", "ptr", "raise", "ref", "return", "shl", "shr", "static",
    "template", "try", "tuple", "type", "using", "var", "when", "while",
    "xor", "yield"].toHashSet()

proc translateType*(s: string): string =
  ## Converts a C type name to the equivalent Nim type.
  result = s
  result = result.replace("uint64_t", "uint64")
  result = result.replace("uint32_t", "uint32")
  result = result.replace("uint16_t", "uint16")
  result = result.replace("uint8_t", "uint8")
  result = result.replace("int64_t", "int64")
  result = result.replace("int32_t", "int32")
  result = result.replace("int16_t", "int16")
  result = result.replace("int8_t", "int8")
  result = result.replace("size_t", "csize_t")
  result = result.replace("float", "float32")
  result = result.replace("double", "float64")
  result = result.replace("const ", "")
  result = result.replace(" const", "")
  result = result.replace("unsigned ", "u")
  result = result.replace("signed ", "")
  result = result.replace("struct ", "")
  if result.contains('*'):
    let levels = result.count('*')
    result = result.replace("*", "").strip()
    for i in 0 ..< levels:
      result = "ptr " & result
  result = result.replace("ptr void", "pointer")
  result = result.replace("ptr ptr char", "cstringArray")
  result = result.replace("ptr char", "cstring")

proc safeName*(name: string): string =
  ## Escapes Nim keywords with backticks.
  if name in NimKeywords: "`" & name & "`"
  else: name

proc parseMember(node: XmlNode): VkMember =
  ## Parses a <member> or <param> XML element into a VkMember.
  let nameNode = node.child("name")
  let typeNode = node.child("type")
  if nameNode == nil or typeNode == nil:
    return
  result.name = nameNode.innerText.strip()
  result.typeName = typeNode.innerText.strip()

  let fullText = node.innerText
  result.isConst = "const" in fullText
  result.pointerDepth = fullText.count('*')

  let bracketIdx = fullText.find('[')
  if bracketIdx >= 0:
    let closeIdx = fullText.find(']', bracketIdx)
    if closeIdx > bracketIdx + 1:
      result.arraySize = fullText[bracketIdx + 1 ..< closeIdx].strip()

proc parseTypes(xml: XmlNode, reg: var VkRegistry) =
  ## Extracts all type definitions from the <types> section.
  var platformTypeSet: HashSet[string]

  for types in xml.findAll("types"):
    for t in types.items:
      if t.kind != xnElement or t.tag != "type":
        continue

      let cat = t.attr("category")
      let name = t.attr("name")
      let alias = t.attr("alias")

      # Platform types: requires a .h header.
      if t.attr("requires").contains(".h") and cat == "":
        let n = t.attr("name")
        if n.len > 0:
          platformTypeSet.incl n
          reg.platformTypes.add n
        continue

      if cat == "basetype":
        let nameNode = t.child("name")
        let typeNode = t.child("type")
        if nameNode != nil and typeNode != nil:
          let n = nameNode.innerText
          let nimT = translateType(typeNode.innerText)
          reg.baseTypes.add (n, nimT)
        continue

      if cat == "bitmask":
        var n = name
        if t.child("name") != nil:
          n = t.child("name").innerText
        if alias.len > 0:
          reg.bitmaskTypes.add (n, "", alias)
        elif t.child("type") != nil:
          let flagsT = translateType(t.child("type").innerText)
          reg.bitmaskTypes.add (n, flagsT, "")
        continue

      if cat == "handle":
        var n = name
        if t.child("name") != nil:
          n = t.child("name").innerText
        if alias.len > 0:
          reg.handles.add (n, false, alias)
        elif t.child("type") != nil:
          let ht = t.child("type").innerText
          let isDisp = ht == "VK_DEFINE_HANDLE"
          reg.handles.add (n, isDisp, "")
        continue

      if cat == "enum":
        if alias.len > 0:
          reg.enumTypeAliases.add (name, alias)
        continue

      if cat == "funcpointer":
        var fpName = ""
        let nameNode = t.child("name")
        if nameNode != nil:
          fpName = nameNode.innerText
        else:
          # Some funcpointers have <proto>/<name>.
          let proto = t.child("proto")
          if proto != nil:
            let pn = proto.child("name")
            if pn != nil:
              fpName = pn.innerText
        if fpName.len == 0:
          continue
        reg.funcPointers.add (fpName, "")
        continue

      if cat == "struct" or cat == "union":
        if alias.len > 0:
          reg.typeAliases.add (name, alias)
          continue
        var def = VkStructDef(name: name, isUnion: cat == "union")
        for member in t.findAll("member"):
          if member.attr("api") == "vulkansc":
            continue
          let m = parseMember(member)
          if m.name.len > 0:
            def.members.add m
        reg.structs.add def
        continue

      if cat == "define":
        continue

proc calcEnumValue(node: XmlNode, extNumber: int): string =
  ## Calculates the numeric value for an extension-added enum.
  let valueAttr = node.attr("value")
  if valueAttr.len > 0:
    return valueAttr

  let aliasAttr = node.attr("alias")
  if aliasAttr.len > 0:
    return aliasAttr

  let bitposAttr = node.attr("bitpos")
  if bitposAttr.len > 0:
    let bitpos = bitposAttr.parseInt()
    return $(1 shl bitpos)

  let offsetAttr = node.attr("offset")
  if offsetAttr.len > 0:
    let offset = offsetAttr.parseInt()
    var extnumber = extNumber
    let extNumAttr = node.attr("extnumber")
    if extNumAttr.len > 0:
      extnumber = extNumAttr.parseInt()
    var value = 1000000000 + (extnumber - 1) * 1000 + offset
    if node.attr("dir") == "-":
      value = -value
    return $value

  return ""

proc parseEnums(xml: XmlNode, reg: var VkRegistry) =
  ## Extracts all enum groups and API constants.
  for enums in xml.findAll("enums"):
    let groupName = enums.attr("name")
    let enumType = enums.attr("type")

    if groupName == "API Constants":
      for e in enums.items:
        if e.kind != xnElement or e.tag != "enum":
          continue
        let eName = e.attr("name")
        var eValue = e.attr("value")
        if eValue.len == 0:
          eValue = e.attr("alias")
        if eValue.len == 0:
          continue
        reg.apiConstants.add VkEnumVal(name: eName, value: eValue)
      continue

    if enumType == "enum" or enumType == "bitmask":
      let bitwidth = enums.attr("bitwidth")
      var group = VkEnumGroup(
        name: groupName,
        isBitmask: enumType == "bitmask",
        is64bit: bitwidth == "64",
      )
      for e in enums.items:
        if e.kind != xnElement or e.tag != "enum":
          continue
        if e.attr("api") == "vulkansc":
          continue
        let eName = e.attr("name")
        let val = calcEnumValue(e, 0)
        if val.len > 0 and eName.len > 0:
          group.values.add VkEnumVal(name: eName, value: val)
      reg.enumGroups.add group

proc parseCommands(xml: XmlNode, reg: var VkRegistry) =
  ## Extracts all command (proc) definitions.
  for commands in xml.findAll("commands"):
    for command in commands.findAll("command"):
      let aliasAttr = command.attr("alias")
      if aliasAttr.len > 0:
        let nameAttr = command.attr("name")
        if nameAttr.len > 0:
          reg.commandAliases.add (nameAttr, aliasAttr)
        continue

      let proto = command.child("proto")
      if proto == nil:
        continue
      let nameNode = proto.child("name")
      let typeNode = proto.child("type")
      if nameNode == nil:
        continue

      var cmd = VkCommand()
      cmd.name = nameNode.innerText
      if typeNode != nil:
        cmd.returnType = typeNode.innerText
      else:
        let protoText = proto.innerText
        cmd.returnType = protoText[0 ..< protoText.len - cmd.name.len].strip()

      for param in command.findAll("param"):
        if param.attr("api") == "vulkansc":
          continue
        let m = parseMember(param)
        if m.name.len > 0:
          cmd.params.add m
      reg.commands.add cmd

proc collectFeatureCommands(featureNode: XmlNode, allFeatures: Table[string, XmlNode]): seq[string] =
  ## Recursively collects all commands from a feature and its dependencies.
  var commands: seq[string]
  var visited: HashSet[string]

  proc walk(name: string) =
    if name in visited:
      return
    visited.incl name
    if name notin allFeatures:
      return
    let node = allFeatures[name]
    let depends = node.attr("depends")
    if depends.len > 0:
      for dep in depends.split(","):
        walk(dep.strip())
    for req in node.findAll("require"):
      for cmd in req.findAll("command"):
        let cmdName = cmd.attr("name")
        if cmdName.len > 0 and cmdName notin visited:
          commands.add cmdName

  walk(featureNode.attr("name"))
  result = commands

proc parseFeatures(xml: XmlNode, reg: var VkRegistry) =
  ## Extracts feature blocks (Vulkan 1.0 through 1.4) and their commands.
  var allFeatures: Table[string, XmlNode]
  var enumGroupMap: Table[string, int]

  for i, g in reg.enumGroups:
    enumGroupMap[g.name] = i

  for feature in xml.findAll("feature"):
    let featureName = feature.attr("name")
    allFeatures[featureName] = feature

  let publicVersions = ["VK_VERSION_1_0", "VK_VERSION_1_1",
    "VK_VERSION_1_2", "VK_VERSION_1_3", "VK_VERSION_1_4"]
  for versionName in publicVersions:
    if versionName notin allFeatures:
      continue
    let node = allFeatures[versionName]
    let number = node.attr("number").replace(".", "_")
    let commands = collectFeatureCommands(node, allFeatures)
    reg.featureCommands.add (number, commands)

  # Collect enum extensions from all features.
  for feature in xml.findAll("feature"):
    if feature.attr("api") == "vulkansc":
      continue
    let apiList = feature.attr("api").split(",")
    if apiList.len > 0 and "vulkan" notin apiList and
       "vulkanbase" notin apiList:
      continue
    for req in feature.findAll("require"):
      for e in req.findAll("enum"):
        let extends = e.attr("extends")
        if extends.len == 0:
          continue
        let eName = e.attr("name")
        let val = calcEnumValue(e, 0)
        if val.len == 0 or eName.len == 0:
          continue
        if extends in enumGroupMap:
          let idx = enumGroupMap[extends]
          var alreadyExists = false
          for existing in reg.enumGroups[idx].values:
            if existing.name == eName:
              alreadyExists = true
              break
          if not alreadyExists:
            reg.enumGroups[idx].values.add VkEnumVal(
              name: eName, value: val
            )

proc parseExtensions(xml: XmlNode, reg: var VkRegistry) =
  ## Extracts extension definitions, their commands, and enum extensions.
  var enumGroupMap: Table[string, int]
  for i, g in reg.enumGroups:
    enumGroupMap[g.name] = i

  for extensions in xml.findAll("extensions"):
    for ext in extensions.findAll("extension"):
      let supported = ext.attr("supported")
      if "vulkan" notin supported and supported != "disabled":
        continue
      if supported == "disabled":
        continue

      let extName = ext.attr("name")
      let extNumber = try: ext.attr("number").parseInt()
                     except: 0

      var commands: seq[string]
      for req in ext.findAll("require"):
        for cmd in req.findAll("command"):
          let cmdName = cmd.attr("name")
          if cmdName.len > 0:
            commands.add cmdName

        # Extension-added enum values.
        for e in req.findAll("enum"):
          let extends = e.attr("extends")
          if extends.len == 0:
            continue
          let eName = e.attr("name")
          let val = calcEnumValue(e, extNumber)
          if val.len == 0 or eName.len == 0:
            continue
          if extends in enumGroupMap:
            let idx = enumGroupMap[extends]
            var alreadyExists = false
            for existing in reg.enumGroups[idx].values:
              if existing.name == eName:
                alreadyExists = true
                break
            if not alreadyExists:
              reg.enumGroups[idx].values.add VkEnumVal(
                name: eName, value: val
              )

      if commands.len > 0:
        reg.extensionCommands.add (extName, commands)

proc deduplicateEnumGroups(reg: var VkRegistry) =
  ## Removes duplicate enum values within each group.
  for i in 0 ..< reg.enumGroups.len:
    var seen: HashSet[string]
    var unique: seq[VkEnumVal]
    for v in reg.enumGroups[i].values:
      if v.name notin seen:
        seen.incl v.name
        unique.add v
    reg.enumGroups[i].values = unique

proc parseVkXml*(path: string): VkRegistry =
  ## Parses a vk.xml file and returns a fully populated VkRegistry.
  let file = newFileStream(path, fmRead)
  if file == nil:
    raise newException(IOError, "Cannot open " & path)
  defer: file.close()
  let xml = file.parseXml()

  parseTypes(xml, result)
  parseEnums(xml, result)
  parseCommands(xml, result)
  parseFeatures(xml, result)
  parseExtensions(xml, result)
  deduplicateEnumGroups(result)

import std/[os, osproc, strformat, streams]

type ShaderStage = enum
  vertexStage
  fragmentStage

type ShaderTarget = object
  sourceName: string
  stage: ShaderStage

proc findGlslc(): string =
  result = findExe("glslc")
  if result.len > 0:
    return

  let sdkRoot = r"C:\VulkanSDK"
  if dirExists(sdkRoot):
    for kind, path in walkDir(sdkRoot):
      if kind == pcDir:
        let candidate = path / "Bin" / "glslc.exe"
        if fileExists(candidate):
          result = candidate

proc runChecked(command: string, args: openArray[string], action: string) =
  let process = startProcess(command, args = args, options = {poUsePath, poStdErrToStdOut})
  let output = readAll(process.outputStream)
  let exitCode = waitForExit(process)
  close(process)

  if output.len > 0:
    stdout.write(output)

  if exitCode != 0:
    raise newException(Exception, &"{action} failed with exit code {exitCode}")

proc stageFlag(stage: ShaderStage): string =
  case stage
  of vertexStage:
    "vert"
  of fragmentStage:
    "frag"

when isMainModule:
  let root = currentSourcePath().parentDir()
  let shaderDir = root / "shaders"
  let glslc = findGlslc()
  let targets = [
    ShaderTarget(sourceName: "basic_triangle.vert", stage: vertexStage),
    ShaderTarget(sourceName: "basic_triangle.frag", stage: fragmentStage),
    ShaderTarget(sourceName: "basic_quad.vert", stage: vertexStage),
    ShaderTarget(sourceName: "basic_quad.frag", stage: fragmentStage),
    ShaderTarget(sourceName: "basic_cube.vert", stage: vertexStage),
    ShaderTarget(sourceName: "basic_cube.frag", stage: fragmentStage),
    ShaderTarget(sourceName: "viewer_obj.vert", stage: vertexStage),
    ShaderTarget(sourceName: "viewer_obj.frag", stage: fragmentStage),
    ShaderTarget(sourceName: "sprite_sheet.vert", stage: vertexStage),
    ShaderTarget(sourceName: "sprite_sheet.frag", stage: fragmentStage)
  ]

  if glslc.len == 0:
    raise newException(Exception, "Could not find glslc. Install the Vulkan SDK or add glslc to PATH.")

  for target in targets:
    runChecked(
      glslc,
      [
        shaderDir / target.sourceName,
        "-fshader-stage=" & stageFlag(target.stage),
        "-o",
        shaderDir / (target.sourceName & ".spv")
      ],
      "Compiling " & target.sourceName
    )

  echo "Compiled Vulkan shaders with ", glslc

## Compiles all examples first, then runs them sequentially.

import std/[osproc, os, strformat]

const Examples = [
  "basic_screen",
  "basic_triangle",
  "basic_quad",
  "basic_cube",
  "viewer_obj",
  "sprite_sheet",
]

proc main() =
  ## Compile all examples, then run all examples in sequence.
  let
    startDir = getCurrentDir()
    rootDir = currentSourcePath().parentDir.parentDir
  defer:
    setCurrentDir(startDir)

  echo "=== vk14 Examples Runner ==="
  echo "Compiling all examples first."
  echo "Running all examples after successful compilation."
  echo "Close each window to proceed to the next example.\n"

  for i, name in Examples:
    let nimFile = "examples" / (name & ".nim")
    echo fmt"[{i + 1}/{Examples.len}] Compiling: {name}"

    setCurrentDir(rootDir)
    let exitCode = execCmd(fmt"nim c {nimFile}")
    if exitCode != 0:
      echo fmt"  ERROR: {name} failed to compile with exit code {exitCode}"
      quit(exitCode)
    echo ""

  echo "=== Compilation complete ===\n"

  for i, name in Examples:
    let binaryPath = "examples" / name
    echo fmt"[{i + 1}/{Examples.len}] Running: {name}"

    setCurrentDir(rootDir)
    let exitCode = execCmd(binaryPath)
    if exitCode != 0:
      echo fmt"  ERROR: {name} failed with exit code {exitCode}"
      quit(exitCode)
    echo ""

  echo "=== All examples completed ==="

when isMainModule:
  main()

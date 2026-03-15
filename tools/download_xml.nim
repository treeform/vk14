## Downloads the Vulkan XML registry from the Khronos GitHub repository.
## This is the source-of-truth definition from which all bindings are generated.
## License: Apache-2.0 (Khronos Group)
##
## Usage: nim r -d:ssl tools/download_xml.nim

import std/[os, httpclient, strformat]

const
  XmlUrl = "https://raw.githubusercontent.com/KhronosGroup/Vulkan-Docs/main/xml/vk.xml"

proc main() =
  let scriptDir = parentDir(currentSourcePath())
  let xmlDir = normalizedPath(scriptDir / ".." / "xml")
  let destPath = xmlDir / "vk.xml"
  createDir(xmlDir)

  echo &"Downloading Vulkan XML registry..."
  echo &"Source: {XmlUrl}"
  echo &"Destination: {destPath}"
  echo ""

  var client = newHttpClient()
  defer: client.close()

  let content = client.getContent(XmlUrl)
  writeFile(destPath, content)
  echo &"  -> {content.len} bytes"
  echo ""
  echo &"Done! Downloaded vk.xml to {destPath}"

when isMainModule:
  main()

<img src="docs/vk14Banner.svg">

# vk14 - Vulkan 1.4 wrapper for Nim.

`nimby install vk14`

![Github Actions](https://github.com/treeform/vk14/workflows/Github%20Actions/badge.svg)

[API reference](https://treeform.github.io/vk14)

## About

Auto-generated Vulkan 1.4 bindings for Nim, modeled after the dx12 wrapper pattern. Downloads the official Khronos `vk.xml` registry and generates typed Nim bindings with modular file layout.

## Building

### Regenerate bindings

```bash
nim r -d:ssl tools/download_xml.nim
nim r tools/generate_api.nim
```

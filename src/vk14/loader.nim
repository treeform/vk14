## Vulkan dynamic library loader.
## Loads vulkan-1.dll (or platform equivalent) and provides vkGetProc.

import std/dynlib
import commands, features

var
  vkDll: LibHandle
  vkGetInstanceProcAddrFn: proc(
    instance: pointer, pName: cstring
  ): pointer {.stdcall.}
  currentInstance: pointer

proc vulkanGetProc(procName: cstring): pointer {.cdecl.} =
  ## Resolves a Vulkan proc address by name.
  result = vkGetInstanceProcAddrFn(currentInstance, procName)
  if result == nil:
    result = symAddr(vkDll, procName)

proc loadVulkan*() =
  ## Loads the Vulkan shared library and resolves vkGetInstanceProcAddr.
  if vkDll != nil:
    return
  when defined(windows):
    vkDll = loadLib("vulkan-1.dll")
  elif defined(macosx):
    vkDll = loadLib("libMoltenVK.dylib")
  else:
    vkDll = loadLib("libvulkan.so.1")
  if vkDll == nil:
    raise newException(Exception, "Failed to load Vulkan library")
  vkGetInstanceProcAddrFn = cast[typeof(vkGetInstanceProcAddrFn)](
    symAddr(vkDll, "vkGetInstanceProcAddr"))
  if vkGetInstanceProcAddrFn == nil:
    raise newException(Exception, "Failed to load vkGetInstanceProcAddr")
  currentInstance = nil
  vkGetProc = vulkanGetProc

proc setInstance*(instance: pointer) =
  ## Updates the current Vulkan instance for proc address resolution.
  currentInstance = instance

proc vkInit*(load1_0 = true, load1_1 = true, load1_2 = true,
             load1_3 = true, load1_4 = true): bool =
  ## Loads the Vulkan library and all requested feature levels.
  loadVulkan()
  if load1_0: vkLoad1_0()
  if load1_1: vkLoad1_1()
  if load1_2: vkLoad1_2()
  if load1_3: vkLoad1_3()
  if load1_4: vkLoad1_4()
  return true

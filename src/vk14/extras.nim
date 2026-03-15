## Hand-written extras for Vulkan 1.4 bindings.
## Convenience helpers that cannot be auto-generated from the XML registry.

import types, commands

proc checkVk*(result: VkResult, msg: string) =
  ## Raises an exception if a VkResult indicates failure.
  if result.int32 != 0:
    raise newException(Exception, msg & " VkResult " & $result.int32)

const
  VK_NULL_HANDLE* = 0'i64
  FRAME_COUNT* = 2

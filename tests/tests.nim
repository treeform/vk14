## Basic compile-time tests for the vk14 bindings.

import vk14

echo "Testing vk14 bindings"

echo "  VK_API_VERSION_1_4 = ", VK_API_VERSION_1_4
echo "  VK_SUCCESS = ", VK_SUCCESS
echo "  VK_TRUE = ", VK_TRUE
echo "  VK_FALSE = ", VK_FALSE
echo "  VK_FORMAT_R8G8B8A8_SRGB = ", VK_FORMAT_R8G8B8A8_SRGB

doAssert VK_SUCCESS == 0'i32
doAssert VK_TRUE == 1
doAssert VK_FALSE == 0
doAssert VK_NULL_HANDLE == 0'i64
doAssert sizeof(VkInstance) == sizeof(int64)
doAssert sizeof(VkFence) == sizeof(int64)
doAssert sizeof(VkBool32) == sizeof(uint32)
doAssert sizeof(VkDeviceSize) == sizeof(uint64)

echo "  All assertions passed"

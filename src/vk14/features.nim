# Auto-generated from vk.xml — do not edit manually.
# Regenerate with: nim r tools/generate_api.nim


import types, commands

proc vkLoad1_0*() =
  ## Loads Vulkan 1_0 commands.
  vkCreateInstance = cast[proc(pCreateInfo: ptr VkInstanceCreateInfo, pAllocator: ptr VkAllocationCallbacks, pInstance: ptr VkInstance): VkResult {.stdcall.}](vkGetProc("vkCreateInstance"))
  vkDestroyInstance = cast[proc(instance: VkInstance, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyInstance"))
  vkEnumeratePhysicalDevices = cast[proc(instance: VkInstance, pPhysicalDeviceCount: ptr uint32, pPhysicalDevices: ptr VkPhysicalDevice): VkResult {.stdcall.}](vkGetProc("vkEnumeratePhysicalDevices"))
  vkGetPhysicalDeviceFeatures = cast[proc(physicalDevice: VkPhysicalDevice, pFeatures: ptr VkPhysicalDeviceFeatures): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceFeatures"))
  vkGetPhysicalDeviceFormatProperties = cast[proc(physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: ptr VkFormatProperties): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceFormatProperties"))
  vkGetPhysicalDeviceImageFormatProperties = cast[proc(physicalDevice: VkPhysicalDevice, format: VkFormat, `type`: VkImageType, tiling: VkImageTiling, usage: VkImageUsageFlags, flags: VkImageCreateFlags, pImageFormatProperties: ptr VkImageFormatProperties): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceImageFormatProperties"))
  vkGetPhysicalDeviceProperties = cast[proc(physicalDevice: VkPhysicalDevice, pProperties: ptr VkPhysicalDeviceProperties): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceProperties"))
  vkGetPhysicalDeviceQueueFamilyProperties = cast[proc(physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: ptr uint32, pQueueFamilyProperties: ptr VkQueueFamilyProperties): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceQueueFamilyProperties"))
  vkGetPhysicalDeviceMemoryProperties = cast[proc(physicalDevice: VkPhysicalDevice, pMemoryProperties: ptr VkPhysicalDeviceMemoryProperties): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceMemoryProperties"))
  vkGetInstanceProcAddr = cast[proc(instance: VkInstance, pName: cstring): PFN_vkVoidFunction {.stdcall.}](vkGetProc("vkGetInstanceProcAddr"))
  vkGetDeviceProcAddr = cast[proc(device: VkDevice, pName: cstring): PFN_vkVoidFunction {.stdcall.}](vkGetProc("vkGetDeviceProcAddr"))
  vkCreateDevice = cast[proc(physicalDevice: VkPhysicalDevice, pCreateInfo: ptr VkDeviceCreateInfo, pAllocator: ptr VkAllocationCallbacks, pDevice: ptr VkDevice): VkResult {.stdcall.}](vkGetProc("vkCreateDevice"))
  vkDestroyDevice = cast[proc(device: VkDevice, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyDevice"))
  vkEnumerateInstanceExtensionProperties = cast[proc(pLayerName: cstring, pPropertyCount: ptr uint32, pProperties: ptr VkExtensionProperties): VkResult {.stdcall.}](vkGetProc("vkEnumerateInstanceExtensionProperties"))
  vkEnumerateDeviceExtensionProperties = cast[proc(physicalDevice: VkPhysicalDevice, pLayerName: cstring, pPropertyCount: ptr uint32, pProperties: ptr VkExtensionProperties): VkResult {.stdcall.}](vkGetProc("vkEnumerateDeviceExtensionProperties"))
  vkEnumerateInstanceLayerProperties = cast[proc(pPropertyCount: ptr uint32, pProperties: ptr VkLayerProperties): VkResult {.stdcall.}](vkGetProc("vkEnumerateInstanceLayerProperties"))
  vkEnumerateDeviceLayerProperties = cast[proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkLayerProperties): VkResult {.stdcall.}](vkGetProc("vkEnumerateDeviceLayerProperties"))
  vkGetDeviceQueue = cast[proc(device: VkDevice, queueFamilyIndex: uint32, queueIndex: uint32, pQueue: ptr VkQueue): void {.stdcall.}](vkGetProc("vkGetDeviceQueue"))
  vkQueueSubmit = cast[proc(queue: VkQueue, submitCount: uint32, pSubmits: ptr VkSubmitInfo, fence: VkFence): VkResult {.stdcall.}](vkGetProc("vkQueueSubmit"))
  vkQueueWaitIdle = cast[proc(queue: VkQueue): VkResult {.stdcall.}](vkGetProc("vkQueueWaitIdle"))
  vkDeviceWaitIdle = cast[proc(device: VkDevice): VkResult {.stdcall.}](vkGetProc("vkDeviceWaitIdle"))
  vkAllocateMemory = cast[proc(device: VkDevice, pAllocateInfo: ptr VkMemoryAllocateInfo, pAllocator: ptr VkAllocationCallbacks, pMemory: ptr VkDeviceMemory): VkResult {.stdcall.}](vkGetProc("vkAllocateMemory"))
  vkFreeMemory = cast[proc(device: VkDevice, memory: VkDeviceMemory, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkFreeMemory"))
  vkMapMemory = cast[proc(device: VkDevice, memory: VkDeviceMemory, offset: VkDeviceSize, size: VkDeviceSize, flags: VkMemoryMapFlags, ppData: ptr pointer): VkResult {.stdcall.}](vkGetProc("vkMapMemory"))
  vkUnmapMemory = cast[proc(device: VkDevice, memory: VkDeviceMemory): void {.stdcall.}](vkGetProc("vkUnmapMemory"))
  vkFlushMappedMemoryRanges = cast[proc(device: VkDevice, memoryRangeCount: uint32, pMemoryRanges: ptr VkMappedMemoryRange): VkResult {.stdcall.}](vkGetProc("vkFlushMappedMemoryRanges"))
  vkInvalidateMappedMemoryRanges = cast[proc(device: VkDevice, memoryRangeCount: uint32, pMemoryRanges: ptr VkMappedMemoryRange): VkResult {.stdcall.}](vkGetProc("vkInvalidateMappedMemoryRanges"))
  vkGetDeviceMemoryCommitment = cast[proc(device: VkDevice, memory: VkDeviceMemory, pCommittedMemoryInBytes: ptr VkDeviceSize): void {.stdcall.}](vkGetProc("vkGetDeviceMemoryCommitment"))
  vkBindBufferMemory = cast[proc(device: VkDevice, buffer: VkBuffer, memory: VkDeviceMemory, memoryOffset: VkDeviceSize): VkResult {.stdcall.}](vkGetProc("vkBindBufferMemory"))
  vkBindImageMemory = cast[proc(device: VkDevice, image: VkImage, memory: VkDeviceMemory, memoryOffset: VkDeviceSize): VkResult {.stdcall.}](vkGetProc("vkBindImageMemory"))
  vkGetBufferMemoryRequirements = cast[proc(device: VkDevice, buffer: VkBuffer, pMemoryRequirements: ptr VkMemoryRequirements): void {.stdcall.}](vkGetProc("vkGetBufferMemoryRequirements"))
  vkGetImageMemoryRequirements = cast[proc(device: VkDevice, image: VkImage, pMemoryRequirements: ptr VkMemoryRequirements): void {.stdcall.}](vkGetProc("vkGetImageMemoryRequirements"))
  vkGetImageSparseMemoryRequirements = cast[proc(device: VkDevice, image: VkImage, pSparseMemoryRequirementCount: ptr uint32, pSparseMemoryRequirements: ptr VkSparseImageMemoryRequirements): void {.stdcall.}](vkGetProc("vkGetImageSparseMemoryRequirements"))
  vkGetPhysicalDeviceSparseImageFormatProperties = cast[proc(physicalDevice: VkPhysicalDevice, format: VkFormat, `type`: VkImageType, samples: VkSampleCountFlagBits, usage: VkImageUsageFlags, tiling: VkImageTiling, pPropertyCount: ptr uint32, pProperties: ptr VkSparseImageFormatProperties): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSparseImageFormatProperties"))
  vkQueueBindSparse = cast[proc(queue: VkQueue, bindInfoCount: uint32, pBindInfo: ptr VkBindSparseInfo, fence: VkFence): VkResult {.stdcall.}](vkGetProc("vkQueueBindSparse"))
  vkCreateFence = cast[proc(device: VkDevice, pCreateInfo: ptr VkFenceCreateInfo, pAllocator: ptr VkAllocationCallbacks, pFence: ptr VkFence): VkResult {.stdcall.}](vkGetProc("vkCreateFence"))
  vkDestroyFence = cast[proc(device: VkDevice, fence: VkFence, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyFence"))
  vkResetFences = cast[proc(device: VkDevice, fenceCount: uint32, pFences: ptr VkFence): VkResult {.stdcall.}](vkGetProc("vkResetFences"))
  vkGetFenceStatus = cast[proc(device: VkDevice, fence: VkFence): VkResult {.stdcall.}](vkGetProc("vkGetFenceStatus"))
  vkWaitForFences = cast[proc(device: VkDevice, fenceCount: uint32, pFences: ptr VkFence, waitAll: VkBool32, timeout: uint64): VkResult {.stdcall.}](vkGetProc("vkWaitForFences"))
  vkCreateSemaphore = cast[proc(device: VkDevice, pCreateInfo: ptr VkSemaphoreCreateInfo, pAllocator: ptr VkAllocationCallbacks, pSemaphore: ptr VkSemaphore): VkResult {.stdcall.}](vkGetProc("vkCreateSemaphore"))
  vkDestroySemaphore = cast[proc(device: VkDevice, semaphore: VkSemaphore, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroySemaphore"))
  vkCreateQueryPool = cast[proc(device: VkDevice, pCreateInfo: ptr VkQueryPoolCreateInfo, pAllocator: ptr VkAllocationCallbacks, pQueryPool: ptr VkQueryPool): VkResult {.stdcall.}](vkGetProc("vkCreateQueryPool"))
  vkDestroyQueryPool = cast[proc(device: VkDevice, queryPool: VkQueryPool, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyQueryPool"))
  vkGetQueryPoolResults = cast[proc(device: VkDevice, queryPool: VkQueryPool, firstQuery: uint32, queryCount: uint32, dataSize: csize_t, pData: pointer, stride: VkDeviceSize, flags: VkQueryResultFlags): VkResult {.stdcall.}](vkGetProc("vkGetQueryPoolResults"))
  vkCreateBuffer = cast[proc(device: VkDevice, pCreateInfo: ptr VkBufferCreateInfo, pAllocator: ptr VkAllocationCallbacks, pBuffer: ptr VkBuffer): VkResult {.stdcall.}](vkGetProc("vkCreateBuffer"))
  vkDestroyBuffer = cast[proc(device: VkDevice, buffer: VkBuffer, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyBuffer"))
  vkCreateImage = cast[proc(device: VkDevice, pCreateInfo: ptr VkImageCreateInfo, pAllocator: ptr VkAllocationCallbacks, pImage: ptr VkImage): VkResult {.stdcall.}](vkGetProc("vkCreateImage"))
  vkDestroyImage = cast[proc(device: VkDevice, image: VkImage, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyImage"))
  vkGetImageSubresourceLayout = cast[proc(device: VkDevice, image: VkImage, pSubresource: ptr VkImageSubresource, pLayout: ptr VkSubresourceLayout): void {.stdcall.}](vkGetProc("vkGetImageSubresourceLayout"))
  vkCreateImageView = cast[proc(device: VkDevice, pCreateInfo: ptr VkImageViewCreateInfo, pAllocator: ptr VkAllocationCallbacks, pView: ptr VkImageView): VkResult {.stdcall.}](vkGetProc("vkCreateImageView"))
  vkDestroyImageView = cast[proc(device: VkDevice, imageView: VkImageView, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyImageView"))
  vkCreateCommandPool = cast[proc(device: VkDevice, pCreateInfo: ptr VkCommandPoolCreateInfo, pAllocator: ptr VkAllocationCallbacks, pCommandPool: ptr VkCommandPool): VkResult {.stdcall.}](vkGetProc("vkCreateCommandPool"))
  vkDestroyCommandPool = cast[proc(device: VkDevice, commandPool: VkCommandPool, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyCommandPool"))
  vkResetCommandPool = cast[proc(device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolResetFlags): VkResult {.stdcall.}](vkGetProc("vkResetCommandPool"))
  vkAllocateCommandBuffers = cast[proc(device: VkDevice, pAllocateInfo: ptr VkCommandBufferAllocateInfo, pCommandBuffers: ptr VkCommandBuffer): VkResult {.stdcall.}](vkGetProc("vkAllocateCommandBuffers"))
  vkFreeCommandBuffers = cast[proc(device: VkDevice, commandPool: VkCommandPool, commandBufferCount: uint32, pCommandBuffers: ptr VkCommandBuffer): void {.stdcall.}](vkGetProc("vkFreeCommandBuffers"))
  vkBeginCommandBuffer = cast[proc(commandBuffer: VkCommandBuffer, pBeginInfo: ptr VkCommandBufferBeginInfo): VkResult {.stdcall.}](vkGetProc("vkBeginCommandBuffer"))
  vkEndCommandBuffer = cast[proc(commandBuffer: VkCommandBuffer): VkResult {.stdcall.}](vkGetProc("vkEndCommandBuffer"))
  vkResetCommandBuffer = cast[proc(commandBuffer: VkCommandBuffer, flags: VkCommandBufferResetFlags): VkResult {.stdcall.}](vkGetProc("vkResetCommandBuffer"))
  vkCmdCopyBuffer = cast[proc(commandBuffer: VkCommandBuffer, srcBuffer: VkBuffer, dstBuffer: VkBuffer, regionCount: uint32, pRegions: ptr VkBufferCopy): void {.stdcall.}](vkGetProc("vkCmdCopyBuffer"))
  vkCmdCopyImage = cast[proc(commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: uint32, pRegions: ptr VkImageCopy): void {.stdcall.}](vkGetProc("vkCmdCopyImage"))
  vkCmdCopyBufferToImage = cast[proc(commandBuffer: VkCommandBuffer, srcBuffer: VkBuffer, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: uint32, pRegions: ptr VkBufferImageCopy): void {.stdcall.}](vkGetProc("vkCmdCopyBufferToImage"))
  vkCmdCopyImageToBuffer = cast[proc(commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstBuffer: VkBuffer, regionCount: uint32, pRegions: ptr VkBufferImageCopy): void {.stdcall.}](vkGetProc("vkCmdCopyImageToBuffer"))
  vkCmdUpdateBuffer = cast[proc(commandBuffer: VkCommandBuffer, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, dataSize: VkDeviceSize, pData: pointer): void {.stdcall.}](vkGetProc("vkCmdUpdateBuffer"))
  vkCmdFillBuffer = cast[proc(commandBuffer: VkCommandBuffer, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, size: VkDeviceSize, data: uint32): void {.stdcall.}](vkGetProc("vkCmdFillBuffer"))
  vkCmdPipelineBarrier = cast[proc(commandBuffer: VkCommandBuffer, srcStageMask: VkPipelineStageFlags, dstStageMask: VkPipelineStageFlags, dependencyFlags: VkDependencyFlags, memoryBarrierCount: uint32, pMemoryBarriers: ptr VkMemoryBarrier, bufferMemoryBarrierCount: uint32, pBufferMemoryBarriers: ptr VkBufferMemoryBarrier, imageMemoryBarrierCount: uint32, pImageMemoryBarriers: ptr VkImageMemoryBarrier): void {.stdcall.}](vkGetProc("vkCmdPipelineBarrier"))
  vkCmdBeginQuery = cast[proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: uint32, flags: VkQueryControlFlags): void {.stdcall.}](vkGetProc("vkCmdBeginQuery"))
  vkCmdEndQuery = cast[proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: uint32): void {.stdcall.}](vkGetProc("vkCmdEndQuery"))
  vkCmdResetQueryPool = cast[proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: uint32, queryCount: uint32): void {.stdcall.}](vkGetProc("vkCmdResetQueryPool"))
  vkCmdWriteTimestamp = cast[proc(commandBuffer: VkCommandBuffer, pipelineStage: VkPipelineStageFlagBits, queryPool: VkQueryPool, query: uint32): void {.stdcall.}](vkGetProc("vkCmdWriteTimestamp"))
  vkCmdCopyQueryPoolResults = cast[proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: uint32, queryCount: uint32, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, stride: VkDeviceSize, flags: VkQueryResultFlags): void {.stdcall.}](vkGetProc("vkCmdCopyQueryPoolResults"))
  vkCmdExecuteCommands = cast[proc(commandBuffer: VkCommandBuffer, commandBufferCount: uint32, pCommandBuffers: ptr VkCommandBuffer): void {.stdcall.}](vkGetProc("vkCmdExecuteCommands"))
  vkCreateEvent = cast[proc(device: VkDevice, pCreateInfo: ptr VkEventCreateInfo, pAllocator: ptr VkAllocationCallbacks, pEvent: ptr VkEvent): VkResult {.stdcall.}](vkGetProc("vkCreateEvent"))
  vkDestroyEvent = cast[proc(device: VkDevice, event: VkEvent, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyEvent"))
  vkGetEventStatus = cast[proc(device: VkDevice, event: VkEvent): VkResult {.stdcall.}](vkGetProc("vkGetEventStatus"))
  vkSetEvent = cast[proc(device: VkDevice, event: VkEvent): VkResult {.stdcall.}](vkGetProc("vkSetEvent"))
  vkResetEvent = cast[proc(device: VkDevice, event: VkEvent): VkResult {.stdcall.}](vkGetProc("vkResetEvent"))
  vkCreateBufferView = cast[proc(device: VkDevice, pCreateInfo: ptr VkBufferViewCreateInfo, pAllocator: ptr VkAllocationCallbacks, pView: ptr VkBufferView): VkResult {.stdcall.}](vkGetProc("vkCreateBufferView"))
  vkDestroyBufferView = cast[proc(device: VkDevice, bufferView: VkBufferView, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyBufferView"))
  vkCreateShaderModule = cast[proc(device: VkDevice, pCreateInfo: ptr VkShaderModuleCreateInfo, pAllocator: ptr VkAllocationCallbacks, pShaderModule: ptr VkShaderModule): VkResult {.stdcall.}](vkGetProc("vkCreateShaderModule"))
  vkDestroyShaderModule = cast[proc(device: VkDevice, shaderModule: VkShaderModule, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyShaderModule"))
  vkCreatePipelineCache = cast[proc(device: VkDevice, pCreateInfo: ptr VkPipelineCacheCreateInfo, pAllocator: ptr VkAllocationCallbacks, pPipelineCache: ptr VkPipelineCache): VkResult {.stdcall.}](vkGetProc("vkCreatePipelineCache"))
  vkDestroyPipelineCache = cast[proc(device: VkDevice, pipelineCache: VkPipelineCache, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyPipelineCache"))
  vkGetPipelineCacheData = cast[proc(device: VkDevice, pipelineCache: VkPipelineCache, pDataSize: ptr csize_t, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetPipelineCacheData"))
  vkMergePipelineCaches = cast[proc(device: VkDevice, dstCache: VkPipelineCache, srcCacheCount: uint32, pSrcCaches: ptr VkPipelineCache): VkResult {.stdcall.}](vkGetProc("vkMergePipelineCaches"))
  vkCreateComputePipelines = cast[proc(device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: uint32, pCreateInfos: ptr VkComputePipelineCreateInfo, pAllocator: ptr VkAllocationCallbacks, pPipelines: ptr VkPipeline): VkResult {.stdcall.}](vkGetProc("vkCreateComputePipelines"))
  vkDestroyPipeline = cast[proc(device: VkDevice, pipeline: VkPipeline, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyPipeline"))
  vkCreatePipelineLayout = cast[proc(device: VkDevice, pCreateInfo: ptr VkPipelineLayoutCreateInfo, pAllocator: ptr VkAllocationCallbacks, pPipelineLayout: ptr VkPipelineLayout): VkResult {.stdcall.}](vkGetProc("vkCreatePipelineLayout"))
  vkDestroyPipelineLayout = cast[proc(device: VkDevice, pipelineLayout: VkPipelineLayout, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyPipelineLayout"))
  vkCreateSampler = cast[proc(device: VkDevice, pCreateInfo: ptr VkSamplerCreateInfo, pAllocator: ptr VkAllocationCallbacks, pSampler: ptr VkSampler): VkResult {.stdcall.}](vkGetProc("vkCreateSampler"))
  vkDestroySampler = cast[proc(device: VkDevice, sampler: VkSampler, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroySampler"))
  vkCreateDescriptorSetLayout = cast[proc(device: VkDevice, pCreateInfo: ptr VkDescriptorSetLayoutCreateInfo, pAllocator: ptr VkAllocationCallbacks, pSetLayout: ptr VkDescriptorSetLayout): VkResult {.stdcall.}](vkGetProc("vkCreateDescriptorSetLayout"))
  vkDestroyDescriptorSetLayout = cast[proc(device: VkDevice, descriptorSetLayout: VkDescriptorSetLayout, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyDescriptorSetLayout"))
  vkCreateDescriptorPool = cast[proc(device: VkDevice, pCreateInfo: ptr VkDescriptorPoolCreateInfo, pAllocator: ptr VkAllocationCallbacks, pDescriptorPool: ptr VkDescriptorPool): VkResult {.stdcall.}](vkGetProc("vkCreateDescriptorPool"))
  vkDestroyDescriptorPool = cast[proc(device: VkDevice, descriptorPool: VkDescriptorPool, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyDescriptorPool"))
  vkResetDescriptorPool = cast[proc(device: VkDevice, descriptorPool: VkDescriptorPool, flags: VkDescriptorPoolResetFlags): VkResult {.stdcall.}](vkGetProc("vkResetDescriptorPool"))
  vkAllocateDescriptorSets = cast[proc(device: VkDevice, pAllocateInfo: ptr VkDescriptorSetAllocateInfo, pDescriptorSets: ptr VkDescriptorSet): VkResult {.stdcall.}](vkGetProc("vkAllocateDescriptorSets"))
  vkFreeDescriptorSets = cast[proc(device: VkDevice, descriptorPool: VkDescriptorPool, descriptorSetCount: uint32, pDescriptorSets: ptr VkDescriptorSet): VkResult {.stdcall.}](vkGetProc("vkFreeDescriptorSets"))
  vkUpdateDescriptorSets = cast[proc(device: VkDevice, descriptorWriteCount: uint32, pDescriptorWrites: ptr VkWriteDescriptorSet, descriptorCopyCount: uint32, pDescriptorCopies: ptr VkCopyDescriptorSet): void {.stdcall.}](vkGetProc("vkUpdateDescriptorSets"))
  vkCmdBindPipeline = cast[proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline): void {.stdcall.}](vkGetProc("vkCmdBindPipeline"))
  vkCmdBindDescriptorSets = cast[proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, firstSet: uint32, descriptorSetCount: uint32, pDescriptorSets: ptr VkDescriptorSet, dynamicOffsetCount: uint32, pDynamicOffsets: ptr uint32): void {.stdcall.}](vkGetProc("vkCmdBindDescriptorSets"))
  vkCmdClearColorImage = cast[proc(commandBuffer: VkCommandBuffer, image: VkImage, imageLayout: VkImageLayout, pColor: ptr VkClearColorValue, rangeCount: uint32, pRanges: ptr VkImageSubresourceRange): void {.stdcall.}](vkGetProc("vkCmdClearColorImage"))
  vkCmdDispatch = cast[proc(commandBuffer: VkCommandBuffer, groupCountX: uint32, groupCountY: uint32, groupCountZ: uint32): void {.stdcall.}](vkGetProc("vkCmdDispatch"))
  vkCmdDispatchIndirect = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize): void {.stdcall.}](vkGetProc("vkCmdDispatchIndirect"))
  vkCmdSetEvent = cast[proc(commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags): void {.stdcall.}](vkGetProc("vkCmdSetEvent"))
  vkCmdResetEvent = cast[proc(commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags): void {.stdcall.}](vkGetProc("vkCmdResetEvent"))
  vkCmdWaitEvents = cast[proc(commandBuffer: VkCommandBuffer, eventCount: uint32, pEvents: ptr VkEvent, srcStageMask: VkPipelineStageFlags, dstStageMask: VkPipelineStageFlags, memoryBarrierCount: uint32, pMemoryBarriers: ptr VkMemoryBarrier, bufferMemoryBarrierCount: uint32, pBufferMemoryBarriers: ptr VkBufferMemoryBarrier, imageMemoryBarrierCount: uint32, pImageMemoryBarriers: ptr VkImageMemoryBarrier): void {.stdcall.}](vkGetProc("vkCmdWaitEvents"))
  vkCmdPushConstants = cast[proc(commandBuffer: VkCommandBuffer, layout: VkPipelineLayout, stageFlags: VkShaderStageFlags, offset: uint32, size: uint32, pValues: pointer): void {.stdcall.}](vkGetProc("vkCmdPushConstants"))
  vkCreateGraphicsPipelines = cast[proc(device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: uint32, pCreateInfos: ptr VkGraphicsPipelineCreateInfo, pAllocator: ptr VkAllocationCallbacks, pPipelines: ptr VkPipeline): VkResult {.stdcall.}](vkGetProc("vkCreateGraphicsPipelines"))
  vkCreateFramebuffer = cast[proc(device: VkDevice, pCreateInfo: ptr VkFramebufferCreateInfo, pAllocator: ptr VkAllocationCallbacks, pFramebuffer: ptr VkFramebuffer): VkResult {.stdcall.}](vkGetProc("vkCreateFramebuffer"))
  vkDestroyFramebuffer = cast[proc(device: VkDevice, framebuffer: VkFramebuffer, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyFramebuffer"))
  vkCreateRenderPass = cast[proc(device: VkDevice, pCreateInfo: ptr VkRenderPassCreateInfo, pAllocator: ptr VkAllocationCallbacks, pRenderPass: ptr VkRenderPass): VkResult {.stdcall.}](vkGetProc("vkCreateRenderPass"))
  vkDestroyRenderPass = cast[proc(device: VkDevice, renderPass: VkRenderPass, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyRenderPass"))
  vkGetRenderAreaGranularity = cast[proc(device: VkDevice, renderPass: VkRenderPass, pGranularity: ptr VkExtent2D): void {.stdcall.}](vkGetProc("vkGetRenderAreaGranularity"))
  vkCmdSetViewport = cast[proc(commandBuffer: VkCommandBuffer, firstViewport: uint32, viewportCount: uint32, pViewports: ptr VkViewport): void {.stdcall.}](vkGetProc("vkCmdSetViewport"))
  vkCmdSetScissor = cast[proc(commandBuffer: VkCommandBuffer, firstScissor: uint32, scissorCount: uint32, pScissors: ptr VkRect2D): void {.stdcall.}](vkGetProc("vkCmdSetScissor"))
  vkCmdSetLineWidth = cast[proc(commandBuffer: VkCommandBuffer, lineWidth: float32): void {.stdcall.}](vkGetProc("vkCmdSetLineWidth"))
  vkCmdSetDepthBias = cast[proc(commandBuffer: VkCommandBuffer, depthBiasConstantFactor: float32, depthBiasClamp: float32, depthBiasSlopeFactor: float32): void {.stdcall.}](vkGetProc("vkCmdSetDepthBias"))
  vkCmdSetBlendConstants = cast[proc(commandBuffer: VkCommandBuffer, blendConstants: array[4, float32]): void {.stdcall.}](vkGetProc("vkCmdSetBlendConstants"))
  vkCmdSetDepthBounds = cast[proc(commandBuffer: VkCommandBuffer, minDepthBounds: float32, maxDepthBounds: float32): void {.stdcall.}](vkGetProc("vkCmdSetDepthBounds"))
  vkCmdSetStencilCompareMask = cast[proc(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, compareMask: uint32): void {.stdcall.}](vkGetProc("vkCmdSetStencilCompareMask"))
  vkCmdSetStencilWriteMask = cast[proc(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, writeMask: uint32): void {.stdcall.}](vkGetProc("vkCmdSetStencilWriteMask"))
  vkCmdSetStencilReference = cast[proc(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, reference: uint32): void {.stdcall.}](vkGetProc("vkCmdSetStencilReference"))
  vkCmdBindIndexBuffer = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, indexType: VkIndexType): void {.stdcall.}](vkGetProc("vkCmdBindIndexBuffer"))
  vkCmdBindVertexBuffers = cast[proc(commandBuffer: VkCommandBuffer, firstBinding: uint32, bindingCount: uint32, pBuffers: ptr VkBuffer, pOffsets: ptr VkDeviceSize): void {.stdcall.}](vkGetProc("vkCmdBindVertexBuffers"))
  vkCmdDraw = cast[proc(commandBuffer: VkCommandBuffer, vertexCount: uint32, instanceCount: uint32, firstVertex: uint32, firstInstance: uint32): void {.stdcall.}](vkGetProc("vkCmdDraw"))
  vkCmdDrawIndexed = cast[proc(commandBuffer: VkCommandBuffer, indexCount: uint32, instanceCount: uint32, firstIndex: uint32, vertexOffset: int32, firstInstance: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawIndexed"))
  vkCmdDrawIndirect = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawIndirect"))
  vkCmdDrawIndexedIndirect = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawIndexedIndirect"))
  vkCmdBlitImage = cast[proc(commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: uint32, pRegions: ptr VkImageBlit, filter: VkFilter): void {.stdcall.}](vkGetProc("vkCmdBlitImage"))
  vkCmdClearDepthStencilImage = cast[proc(commandBuffer: VkCommandBuffer, image: VkImage, imageLayout: VkImageLayout, pDepthStencil: ptr VkClearDepthStencilValue, rangeCount: uint32, pRanges: ptr VkImageSubresourceRange): void {.stdcall.}](vkGetProc("vkCmdClearDepthStencilImage"))
  vkCmdClearAttachments = cast[proc(commandBuffer: VkCommandBuffer, attachmentCount: uint32, pAttachments: ptr VkClearAttachment, rectCount: uint32, pRects: ptr VkClearRect): void {.stdcall.}](vkGetProc("vkCmdClearAttachments"))
  vkCmdResolveImage = cast[proc(commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: uint32, pRegions: ptr VkImageResolve): void {.stdcall.}](vkGetProc("vkCmdResolveImage"))
  vkCmdBeginRenderPass = cast[proc(commandBuffer: VkCommandBuffer, pRenderPassBegin: ptr VkRenderPassBeginInfo, contents: VkSubpassContents): void {.stdcall.}](vkGetProc("vkCmdBeginRenderPass"))
  vkCmdNextSubpass = cast[proc(commandBuffer: VkCommandBuffer, contents: VkSubpassContents): void {.stdcall.}](vkGetProc("vkCmdNextSubpass"))
  vkCmdEndRenderPass = cast[proc(commandBuffer: VkCommandBuffer): void {.stdcall.}](vkGetProc("vkCmdEndRenderPass"))

proc vkLoad1_1*() =
  ## Loads Vulkan 1_1 commands.
  vkEnumerateInstanceVersion = cast[proc(pApiVersion: ptr uint32): VkResult {.stdcall.}](vkGetProc("vkEnumerateInstanceVersion"))
  vkBindBufferMemory2 = cast[proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindBufferMemoryInfo): VkResult {.stdcall.}](vkGetProc("vkBindBufferMemory2"))
  vkBindImageMemory2 = cast[proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindImageMemoryInfo): VkResult {.stdcall.}](vkGetProc("vkBindImageMemory2"))
  vkGetDeviceGroupPeerMemoryFeatures = cast[proc(device: VkDevice, heapIndex: uint32, localDeviceIndex: uint32, remoteDeviceIndex: uint32, pPeerMemoryFeatures: ptr VkPeerMemoryFeatureFlags): void {.stdcall.}](vkGetProc("vkGetDeviceGroupPeerMemoryFeatures"))
  vkCmdSetDeviceMask = cast[proc(commandBuffer: VkCommandBuffer, deviceMask: uint32): void {.stdcall.}](vkGetProc("vkCmdSetDeviceMask"))
  vkEnumeratePhysicalDeviceGroups = cast[proc(instance: VkInstance, pPhysicalDeviceGroupCount: ptr uint32, pPhysicalDeviceGroupProperties: ptr VkPhysicalDeviceGroupProperties): VkResult {.stdcall.}](vkGetProc("vkEnumeratePhysicalDeviceGroups"))
  vkGetImageMemoryRequirements2 = cast[proc(device: VkDevice, pInfo: ptr VkImageMemoryRequirementsInfo2, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetImageMemoryRequirements2"))
  vkGetBufferMemoryRequirements2 = cast[proc(device: VkDevice, pInfo: ptr VkBufferMemoryRequirementsInfo2, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetBufferMemoryRequirements2"))
  vkGetImageSparseMemoryRequirements2 = cast[proc(device: VkDevice, pInfo: ptr VkImageSparseMemoryRequirementsInfo2, pSparseMemoryRequirementCount: ptr uint32, pSparseMemoryRequirements: ptr VkSparseImageMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetImageSparseMemoryRequirements2"))
  vkGetPhysicalDeviceFeatures2 = cast[proc(physicalDevice: VkPhysicalDevice, pFeatures: ptr VkPhysicalDeviceFeatures2): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceFeatures2"))
  vkGetPhysicalDeviceProperties2 = cast[proc(physicalDevice: VkPhysicalDevice, pProperties: ptr VkPhysicalDeviceProperties2): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceProperties2"))
  vkGetPhysicalDeviceFormatProperties2 = cast[proc(physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: ptr VkFormatProperties2): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceFormatProperties2"))
  vkGetPhysicalDeviceImageFormatProperties2 = cast[proc(physicalDevice: VkPhysicalDevice, pImageFormatInfo: ptr VkPhysicalDeviceImageFormatInfo2, pImageFormatProperties: ptr VkImageFormatProperties2): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceImageFormatProperties2"))
  vkGetPhysicalDeviceQueueFamilyProperties2 = cast[proc(physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: ptr uint32, pQueueFamilyProperties: ptr VkQueueFamilyProperties2): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceQueueFamilyProperties2"))
  vkGetPhysicalDeviceMemoryProperties2 = cast[proc(physicalDevice: VkPhysicalDevice, pMemoryProperties: ptr VkPhysicalDeviceMemoryProperties2): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceMemoryProperties2"))
  vkGetPhysicalDeviceSparseImageFormatProperties2 = cast[proc(physicalDevice: VkPhysicalDevice, pFormatInfo: ptr VkPhysicalDeviceSparseImageFormatInfo2, pPropertyCount: ptr uint32, pProperties: ptr VkSparseImageFormatProperties2): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSparseImageFormatProperties2"))
  vkTrimCommandPool = cast[proc(device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolTrimFlags): void {.stdcall.}](vkGetProc("vkTrimCommandPool"))
  vkGetDeviceQueue2 = cast[proc(device: VkDevice, pQueueInfo: ptr VkDeviceQueueInfo2, pQueue: ptr VkQueue): void {.stdcall.}](vkGetProc("vkGetDeviceQueue2"))
  vkGetPhysicalDeviceExternalBufferProperties = cast[proc(physicalDevice: VkPhysicalDevice, pExternalBufferInfo: ptr VkPhysicalDeviceExternalBufferInfo, pExternalBufferProperties: ptr VkExternalBufferProperties): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceExternalBufferProperties"))
  vkGetPhysicalDeviceExternalFenceProperties = cast[proc(physicalDevice: VkPhysicalDevice, pExternalFenceInfo: ptr VkPhysicalDeviceExternalFenceInfo, pExternalFenceProperties: ptr VkExternalFenceProperties): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceExternalFenceProperties"))
  vkGetPhysicalDeviceExternalSemaphoreProperties = cast[proc(physicalDevice: VkPhysicalDevice, pExternalSemaphoreInfo: ptr VkPhysicalDeviceExternalSemaphoreInfo, pExternalSemaphoreProperties: ptr VkExternalSemaphoreProperties): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceExternalSemaphoreProperties"))
  vkCmdDispatchBase = cast[proc(commandBuffer: VkCommandBuffer, baseGroupX: uint32, baseGroupY: uint32, baseGroupZ: uint32, groupCountX: uint32, groupCountY: uint32, groupCountZ: uint32): void {.stdcall.}](vkGetProc("vkCmdDispatchBase"))
  vkCreateDescriptorUpdateTemplate = cast[proc(device: VkDevice, pCreateInfo: ptr VkDescriptorUpdateTemplateCreateInfo, pAllocator: ptr VkAllocationCallbacks, pDescriptorUpdateTemplate: ptr VkDescriptorUpdateTemplate): VkResult {.stdcall.}](vkGetProc("vkCreateDescriptorUpdateTemplate"))
  vkDestroyDescriptorUpdateTemplate = cast[proc(device: VkDevice, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyDescriptorUpdateTemplate"))
  vkUpdateDescriptorSetWithTemplate = cast[proc(device: VkDevice, descriptorSet: VkDescriptorSet, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pData: pointer): void {.stdcall.}](vkGetProc("vkUpdateDescriptorSetWithTemplate"))
  vkGetDescriptorSetLayoutSupport = cast[proc(device: VkDevice, pCreateInfo: ptr VkDescriptorSetLayoutCreateInfo, pSupport: ptr VkDescriptorSetLayoutSupport): void {.stdcall.}](vkGetProc("vkGetDescriptorSetLayoutSupport"))
  vkCreateSamplerYcbcrConversion = cast[proc(device: VkDevice, pCreateInfo: ptr VkSamplerYcbcrConversionCreateInfo, pAllocator: ptr VkAllocationCallbacks, pYcbcrConversion: ptr VkSamplerYcbcrConversion): VkResult {.stdcall.}](vkGetProc("vkCreateSamplerYcbcrConversion"))
  vkDestroySamplerYcbcrConversion = cast[proc(device: VkDevice, ycbcrConversion: VkSamplerYcbcrConversion, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroySamplerYcbcrConversion"))

proc vkLoad1_2*() =
  ## Loads Vulkan 1_2 commands.
  vkResetQueryPool = cast[proc(device: VkDevice, queryPool: VkQueryPool, firstQuery: uint32, queryCount: uint32): void {.stdcall.}](vkGetProc("vkResetQueryPool"))
  vkGetSemaphoreCounterValue = cast[proc(device: VkDevice, semaphore: VkSemaphore, pValue: ptr uint64): VkResult {.stdcall.}](vkGetProc("vkGetSemaphoreCounterValue"))
  vkWaitSemaphores = cast[proc(device: VkDevice, pWaitInfo: ptr VkSemaphoreWaitInfo, timeout: uint64): VkResult {.stdcall.}](vkGetProc("vkWaitSemaphores"))
  vkSignalSemaphore = cast[proc(device: VkDevice, pSignalInfo: ptr VkSemaphoreSignalInfo): VkResult {.stdcall.}](vkGetProc("vkSignalSemaphore"))
  vkGetBufferDeviceAddress = cast[proc(device: VkDevice, pInfo: ptr VkBufferDeviceAddressInfo): VkDeviceAddress {.stdcall.}](vkGetProc("vkGetBufferDeviceAddress"))
  vkGetBufferOpaqueCaptureAddress = cast[proc(device: VkDevice, pInfo: ptr VkBufferDeviceAddressInfo): uint64 {.stdcall.}](vkGetProc("vkGetBufferOpaqueCaptureAddress"))
  vkGetDeviceMemoryOpaqueCaptureAddress = cast[proc(device: VkDevice, pInfo: ptr VkDeviceMemoryOpaqueCaptureAddressInfo): uint64 {.stdcall.}](vkGetProc("vkGetDeviceMemoryOpaqueCaptureAddress"))
  vkCmdDrawIndirectCount = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawIndirectCount"))
  vkCmdDrawIndexedIndirectCount = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawIndexedIndirectCount"))
  vkCreateRenderPass2 = cast[proc(device: VkDevice, pCreateInfo: ptr VkRenderPassCreateInfo2, pAllocator: ptr VkAllocationCallbacks, pRenderPass: ptr VkRenderPass): VkResult {.stdcall.}](vkGetProc("vkCreateRenderPass2"))
  vkCmdBeginRenderPass2 = cast[proc(commandBuffer: VkCommandBuffer, pRenderPassBegin: ptr VkRenderPassBeginInfo, pSubpassBeginInfo: ptr VkSubpassBeginInfo): void {.stdcall.}](vkGetProc("vkCmdBeginRenderPass2"))
  vkCmdNextSubpass2 = cast[proc(commandBuffer: VkCommandBuffer, pSubpassBeginInfo: ptr VkSubpassBeginInfo, pSubpassEndInfo: ptr VkSubpassEndInfo): void {.stdcall.}](vkGetProc("vkCmdNextSubpass2"))
  vkCmdEndRenderPass2 = cast[proc(commandBuffer: VkCommandBuffer, pSubpassEndInfo: ptr VkSubpassEndInfo): void {.stdcall.}](vkGetProc("vkCmdEndRenderPass2"))

proc vkLoad1_3*() =
  ## Loads Vulkan 1_3 commands.
  vkGetPhysicalDeviceToolProperties = cast[proc(physicalDevice: VkPhysicalDevice, pToolCount: ptr uint32, pToolProperties: ptr VkPhysicalDeviceToolProperties): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceToolProperties"))
  vkCreatePrivateDataSlot = cast[proc(device: VkDevice, pCreateInfo: ptr VkPrivateDataSlotCreateInfo, pAllocator: ptr VkAllocationCallbacks, pPrivateDataSlot: ptr VkPrivateDataSlot): VkResult {.stdcall.}](vkGetProc("vkCreatePrivateDataSlot"))
  vkDestroyPrivateDataSlot = cast[proc(device: VkDevice, privateDataSlot: VkPrivateDataSlot, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyPrivateDataSlot"))
  vkSetPrivateData = cast[proc(device: VkDevice, objectType: VkObjectType, objectHandle: uint64, privateDataSlot: VkPrivateDataSlot, data: uint64): VkResult {.stdcall.}](vkGetProc("vkSetPrivateData"))
  vkGetPrivateData = cast[proc(device: VkDevice, objectType: VkObjectType, objectHandle: uint64, privateDataSlot: VkPrivateDataSlot, pData: ptr uint64): void {.stdcall.}](vkGetProc("vkGetPrivateData"))
  vkCmdPipelineBarrier2 = cast[proc(commandBuffer: VkCommandBuffer, pDependencyInfo: ptr VkDependencyInfo): void {.stdcall.}](vkGetProc("vkCmdPipelineBarrier2"))
  vkCmdWriteTimestamp2 = cast[proc(commandBuffer: VkCommandBuffer, stage: VkPipelineStageFlags2, queryPool: VkQueryPool, query: uint32): void {.stdcall.}](vkGetProc("vkCmdWriteTimestamp2"))
  vkQueueSubmit2 = cast[proc(queue: VkQueue, submitCount: uint32, pSubmits: ptr VkSubmitInfo2, fence: VkFence): VkResult {.stdcall.}](vkGetProc("vkQueueSubmit2"))
  vkCmdCopyBuffer2 = cast[proc(commandBuffer: VkCommandBuffer, pCopyBufferInfo: ptr VkCopyBufferInfo2): void {.stdcall.}](vkGetProc("vkCmdCopyBuffer2"))
  vkCmdCopyImage2 = cast[proc(commandBuffer: VkCommandBuffer, pCopyImageInfo: ptr VkCopyImageInfo2): void {.stdcall.}](vkGetProc("vkCmdCopyImage2"))
  vkCmdCopyBufferToImage2 = cast[proc(commandBuffer: VkCommandBuffer, pCopyBufferToImageInfo: ptr VkCopyBufferToImageInfo2): void {.stdcall.}](vkGetProc("vkCmdCopyBufferToImage2"))
  vkCmdCopyImageToBuffer2 = cast[proc(commandBuffer: VkCommandBuffer, pCopyImageToBufferInfo: ptr VkCopyImageToBufferInfo2): void {.stdcall.}](vkGetProc("vkCmdCopyImageToBuffer2"))
  vkGetDeviceBufferMemoryRequirements = cast[proc(device: VkDevice, pInfo: ptr VkDeviceBufferMemoryRequirements, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetDeviceBufferMemoryRequirements"))
  vkGetDeviceImageMemoryRequirements = cast[proc(device: VkDevice, pInfo: ptr VkDeviceImageMemoryRequirements, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetDeviceImageMemoryRequirements"))
  vkGetDeviceImageSparseMemoryRequirements = cast[proc(device: VkDevice, pInfo: ptr VkDeviceImageMemoryRequirements, pSparseMemoryRequirementCount: ptr uint32, pSparseMemoryRequirements: ptr VkSparseImageMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetDeviceImageSparseMemoryRequirements"))
  vkCmdSetEvent2 = cast[proc(commandBuffer: VkCommandBuffer, event: VkEvent, pDependencyInfo: ptr VkDependencyInfo): void {.stdcall.}](vkGetProc("vkCmdSetEvent2"))
  vkCmdResetEvent2 = cast[proc(commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags2): void {.stdcall.}](vkGetProc("vkCmdResetEvent2"))
  vkCmdWaitEvents2 = cast[proc(commandBuffer: VkCommandBuffer, eventCount: uint32, pEvents: ptr VkEvent, pDependencyInfos: ptr VkDependencyInfo): void {.stdcall.}](vkGetProc("vkCmdWaitEvents2"))
  vkCmdBlitImage2 = cast[proc(commandBuffer: VkCommandBuffer, pBlitImageInfo: ptr VkBlitImageInfo2): void {.stdcall.}](vkGetProc("vkCmdBlitImage2"))
  vkCmdResolveImage2 = cast[proc(commandBuffer: VkCommandBuffer, pResolveImageInfo: ptr VkResolveImageInfo2): void {.stdcall.}](vkGetProc("vkCmdResolveImage2"))
  vkCmdBeginRendering = cast[proc(commandBuffer: VkCommandBuffer, pRenderingInfo: ptr VkRenderingInfo): void {.stdcall.}](vkGetProc("vkCmdBeginRendering"))
  vkCmdEndRendering = cast[proc(commandBuffer: VkCommandBuffer): void {.stdcall.}](vkGetProc("vkCmdEndRendering"))
  vkCmdSetCullMode = cast[proc(commandBuffer: VkCommandBuffer, cullMode: VkCullModeFlags): void {.stdcall.}](vkGetProc("vkCmdSetCullMode"))
  vkCmdSetFrontFace = cast[proc(commandBuffer: VkCommandBuffer, frontFace: VkFrontFace): void {.stdcall.}](vkGetProc("vkCmdSetFrontFace"))
  vkCmdSetPrimitiveTopology = cast[proc(commandBuffer: VkCommandBuffer, primitiveTopology: VkPrimitiveTopology): void {.stdcall.}](vkGetProc("vkCmdSetPrimitiveTopology"))
  vkCmdSetViewportWithCount = cast[proc(commandBuffer: VkCommandBuffer, viewportCount: uint32, pViewports: ptr VkViewport): void {.stdcall.}](vkGetProc("vkCmdSetViewportWithCount"))
  vkCmdSetScissorWithCount = cast[proc(commandBuffer: VkCommandBuffer, scissorCount: uint32, pScissors: ptr VkRect2D): void {.stdcall.}](vkGetProc("vkCmdSetScissorWithCount"))
  vkCmdBindVertexBuffers2 = cast[proc(commandBuffer: VkCommandBuffer, firstBinding: uint32, bindingCount: uint32, pBuffers: ptr VkBuffer, pOffsets: ptr VkDeviceSize, pSizes: ptr VkDeviceSize, pStrides: ptr VkDeviceSize): void {.stdcall.}](vkGetProc("vkCmdBindVertexBuffers2"))
  vkCmdSetDepthTestEnable = cast[proc(commandBuffer: VkCommandBuffer, depthTestEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthTestEnable"))
  vkCmdSetDepthWriteEnable = cast[proc(commandBuffer: VkCommandBuffer, depthWriteEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthWriteEnable"))
  vkCmdSetDepthCompareOp = cast[proc(commandBuffer: VkCommandBuffer, depthCompareOp: VkCompareOp): void {.stdcall.}](vkGetProc("vkCmdSetDepthCompareOp"))
  vkCmdSetDepthBoundsTestEnable = cast[proc(commandBuffer: VkCommandBuffer, depthBoundsTestEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthBoundsTestEnable"))
  vkCmdSetStencilTestEnable = cast[proc(commandBuffer: VkCommandBuffer, stencilTestEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetStencilTestEnable"))
  vkCmdSetStencilOp = cast[proc(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, failOp: VkStencilOp, passOp: VkStencilOp, depthFailOp: VkStencilOp, compareOp: VkCompareOp): void {.stdcall.}](vkGetProc("vkCmdSetStencilOp"))
  vkCmdSetRasterizerDiscardEnable = cast[proc(commandBuffer: VkCommandBuffer, rasterizerDiscardEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetRasterizerDiscardEnable"))
  vkCmdSetDepthBiasEnable = cast[proc(commandBuffer: VkCommandBuffer, depthBiasEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthBiasEnable"))
  vkCmdSetPrimitiveRestartEnable = cast[proc(commandBuffer: VkCommandBuffer, primitiveRestartEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetPrimitiveRestartEnable"))

proc vkLoad1_4*() =
  ## Loads Vulkan 1_4 commands.
  vkMapMemory2 = cast[proc(device: VkDevice, pMemoryMapInfo: ptr VkMemoryMapInfo, ppData: ptr pointer): VkResult {.stdcall.}](vkGetProc("vkMapMemory2"))
  vkUnmapMemory2 = cast[proc(device: VkDevice, pMemoryUnmapInfo: ptr VkMemoryUnmapInfo): VkResult {.stdcall.}](vkGetProc("vkUnmapMemory2"))
  vkGetDeviceImageSubresourceLayout = cast[proc(device: VkDevice, pInfo: ptr VkDeviceImageSubresourceInfo, pLayout: ptr VkSubresourceLayout2): void {.stdcall.}](vkGetProc("vkGetDeviceImageSubresourceLayout"))
  vkGetImageSubresourceLayout2 = cast[proc(device: VkDevice, image: VkImage, pSubresource: ptr VkImageSubresource2, pLayout: ptr VkSubresourceLayout2): void {.stdcall.}](vkGetProc("vkGetImageSubresourceLayout2"))
  vkCopyMemoryToImage = cast[proc(device: VkDevice, pCopyMemoryToImageInfo: ptr VkCopyMemoryToImageInfo): VkResult {.stdcall.}](vkGetProc("vkCopyMemoryToImage"))
  vkCopyImageToMemory = cast[proc(device: VkDevice, pCopyImageToMemoryInfo: ptr VkCopyImageToMemoryInfo): VkResult {.stdcall.}](vkGetProc("vkCopyImageToMemory"))
  vkCopyImageToImage = cast[proc(device: VkDevice, pCopyImageToImageInfo: ptr VkCopyImageToImageInfo): VkResult {.stdcall.}](vkGetProc("vkCopyImageToImage"))
  vkTransitionImageLayout = cast[proc(device: VkDevice, transitionCount: uint32, pTransitions: ptr VkHostImageLayoutTransitionInfo): VkResult {.stdcall.}](vkGetProc("vkTransitionImageLayout"))
  vkCmdPushDescriptorSet = cast[proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, set: uint32, descriptorWriteCount: uint32, pDescriptorWrites: ptr VkWriteDescriptorSet): void {.stdcall.}](vkGetProc("vkCmdPushDescriptorSet"))
  vkCmdPushDescriptorSetWithTemplate = cast[proc(commandBuffer: VkCommandBuffer, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, layout: VkPipelineLayout, set: uint32, pData: pointer): void {.stdcall.}](vkGetProc("vkCmdPushDescriptorSetWithTemplate"))
  vkCmdBindDescriptorSets2 = cast[proc(commandBuffer: VkCommandBuffer, pBindDescriptorSetsInfo: ptr VkBindDescriptorSetsInfo): void {.stdcall.}](vkGetProc("vkCmdBindDescriptorSets2"))
  vkCmdPushConstants2 = cast[proc(commandBuffer: VkCommandBuffer, pPushConstantsInfo: ptr VkPushConstantsInfo): void {.stdcall.}](vkGetProc("vkCmdPushConstants2"))
  vkCmdPushDescriptorSet2 = cast[proc(commandBuffer: VkCommandBuffer, pPushDescriptorSetInfo: ptr VkPushDescriptorSetInfo): void {.stdcall.}](vkGetProc("vkCmdPushDescriptorSet2"))
  vkCmdPushDescriptorSetWithTemplate2 = cast[proc(commandBuffer: VkCommandBuffer, pPushDescriptorSetWithTemplateInfo: ptr VkPushDescriptorSetWithTemplateInfo): void {.stdcall.}](vkGetProc("vkCmdPushDescriptorSetWithTemplate2"))
  vkCmdSetLineStipple = cast[proc(commandBuffer: VkCommandBuffer, lineStippleFactor: uint32, lineStipplePattern: uint16): void {.stdcall.}](vkGetProc("vkCmdSetLineStipple"))
  vkCmdBindIndexBuffer2 = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, size: VkDeviceSize, indexType: VkIndexType): void {.stdcall.}](vkGetProc("vkCmdBindIndexBuffer2"))
  vkGetRenderingAreaGranularity = cast[proc(device: VkDevice, pRenderingAreaInfo: ptr VkRenderingAreaInfo, pGranularity: ptr VkExtent2D): void {.stdcall.}](vkGetProc("vkGetRenderingAreaGranularity"))
  vkCmdSetRenderingAttachmentLocations = cast[proc(commandBuffer: VkCommandBuffer, pLocationInfo: ptr VkRenderingAttachmentLocationInfo): void {.stdcall.}](vkGetProc("vkCmdSetRenderingAttachmentLocations"))
  vkCmdSetRenderingInputAttachmentIndices = cast[proc(commandBuffer: VkCommandBuffer, pInputAttachmentIndexInfo: ptr VkRenderingInputAttachmentIndexInfo): void {.stdcall.}](vkGetProc("vkCmdSetRenderingInputAttachmentIndices"))

proc loadVK_KHR_surface*() =
  ## Loads VK_KHR_surface extension commands.
  vkDestroySurfaceKHR = cast[proc(instance: VkInstance, surface: VkSurfaceKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroySurfaceKHR"))
  vkGetPhysicalDeviceSurfaceSupportKHR = cast[proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, surface: VkSurfaceKHR, pSupported: ptr VkBool32): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSurfaceSupportKHR"))
  vkGetPhysicalDeviceSurfaceCapabilitiesKHR = cast[proc(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceCapabilities: ptr VkSurfaceCapabilitiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSurfaceCapabilitiesKHR"))
  vkGetPhysicalDeviceSurfaceFormatsKHR = cast[proc(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceFormatCount: ptr uint32, pSurfaceFormats: ptr VkSurfaceFormatKHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSurfaceFormatsKHR"))
  vkGetPhysicalDeviceSurfacePresentModesKHR = cast[proc(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pPresentModeCount: ptr uint32, pPresentModes: ptr VkPresentModeKHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSurfacePresentModesKHR"))

proc loadVK_KHR_swapchain*() =
  ## Loads VK_KHR_swapchain extension commands.
  vkCreateSwapchainKHR = cast[proc(device: VkDevice, pCreateInfo: ptr VkSwapchainCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSwapchain: ptr VkSwapchainKHR): VkResult {.stdcall.}](vkGetProc("vkCreateSwapchainKHR"))
  vkDestroySwapchainKHR = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroySwapchainKHR"))
  vkGetSwapchainImagesKHR = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainImageCount: ptr uint32, pSwapchainImages: ptr VkImage): VkResult {.stdcall.}](vkGetProc("vkGetSwapchainImagesKHR"))
  vkAcquireNextImageKHR = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, timeout: uint64, semaphore: VkSemaphore, fence: VkFence, pImageIndex: ptr uint32): VkResult {.stdcall.}](vkGetProc("vkAcquireNextImageKHR"))
  vkQueuePresentKHR = cast[proc(queue: VkQueue, pPresentInfo: ptr VkPresentInfoKHR): VkResult {.stdcall.}](vkGetProc("vkQueuePresentKHR"))
  vkGetDeviceGroupPresentCapabilitiesKHR = cast[proc(device: VkDevice, pDeviceGroupPresentCapabilities: ptr VkDeviceGroupPresentCapabilitiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetDeviceGroupPresentCapabilitiesKHR"))
  vkGetDeviceGroupSurfacePresentModesKHR = cast[proc(device: VkDevice, surface: VkSurfaceKHR, pModes: ptr VkDeviceGroupPresentModeFlagsKHR): VkResult {.stdcall.}](vkGetProc("vkGetDeviceGroupSurfacePresentModesKHR"))
  vkGetPhysicalDevicePresentRectanglesKHR = cast[proc(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pRectCount: ptr uint32, pRects: ptr VkRect2D): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDevicePresentRectanglesKHR"))
  vkAcquireNextImage2KHR = cast[proc(device: VkDevice, pAcquireInfo: ptr VkAcquireNextImageInfoKHR, pImageIndex: ptr uint32): VkResult {.stdcall.}](vkGetProc("vkAcquireNextImage2KHR"))

proc loadVK_KHR_display*() =
  ## Loads VK_KHR_display extension commands.
  vkGetPhysicalDeviceDisplayPropertiesKHR = cast[proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkDisplayPropertiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceDisplayPropertiesKHR"))
  vkGetPhysicalDeviceDisplayPlanePropertiesKHR = cast[proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkDisplayPlanePropertiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceDisplayPlanePropertiesKHR"))
  vkGetDisplayPlaneSupportedDisplaysKHR = cast[proc(physicalDevice: VkPhysicalDevice, planeIndex: uint32, pDisplayCount: ptr uint32, pDisplays: ptr VkDisplayKHR): VkResult {.stdcall.}](vkGetProc("vkGetDisplayPlaneSupportedDisplaysKHR"))
  vkGetDisplayModePropertiesKHR = cast[proc(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pPropertyCount: ptr uint32, pProperties: ptr VkDisplayModePropertiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetDisplayModePropertiesKHR"))
  vkCreateDisplayModeKHR = cast[proc(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pCreateInfo: ptr VkDisplayModeCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pMode: ptr VkDisplayModeKHR): VkResult {.stdcall.}](vkGetProc("vkCreateDisplayModeKHR"))
  vkGetDisplayPlaneCapabilitiesKHR = cast[proc(physicalDevice: VkPhysicalDevice, mode: VkDisplayModeKHR, planeIndex: uint32, pCapabilities: ptr VkDisplayPlaneCapabilitiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetDisplayPlaneCapabilitiesKHR"))
  vkCreateDisplayPlaneSurfaceKHR = cast[proc(instance: VkInstance, pCreateInfo: ptr VkDisplaySurfaceCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateDisplayPlaneSurfaceKHR"))

proc loadVK_KHR_display_swapchain*() =
  ## Loads VK_KHR_display_swapchain extension commands.
  vkCreateSharedSwapchainsKHR = cast[proc(device: VkDevice, swapchainCount: uint32, pCreateInfos: ptr VkSwapchainCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSwapchains: ptr VkSwapchainKHR): VkResult {.stdcall.}](vkGetProc("vkCreateSharedSwapchainsKHR"))

proc loadVK_KHR_xlib_surface*() =
  ## Loads VK_KHR_xlib_surface extension commands.
  vkCreateXlibSurfaceKHR = cast[proc(instance: VkInstance, pCreateInfo: ptr VkXlibSurfaceCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateXlibSurfaceKHR"))
  vkGetPhysicalDeviceXlibPresentationSupportKHR = cast[proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, dpy: pointer, visualID: uint32): VkBool32 {.stdcall.}](vkGetProc("vkGetPhysicalDeviceXlibPresentationSupportKHR"))

proc loadVK_KHR_xcb_surface*() =
  ## Loads VK_KHR_xcb_surface extension commands.
  vkCreateXcbSurfaceKHR = cast[proc(instance: VkInstance, pCreateInfo: ptr VkXcbSurfaceCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateXcbSurfaceKHR"))
  vkGetPhysicalDeviceXcbPresentationSupportKHR = cast[proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, connection: pointer, visual_id: uint32): VkBool32 {.stdcall.}](vkGetProc("vkGetPhysicalDeviceXcbPresentationSupportKHR"))

proc loadVK_KHR_wayland_surface*() =
  ## Loads VK_KHR_wayland_surface extension commands.
  vkCreateWaylandSurfaceKHR = cast[proc(instance: VkInstance, pCreateInfo: ptr VkWaylandSurfaceCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateWaylandSurfaceKHR"))
  vkGetPhysicalDeviceWaylandPresentationSupportKHR = cast[proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, display: pointer): VkBool32 {.stdcall.}](vkGetProc("vkGetPhysicalDeviceWaylandPresentationSupportKHR"))

proc loadVK_KHR_android_surface*() =
  ## Loads VK_KHR_android_surface extension commands.
  vkCreateAndroidSurfaceKHR = cast[proc(instance: VkInstance, pCreateInfo: ptr VkAndroidSurfaceCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateAndroidSurfaceKHR"))

proc loadVK_KHR_win32_surface*() =
  ## Loads VK_KHR_win32_surface extension commands.
  vkCreateWin32SurfaceKHR = cast[proc(instance: VkInstance, pCreateInfo: ptr VkWin32SurfaceCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateWin32SurfaceKHR"))
  vkGetPhysicalDeviceWin32PresentationSupportKHR = cast[proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32): VkBool32 {.stdcall.}](vkGetProc("vkGetPhysicalDeviceWin32PresentationSupportKHR"))

proc loadVK_EXT_debug_report*() =
  ## Loads VK_EXT_debug_report extension commands.
  vkCreateDebugReportCallbackEXT = cast[proc(instance: VkInstance, pCreateInfo: ptr VkDebugReportCallbackCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pCallback: ptr VkDebugReportCallbackEXT): VkResult {.stdcall.}](vkGetProc("vkCreateDebugReportCallbackEXT"))
  vkDestroyDebugReportCallbackEXT = cast[proc(instance: VkInstance, callback: VkDebugReportCallbackEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyDebugReportCallbackEXT"))
  vkDebugReportMessageEXT = cast[proc(instance: VkInstance, flags: VkDebugReportFlagsEXT, objectType: VkDebugReportObjectTypeEXT, `object`: uint64, location: csize_t, messageCode: int32, pLayerPrefix: cstring, pMessage: cstring): void {.stdcall.}](vkGetProc("vkDebugReportMessageEXT"))

proc loadVK_EXT_debug_marker*() =
  ## Loads VK_EXT_debug_marker extension commands.
  vkDebugMarkerSetObjectTagEXT = cast[proc(device: VkDevice, pTagInfo: ptr VkDebugMarkerObjectTagInfoEXT): VkResult {.stdcall.}](vkGetProc("vkDebugMarkerSetObjectTagEXT"))
  vkDebugMarkerSetObjectNameEXT = cast[proc(device: VkDevice, pNameInfo: ptr VkDebugMarkerObjectNameInfoEXT): VkResult {.stdcall.}](vkGetProc("vkDebugMarkerSetObjectNameEXT"))
  vkCmdDebugMarkerBeginEXT = cast[proc(commandBuffer: VkCommandBuffer, pMarkerInfo: ptr VkDebugMarkerMarkerInfoEXT): void {.stdcall.}](vkGetProc("vkCmdDebugMarkerBeginEXT"))
  vkCmdDebugMarkerEndEXT = cast[proc(commandBuffer: VkCommandBuffer): void {.stdcall.}](vkGetProc("vkCmdDebugMarkerEndEXT"))
  vkCmdDebugMarkerInsertEXT = cast[proc(commandBuffer: VkCommandBuffer, pMarkerInfo: ptr VkDebugMarkerMarkerInfoEXT): void {.stdcall.}](vkGetProc("vkCmdDebugMarkerInsertEXT"))

proc loadVK_KHR_video_queue*() =
  ## Loads VK_KHR_video_queue extension commands.
  vkGetPhysicalDeviceVideoCapabilitiesKHR = cast[proc(physicalDevice: VkPhysicalDevice, pVideoProfile: ptr VkVideoProfileInfoKHR, pCapabilities: ptr VkVideoCapabilitiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceVideoCapabilitiesKHR"))
  vkGetPhysicalDeviceVideoFormatPropertiesKHR = cast[proc(physicalDevice: VkPhysicalDevice, pVideoFormatInfo: ptr VkPhysicalDeviceVideoFormatInfoKHR, pVideoFormatPropertyCount: ptr uint32, pVideoFormatProperties: ptr VkVideoFormatPropertiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceVideoFormatPropertiesKHR"))
  vkCreateVideoSessionKHR = cast[proc(device: VkDevice, pCreateInfo: ptr VkVideoSessionCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pVideoSession: ptr VkVideoSessionKHR): VkResult {.stdcall.}](vkGetProc("vkCreateVideoSessionKHR"))
  vkDestroyVideoSessionKHR = cast[proc(device: VkDevice, videoSession: VkVideoSessionKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyVideoSessionKHR"))
  vkGetVideoSessionMemoryRequirementsKHR = cast[proc(device: VkDevice, videoSession: VkVideoSessionKHR, pMemoryRequirementsCount: ptr uint32, pMemoryRequirements: ptr VkVideoSessionMemoryRequirementsKHR): VkResult {.stdcall.}](vkGetProc("vkGetVideoSessionMemoryRequirementsKHR"))
  vkBindVideoSessionMemoryKHR = cast[proc(device: VkDevice, videoSession: VkVideoSessionKHR, bindSessionMemoryInfoCount: uint32, pBindSessionMemoryInfos: ptr VkBindVideoSessionMemoryInfoKHR): VkResult {.stdcall.}](vkGetProc("vkBindVideoSessionMemoryKHR"))
  vkCreateVideoSessionParametersKHR = cast[proc(device: VkDevice, pCreateInfo: ptr VkVideoSessionParametersCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pVideoSessionParameters: ptr VkVideoSessionParametersKHR): VkResult {.stdcall.}](vkGetProc("vkCreateVideoSessionParametersKHR"))
  vkUpdateVideoSessionParametersKHR = cast[proc(device: VkDevice, videoSessionParameters: VkVideoSessionParametersKHR, pUpdateInfo: ptr VkVideoSessionParametersUpdateInfoKHR): VkResult {.stdcall.}](vkGetProc("vkUpdateVideoSessionParametersKHR"))
  vkDestroyVideoSessionParametersKHR = cast[proc(device: VkDevice, videoSessionParameters: VkVideoSessionParametersKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyVideoSessionParametersKHR"))
  vkCmdBeginVideoCodingKHR = cast[proc(commandBuffer: VkCommandBuffer, pBeginInfo: ptr VkVideoBeginCodingInfoKHR): void {.stdcall.}](vkGetProc("vkCmdBeginVideoCodingKHR"))
  vkCmdEndVideoCodingKHR = cast[proc(commandBuffer: VkCommandBuffer, pEndCodingInfo: ptr VkVideoEndCodingInfoKHR): void {.stdcall.}](vkGetProc("vkCmdEndVideoCodingKHR"))
  vkCmdControlVideoCodingKHR = cast[proc(commandBuffer: VkCommandBuffer, pCodingControlInfo: ptr VkVideoCodingControlInfoKHR): void {.stdcall.}](vkGetProc("vkCmdControlVideoCodingKHR"))

proc loadVK_KHR_video_decode_queue*() =
  ## Loads VK_KHR_video_decode_queue extension commands.
  vkCmdDecodeVideoKHR = cast[proc(commandBuffer: VkCommandBuffer, pDecodeInfo: ptr VkVideoDecodeInfoKHR): void {.stdcall.}](vkGetProc("vkCmdDecodeVideoKHR"))

proc loadVK_EXT_transform_feedback*() =
  ## Loads VK_EXT_transform_feedback extension commands.
  vkCmdBindTransformFeedbackBuffersEXT = cast[proc(commandBuffer: VkCommandBuffer, firstBinding: uint32, bindingCount: uint32, pBuffers: ptr VkBuffer, pOffsets: ptr VkDeviceSize, pSizes: ptr VkDeviceSize): void {.stdcall.}](vkGetProc("vkCmdBindTransformFeedbackBuffersEXT"))
  vkCmdBeginTransformFeedbackEXT = cast[proc(commandBuffer: VkCommandBuffer, firstCounterBuffer: uint32, counterBufferCount: uint32, pCounterBuffers: ptr VkBuffer, pCounterBufferOffsets: ptr VkDeviceSize): void {.stdcall.}](vkGetProc("vkCmdBeginTransformFeedbackEXT"))
  vkCmdEndTransformFeedbackEXT = cast[proc(commandBuffer: VkCommandBuffer, firstCounterBuffer: uint32, counterBufferCount: uint32, pCounterBuffers: ptr VkBuffer, pCounterBufferOffsets: ptr VkDeviceSize): void {.stdcall.}](vkGetProc("vkCmdEndTransformFeedbackEXT"))
  vkCmdBeginQueryIndexedEXT = cast[proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: uint32, flags: VkQueryControlFlags, index: uint32): void {.stdcall.}](vkGetProc("vkCmdBeginQueryIndexedEXT"))
  vkCmdEndQueryIndexedEXT = cast[proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: uint32, index: uint32): void {.stdcall.}](vkGetProc("vkCmdEndQueryIndexedEXT"))
  vkCmdDrawIndirectByteCountEXT = cast[proc(commandBuffer: VkCommandBuffer, instanceCount: uint32, firstInstance: uint32, counterBuffer: VkBuffer, counterBufferOffset: VkDeviceSize, counterOffset: uint32, vertexStride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawIndirectByteCountEXT"))

proc loadVK_NVX_binary_import*() =
  ## Loads VK_NVX_binary_import extension commands.
  vkCreateCuModuleNVX = cast[proc(device: VkDevice, pCreateInfo: ptr VkCuModuleCreateInfoNVX, pAllocator: ptr VkAllocationCallbacks, pModule: ptr VkCuModuleNVX): VkResult {.stdcall.}](vkGetProc("vkCreateCuModuleNVX"))
  vkCreateCuFunctionNVX = cast[proc(device: VkDevice, pCreateInfo: ptr VkCuFunctionCreateInfoNVX, pAllocator: ptr VkAllocationCallbacks, pFunction: ptr VkCuFunctionNVX): VkResult {.stdcall.}](vkGetProc("vkCreateCuFunctionNVX"))
  vkDestroyCuModuleNVX = cast[proc(device: VkDevice, module: VkCuModuleNVX, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyCuModuleNVX"))
  vkDestroyCuFunctionNVX = cast[proc(device: VkDevice, function: VkCuFunctionNVX, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyCuFunctionNVX"))
  vkCmdCuLaunchKernelNVX = cast[proc(commandBuffer: VkCommandBuffer, pLaunchInfo: ptr VkCuLaunchInfoNVX): void {.stdcall.}](vkGetProc("vkCmdCuLaunchKernelNVX"))

proc loadVK_NVX_image_view_handle*() =
  ## Loads VK_NVX_image_view_handle extension commands.
  vkGetImageViewHandleNVX = cast[proc(device: VkDevice, pInfo: ptr VkImageViewHandleInfoNVX): uint32 {.stdcall.}](vkGetProc("vkGetImageViewHandleNVX"))
  vkGetImageViewHandle64NVX = cast[proc(device: VkDevice, pInfo: ptr VkImageViewHandleInfoNVX): uint64 {.stdcall.}](vkGetProc("vkGetImageViewHandle64NVX"))
  vkGetImageViewAddressNVX = cast[proc(device: VkDevice, imageView: VkImageView, pProperties: ptr VkImageViewAddressPropertiesNVX): VkResult {.stdcall.}](vkGetProc("vkGetImageViewAddressNVX"))
  vkGetDeviceCombinedImageSamplerIndexNVX = cast[proc(device: VkDevice, imageViewIndex: uint64, samplerIndex: uint64): uint64 {.stdcall.}](vkGetProc("vkGetDeviceCombinedImageSamplerIndexNVX"))

proc loadVK_AMD_draw_indirect_count*() =
  ## Loads VK_AMD_draw_indirect_count extension commands.
  vkCmdDrawIndirectCountAMD = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawIndirectCountAMD"))
  vkCmdDrawIndexedIndirectCountAMD = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawIndexedIndirectCountAMD"))

proc loadVK_AMD_shader_info*() =
  ## Loads VK_AMD_shader_info extension commands.
  vkGetShaderInfoAMD = cast[proc(device: VkDevice, pipeline: VkPipeline, shaderStage: VkShaderStageFlagBits, infoType: VkShaderInfoTypeAMD, pInfoSize: ptr csize_t, pInfo: pointer): VkResult {.stdcall.}](vkGetProc("vkGetShaderInfoAMD"))

proc loadVK_KHR_dynamic_rendering*() =
  ## Loads VK_KHR_dynamic_rendering extension commands.
  vkCmdBeginRenderingKHR = cast[proc(commandBuffer: VkCommandBuffer, pRenderingInfo: ptr VkRenderingInfo): void {.stdcall.}](vkGetProc("vkCmdBeginRenderingKHR"))
  vkCmdEndRenderingKHR = cast[proc(commandBuffer: VkCommandBuffer): void {.stdcall.}](vkGetProc("vkCmdEndRenderingKHR"))

proc loadVK_GGP_stream_descriptor_surface*() =
  ## Loads VK_GGP_stream_descriptor_surface extension commands.
  vkCreateStreamDescriptorSurfaceGGP = cast[proc(instance: VkInstance, pCreateInfo: ptr VkStreamDescriptorSurfaceCreateInfoGGP, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateStreamDescriptorSurfaceGGP"))

proc loadVK_NV_external_memory_capabilities*() =
  ## Loads VK_NV_external_memory_capabilities extension commands.
  vkGetPhysicalDeviceExternalImageFormatPropertiesNV = cast[proc(physicalDevice: VkPhysicalDevice, format: VkFormat, `type`: VkImageType, tiling: VkImageTiling, usage: VkImageUsageFlags, flags: VkImageCreateFlags, externalHandleType: VkExternalMemoryHandleTypeFlagsNV, pExternalImageFormatProperties: ptr VkExternalImageFormatPropertiesNV): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceExternalImageFormatPropertiesNV"))

proc loadVK_NV_external_memory_win32*() =
  ## Loads VK_NV_external_memory_win32 extension commands.
  vkGetMemoryWin32HandleNV = cast[proc(device: VkDevice, memory: VkDeviceMemory, handleType: VkExternalMemoryHandleTypeFlagsNV, pHandle: pointer): VkResult {.stdcall.}](vkGetProc("vkGetMemoryWin32HandleNV"))

proc loadVK_KHR_get_physical_device_properties2*() =
  ## Loads VK_KHR_get_physical_device_properties2 extension commands.
  vkGetPhysicalDeviceFeatures2KHR = cast[proc(physicalDevice: VkPhysicalDevice, pFeatures: ptr VkPhysicalDeviceFeatures2): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceFeatures2KHR"))
  vkGetPhysicalDeviceProperties2KHR = cast[proc(physicalDevice: VkPhysicalDevice, pProperties: ptr VkPhysicalDeviceProperties2): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceProperties2KHR"))
  vkGetPhysicalDeviceFormatProperties2KHR = cast[proc(physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: ptr VkFormatProperties2): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceFormatProperties2KHR"))
  vkGetPhysicalDeviceImageFormatProperties2KHR = cast[proc(physicalDevice: VkPhysicalDevice, pImageFormatInfo: ptr VkPhysicalDeviceImageFormatInfo2, pImageFormatProperties: ptr VkImageFormatProperties2): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceImageFormatProperties2KHR"))
  vkGetPhysicalDeviceQueueFamilyProperties2KHR = cast[proc(physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: ptr uint32, pQueueFamilyProperties: ptr VkQueueFamilyProperties2): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceQueueFamilyProperties2KHR"))
  vkGetPhysicalDeviceMemoryProperties2KHR = cast[proc(physicalDevice: VkPhysicalDevice, pMemoryProperties: ptr VkPhysicalDeviceMemoryProperties2): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceMemoryProperties2KHR"))
  vkGetPhysicalDeviceSparseImageFormatProperties2KHR = cast[proc(physicalDevice: VkPhysicalDevice, pFormatInfo: ptr VkPhysicalDeviceSparseImageFormatInfo2, pPropertyCount: ptr uint32, pProperties: ptr VkSparseImageFormatProperties2): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSparseImageFormatProperties2KHR"))

proc loadVK_KHR_device_group*() =
  ## Loads VK_KHR_device_group extension commands.
  vkGetDeviceGroupPeerMemoryFeaturesKHR = cast[proc(device: VkDevice, heapIndex: uint32, localDeviceIndex: uint32, remoteDeviceIndex: uint32, pPeerMemoryFeatures: ptr VkPeerMemoryFeatureFlags): void {.stdcall.}](vkGetProc("vkGetDeviceGroupPeerMemoryFeaturesKHR"))
  vkCmdSetDeviceMaskKHR = cast[proc(commandBuffer: VkCommandBuffer, deviceMask: uint32): void {.stdcall.}](vkGetProc("vkCmdSetDeviceMaskKHR"))
  vkCmdDispatchBaseKHR = cast[proc(commandBuffer: VkCommandBuffer, baseGroupX: uint32, baseGroupY: uint32, baseGroupZ: uint32, groupCountX: uint32, groupCountY: uint32, groupCountZ: uint32): void {.stdcall.}](vkGetProc("vkCmdDispatchBaseKHR"))
  vkGetDeviceGroupPresentCapabilitiesKHR = cast[proc(device: VkDevice, pDeviceGroupPresentCapabilities: ptr VkDeviceGroupPresentCapabilitiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetDeviceGroupPresentCapabilitiesKHR"))
  vkGetDeviceGroupSurfacePresentModesKHR = cast[proc(device: VkDevice, surface: VkSurfaceKHR, pModes: ptr VkDeviceGroupPresentModeFlagsKHR): VkResult {.stdcall.}](vkGetProc("vkGetDeviceGroupSurfacePresentModesKHR"))
  vkGetPhysicalDevicePresentRectanglesKHR = cast[proc(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pRectCount: ptr uint32, pRects: ptr VkRect2D): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDevicePresentRectanglesKHR"))
  vkAcquireNextImage2KHR = cast[proc(device: VkDevice, pAcquireInfo: ptr VkAcquireNextImageInfoKHR, pImageIndex: ptr uint32): VkResult {.stdcall.}](vkGetProc("vkAcquireNextImage2KHR"))

proc loadVK_NN_vi_surface*() =
  ## Loads VK_NN_vi_surface extension commands.
  vkCreateViSurfaceNN = cast[proc(instance: VkInstance, pCreateInfo: ptr VkViSurfaceCreateInfoNN, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateViSurfaceNN"))

proc loadVK_KHR_maintenance1*() =
  ## Loads VK_KHR_maintenance1 extension commands.
  vkTrimCommandPoolKHR = cast[proc(device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolTrimFlags): void {.stdcall.}](vkGetProc("vkTrimCommandPoolKHR"))

proc loadVK_KHR_device_group_creation*() =
  ## Loads VK_KHR_device_group_creation extension commands.
  vkEnumeratePhysicalDeviceGroupsKHR = cast[proc(instance: VkInstance, pPhysicalDeviceGroupCount: ptr uint32, pPhysicalDeviceGroupProperties: ptr VkPhysicalDeviceGroupProperties): VkResult {.stdcall.}](vkGetProc("vkEnumeratePhysicalDeviceGroupsKHR"))

proc loadVK_KHR_external_memory_capabilities*() =
  ## Loads VK_KHR_external_memory_capabilities extension commands.
  vkGetPhysicalDeviceExternalBufferPropertiesKHR = cast[proc(physicalDevice: VkPhysicalDevice, pExternalBufferInfo: ptr VkPhysicalDeviceExternalBufferInfo, pExternalBufferProperties: ptr VkExternalBufferProperties): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceExternalBufferPropertiesKHR"))

proc loadVK_KHR_external_memory_win32*() =
  ## Loads VK_KHR_external_memory_win32 extension commands.
  vkGetMemoryWin32HandleKHR = cast[proc(device: VkDevice, pGetWin32HandleInfo: ptr VkMemoryGetWin32HandleInfoKHR, pHandle: pointer): VkResult {.stdcall.}](vkGetProc("vkGetMemoryWin32HandleKHR"))
  vkGetMemoryWin32HandlePropertiesKHR = cast[proc(device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, handle: pointer, pMemoryWin32HandleProperties: ptr VkMemoryWin32HandlePropertiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetMemoryWin32HandlePropertiesKHR"))

proc loadVK_KHR_external_memory_fd*() =
  ## Loads VK_KHR_external_memory_fd extension commands.
  vkGetMemoryFdKHR = cast[proc(device: VkDevice, pGetFdInfo: ptr VkMemoryGetFdInfoKHR, pFd: ptr int32): VkResult {.stdcall.}](vkGetProc("vkGetMemoryFdKHR"))
  vkGetMemoryFdPropertiesKHR = cast[proc(device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, fd: int32, pMemoryFdProperties: ptr VkMemoryFdPropertiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetMemoryFdPropertiesKHR"))

proc loadVK_KHR_external_semaphore_capabilities*() =
  ## Loads VK_KHR_external_semaphore_capabilities extension commands.
  vkGetPhysicalDeviceExternalSemaphorePropertiesKHR = cast[proc(physicalDevice: VkPhysicalDevice, pExternalSemaphoreInfo: ptr VkPhysicalDeviceExternalSemaphoreInfo, pExternalSemaphoreProperties: ptr VkExternalSemaphoreProperties): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceExternalSemaphorePropertiesKHR"))

proc loadVK_KHR_external_semaphore_win32*() =
  ## Loads VK_KHR_external_semaphore_win32 extension commands.
  vkImportSemaphoreWin32HandleKHR = cast[proc(device: VkDevice, pImportSemaphoreWin32HandleInfo: ptr VkImportSemaphoreWin32HandleInfoKHR): VkResult {.stdcall.}](vkGetProc("vkImportSemaphoreWin32HandleKHR"))
  vkGetSemaphoreWin32HandleKHR = cast[proc(device: VkDevice, pGetWin32HandleInfo: ptr VkSemaphoreGetWin32HandleInfoKHR, pHandle: pointer): VkResult {.stdcall.}](vkGetProc("vkGetSemaphoreWin32HandleKHR"))

proc loadVK_KHR_external_semaphore_fd*() =
  ## Loads VK_KHR_external_semaphore_fd extension commands.
  vkImportSemaphoreFdKHR = cast[proc(device: VkDevice, pImportSemaphoreFdInfo: ptr VkImportSemaphoreFdInfoKHR): VkResult {.stdcall.}](vkGetProc("vkImportSemaphoreFdKHR"))
  vkGetSemaphoreFdKHR = cast[proc(device: VkDevice, pGetFdInfo: ptr VkSemaphoreGetFdInfoKHR, pFd: ptr int32): VkResult {.stdcall.}](vkGetProc("vkGetSemaphoreFdKHR"))

proc loadVK_KHR_push_descriptor*() =
  ## Loads VK_KHR_push_descriptor extension commands.
  vkCmdPushDescriptorSetKHR = cast[proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, set: uint32, descriptorWriteCount: uint32, pDescriptorWrites: ptr VkWriteDescriptorSet): void {.stdcall.}](vkGetProc("vkCmdPushDescriptorSetKHR"))
  vkCmdPushDescriptorSetWithTemplateKHR = cast[proc(commandBuffer: VkCommandBuffer, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, layout: VkPipelineLayout, set: uint32, pData: pointer): void {.stdcall.}](vkGetProc("vkCmdPushDescriptorSetWithTemplateKHR"))

proc loadVK_EXT_conditional_rendering*() =
  ## Loads VK_EXT_conditional_rendering extension commands.
  vkCmdBeginConditionalRenderingEXT = cast[proc(commandBuffer: VkCommandBuffer, pConditionalRenderingBegin: ptr VkConditionalRenderingBeginInfoEXT): void {.stdcall.}](vkGetProc("vkCmdBeginConditionalRenderingEXT"))
  vkCmdEndConditionalRenderingEXT = cast[proc(commandBuffer: VkCommandBuffer): void {.stdcall.}](vkGetProc("vkCmdEndConditionalRenderingEXT"))

proc loadVK_KHR_descriptor_update_template*() =
  ## Loads VK_KHR_descriptor_update_template extension commands.
  vkCreateDescriptorUpdateTemplateKHR = cast[proc(device: VkDevice, pCreateInfo: ptr VkDescriptorUpdateTemplateCreateInfo, pAllocator: ptr VkAllocationCallbacks, pDescriptorUpdateTemplate: ptr VkDescriptorUpdateTemplate): VkResult {.stdcall.}](vkGetProc("vkCreateDescriptorUpdateTemplateKHR"))
  vkDestroyDescriptorUpdateTemplateKHR = cast[proc(device: VkDevice, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyDescriptorUpdateTemplateKHR"))
  vkUpdateDescriptorSetWithTemplateKHR = cast[proc(device: VkDevice, descriptorSet: VkDescriptorSet, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pData: pointer): void {.stdcall.}](vkGetProc("vkUpdateDescriptorSetWithTemplateKHR"))
  vkCmdPushDescriptorSetWithTemplateKHR = cast[proc(commandBuffer: VkCommandBuffer, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, layout: VkPipelineLayout, set: uint32, pData: pointer): void {.stdcall.}](vkGetProc("vkCmdPushDescriptorSetWithTemplateKHR"))

proc loadVK_NV_clip_space_w_scaling*() =
  ## Loads VK_NV_clip_space_w_scaling extension commands.
  vkCmdSetViewportWScalingNV = cast[proc(commandBuffer: VkCommandBuffer, firstViewport: uint32, viewportCount: uint32, pViewportWScalings: ptr VkViewportWScalingNV): void {.stdcall.}](vkGetProc("vkCmdSetViewportWScalingNV"))

proc loadVK_EXT_direct_mode_display*() =
  ## Loads VK_EXT_direct_mode_display extension commands.
  vkReleaseDisplayEXT = cast[proc(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR): VkResult {.stdcall.}](vkGetProc("vkReleaseDisplayEXT"))

proc loadVK_EXT_acquire_xlib_display*() =
  ## Loads VK_EXT_acquire_xlib_display extension commands.
  vkAcquireXlibDisplayEXT = cast[proc(physicalDevice: VkPhysicalDevice, dpy: pointer, display: VkDisplayKHR): VkResult {.stdcall.}](vkGetProc("vkAcquireXlibDisplayEXT"))
  vkGetRandROutputDisplayEXT = cast[proc(physicalDevice: VkPhysicalDevice, dpy: pointer, rrOutput: uint64, pDisplay: ptr VkDisplayKHR): VkResult {.stdcall.}](vkGetProc("vkGetRandROutputDisplayEXT"))

proc loadVK_EXT_display_surface_counter*() =
  ## Loads VK_EXT_display_surface_counter extension commands.
  vkGetPhysicalDeviceSurfaceCapabilities2EXT = cast[proc(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceCapabilities: ptr VkSurfaceCapabilities2EXT): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSurfaceCapabilities2EXT"))

proc loadVK_EXT_display_control*() =
  ## Loads VK_EXT_display_control extension commands.
  vkDisplayPowerControlEXT = cast[proc(device: VkDevice, display: VkDisplayKHR, pDisplayPowerInfo: ptr VkDisplayPowerInfoEXT): VkResult {.stdcall.}](vkGetProc("vkDisplayPowerControlEXT"))
  vkRegisterDeviceEventEXT = cast[proc(device: VkDevice, pDeviceEventInfo: ptr VkDeviceEventInfoEXT, pAllocator: ptr VkAllocationCallbacks, pFence: ptr VkFence): VkResult {.stdcall.}](vkGetProc("vkRegisterDeviceEventEXT"))
  vkRegisterDisplayEventEXT = cast[proc(device: VkDevice, display: VkDisplayKHR, pDisplayEventInfo: ptr VkDisplayEventInfoEXT, pAllocator: ptr VkAllocationCallbacks, pFence: ptr VkFence): VkResult {.stdcall.}](vkGetProc("vkRegisterDisplayEventEXT"))
  vkGetSwapchainCounterEXT = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, counter: VkSurfaceCounterFlagBitsEXT, pCounterValue: ptr uint64): VkResult {.stdcall.}](vkGetProc("vkGetSwapchainCounterEXT"))

proc loadVK_GOOGLE_display_timing*() =
  ## Loads VK_GOOGLE_display_timing extension commands.
  vkGetRefreshCycleDurationGOOGLE = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, pDisplayTimingProperties: ptr VkRefreshCycleDurationGOOGLE): VkResult {.stdcall.}](vkGetProc("vkGetRefreshCycleDurationGOOGLE"))
  vkGetPastPresentationTimingGOOGLE = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, pPresentationTimingCount: ptr uint32, pPresentationTimings: ptr VkPastPresentationTimingGOOGLE): VkResult {.stdcall.}](vkGetProc("vkGetPastPresentationTimingGOOGLE"))

proc loadVK_EXT_discard_rectangles*() =
  ## Loads VK_EXT_discard_rectangles extension commands.
  vkCmdSetDiscardRectangleEXT = cast[proc(commandBuffer: VkCommandBuffer, firstDiscardRectangle: uint32, discardRectangleCount: uint32, pDiscardRectangles: ptr VkRect2D): void {.stdcall.}](vkGetProc("vkCmdSetDiscardRectangleEXT"))
  vkCmdSetDiscardRectangleEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, discardRectangleEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDiscardRectangleEnableEXT"))
  vkCmdSetDiscardRectangleModeEXT = cast[proc(commandBuffer: VkCommandBuffer, discardRectangleMode: VkDiscardRectangleModeEXT): void {.stdcall.}](vkGetProc("vkCmdSetDiscardRectangleModeEXT"))

proc loadVK_EXT_hdr_metadata*() =
  ## Loads VK_EXT_hdr_metadata extension commands.
  vkSetHdrMetadataEXT = cast[proc(device: VkDevice, swapchainCount: uint32, pSwapchains: ptr VkSwapchainKHR, pMetadata: ptr VkHdrMetadataEXT): void {.stdcall.}](vkGetProc("vkSetHdrMetadataEXT"))

proc loadVK_KHR_create_renderpass2*() =
  ## Loads VK_KHR_create_renderpass2 extension commands.
  vkCreateRenderPass2KHR = cast[proc(device: VkDevice, pCreateInfo: ptr VkRenderPassCreateInfo2, pAllocator: ptr VkAllocationCallbacks, pRenderPass: ptr VkRenderPass): VkResult {.stdcall.}](vkGetProc("vkCreateRenderPass2KHR"))
  vkCmdBeginRenderPass2KHR = cast[proc(commandBuffer: VkCommandBuffer, pRenderPassBegin: ptr VkRenderPassBeginInfo, pSubpassBeginInfo: ptr VkSubpassBeginInfo): void {.stdcall.}](vkGetProc("vkCmdBeginRenderPass2KHR"))
  vkCmdNextSubpass2KHR = cast[proc(commandBuffer: VkCommandBuffer, pSubpassBeginInfo: ptr VkSubpassBeginInfo, pSubpassEndInfo: ptr VkSubpassEndInfo): void {.stdcall.}](vkGetProc("vkCmdNextSubpass2KHR"))
  vkCmdEndRenderPass2KHR = cast[proc(commandBuffer: VkCommandBuffer, pSubpassEndInfo: ptr VkSubpassEndInfo): void {.stdcall.}](vkGetProc("vkCmdEndRenderPass2KHR"))

proc loadVK_KHR_shared_presentable_image*() =
  ## Loads VK_KHR_shared_presentable_image extension commands.
  vkGetSwapchainStatusKHR = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR): VkResult {.stdcall.}](vkGetProc("vkGetSwapchainStatusKHR"))

proc loadVK_KHR_external_fence_capabilities*() =
  ## Loads VK_KHR_external_fence_capabilities extension commands.
  vkGetPhysicalDeviceExternalFencePropertiesKHR = cast[proc(physicalDevice: VkPhysicalDevice, pExternalFenceInfo: ptr VkPhysicalDeviceExternalFenceInfo, pExternalFenceProperties: ptr VkExternalFenceProperties): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceExternalFencePropertiesKHR"))

proc loadVK_KHR_external_fence_win32*() =
  ## Loads VK_KHR_external_fence_win32 extension commands.
  vkImportFenceWin32HandleKHR = cast[proc(device: VkDevice, pImportFenceWin32HandleInfo: ptr VkImportFenceWin32HandleInfoKHR): VkResult {.stdcall.}](vkGetProc("vkImportFenceWin32HandleKHR"))
  vkGetFenceWin32HandleKHR = cast[proc(device: VkDevice, pGetWin32HandleInfo: ptr VkFenceGetWin32HandleInfoKHR, pHandle: pointer): VkResult {.stdcall.}](vkGetProc("vkGetFenceWin32HandleKHR"))

proc loadVK_KHR_external_fence_fd*() =
  ## Loads VK_KHR_external_fence_fd extension commands.
  vkImportFenceFdKHR = cast[proc(device: VkDevice, pImportFenceFdInfo: ptr VkImportFenceFdInfoKHR): VkResult {.stdcall.}](vkGetProc("vkImportFenceFdKHR"))
  vkGetFenceFdKHR = cast[proc(device: VkDevice, pGetFdInfo: ptr VkFenceGetFdInfoKHR, pFd: ptr int32): VkResult {.stdcall.}](vkGetProc("vkGetFenceFdKHR"))

proc loadVK_KHR_performance_query*() =
  ## Loads VK_KHR_performance_query extension commands.
  vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR = cast[proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, pCounterCount: ptr uint32, pCounters: ptr VkPerformanceCounterKHR, pCounterDescriptions: ptr VkPerformanceCounterDescriptionKHR): VkResult {.stdcall.}](vkGetProc("vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR"))
  vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR = cast[proc(physicalDevice: VkPhysicalDevice, pPerformanceQueryCreateInfo: ptr VkQueryPoolPerformanceCreateInfoKHR, pNumPasses: ptr uint32): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR"))
  vkAcquireProfilingLockKHR = cast[proc(device: VkDevice, pInfo: ptr VkAcquireProfilingLockInfoKHR): VkResult {.stdcall.}](vkGetProc("vkAcquireProfilingLockKHR"))
  vkReleaseProfilingLockKHR = cast[proc(device: VkDevice): void {.stdcall.}](vkGetProc("vkReleaseProfilingLockKHR"))

proc loadVK_KHR_get_surface_capabilities2*() =
  ## Loads VK_KHR_get_surface_capabilities2 extension commands.
  vkGetPhysicalDeviceSurfaceCapabilities2KHR = cast[proc(physicalDevice: VkPhysicalDevice, pSurfaceInfo: ptr VkPhysicalDeviceSurfaceInfo2KHR, pSurfaceCapabilities: ptr VkSurfaceCapabilities2KHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSurfaceCapabilities2KHR"))
  vkGetPhysicalDeviceSurfaceFormats2KHR = cast[proc(physicalDevice: VkPhysicalDevice, pSurfaceInfo: ptr VkPhysicalDeviceSurfaceInfo2KHR, pSurfaceFormatCount: ptr uint32, pSurfaceFormats: ptr VkSurfaceFormat2KHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSurfaceFormats2KHR"))

proc loadVK_KHR_get_display_properties2*() =
  ## Loads VK_KHR_get_display_properties2 extension commands.
  vkGetPhysicalDeviceDisplayProperties2KHR = cast[proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkDisplayProperties2KHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceDisplayProperties2KHR"))
  vkGetPhysicalDeviceDisplayPlaneProperties2KHR = cast[proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkDisplayPlaneProperties2KHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceDisplayPlaneProperties2KHR"))
  vkGetDisplayModeProperties2KHR = cast[proc(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pPropertyCount: ptr uint32, pProperties: ptr VkDisplayModeProperties2KHR): VkResult {.stdcall.}](vkGetProc("vkGetDisplayModeProperties2KHR"))
  vkGetDisplayPlaneCapabilities2KHR = cast[proc(physicalDevice: VkPhysicalDevice, pDisplayPlaneInfo: ptr VkDisplayPlaneInfo2KHR, pCapabilities: ptr VkDisplayPlaneCapabilities2KHR): VkResult {.stdcall.}](vkGetProc("vkGetDisplayPlaneCapabilities2KHR"))

proc loadVK_MVK_ios_surface*() =
  ## Loads VK_MVK_ios_surface extension commands.
  vkCreateIOSSurfaceMVK = cast[proc(instance: VkInstance, pCreateInfo: ptr VkIOSSurfaceCreateInfoMVK, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateIOSSurfaceMVK"))

proc loadVK_MVK_macos_surface*() =
  ## Loads VK_MVK_macos_surface extension commands.
  vkCreateMacOSSurfaceMVK = cast[proc(instance: VkInstance, pCreateInfo: ptr VkMacOSSurfaceCreateInfoMVK, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateMacOSSurfaceMVK"))

proc loadVK_EXT_debug_utils*() =
  ## Loads VK_EXT_debug_utils extension commands.
  vkSetDebugUtilsObjectNameEXT = cast[proc(device: VkDevice, pNameInfo: ptr VkDebugUtilsObjectNameInfoEXT): VkResult {.stdcall.}](vkGetProc("vkSetDebugUtilsObjectNameEXT"))
  vkSetDebugUtilsObjectTagEXT = cast[proc(device: VkDevice, pTagInfo: ptr VkDebugUtilsObjectTagInfoEXT): VkResult {.stdcall.}](vkGetProc("vkSetDebugUtilsObjectTagEXT"))
  vkQueueBeginDebugUtilsLabelEXT = cast[proc(queue: VkQueue, pLabelInfo: ptr VkDebugUtilsLabelEXT): void {.stdcall.}](vkGetProc("vkQueueBeginDebugUtilsLabelEXT"))
  vkQueueEndDebugUtilsLabelEXT = cast[proc(queue: VkQueue): void {.stdcall.}](vkGetProc("vkQueueEndDebugUtilsLabelEXT"))
  vkQueueInsertDebugUtilsLabelEXT = cast[proc(queue: VkQueue, pLabelInfo: ptr VkDebugUtilsLabelEXT): void {.stdcall.}](vkGetProc("vkQueueInsertDebugUtilsLabelEXT"))
  vkCmdBeginDebugUtilsLabelEXT = cast[proc(commandBuffer: VkCommandBuffer, pLabelInfo: ptr VkDebugUtilsLabelEXT): void {.stdcall.}](vkGetProc("vkCmdBeginDebugUtilsLabelEXT"))
  vkCmdEndDebugUtilsLabelEXT = cast[proc(commandBuffer: VkCommandBuffer): void {.stdcall.}](vkGetProc("vkCmdEndDebugUtilsLabelEXT"))
  vkCmdInsertDebugUtilsLabelEXT = cast[proc(commandBuffer: VkCommandBuffer, pLabelInfo: ptr VkDebugUtilsLabelEXT): void {.stdcall.}](vkGetProc("vkCmdInsertDebugUtilsLabelEXT"))
  vkCreateDebugUtilsMessengerEXT = cast[proc(instance: VkInstance, pCreateInfo: ptr VkDebugUtilsMessengerCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pMessenger: ptr VkDebugUtilsMessengerEXT): VkResult {.stdcall.}](vkGetProc("vkCreateDebugUtilsMessengerEXT"))
  vkDestroyDebugUtilsMessengerEXT = cast[proc(instance: VkInstance, messenger: VkDebugUtilsMessengerEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyDebugUtilsMessengerEXT"))
  vkSubmitDebugUtilsMessageEXT = cast[proc(instance: VkInstance, messageSeverity: VkDebugUtilsMessageSeverityFlagBitsEXT, messageTypes: VkDebugUtilsMessageTypeFlagsEXT, pCallbackData: ptr VkDebugUtilsMessengerCallbackDataEXT): void {.stdcall.}](vkGetProc("vkSubmitDebugUtilsMessageEXT"))

proc loadVK_ANDROID_external_memory_android_hardware_buffer*() =
  ## Loads VK_ANDROID_external_memory_android_hardware_buffer extension commands.
  vkGetAndroidHardwareBufferPropertiesANDROID = cast[proc(device: VkDevice, buffer: pointer, pProperties: ptr VkAndroidHardwareBufferPropertiesANDROID): VkResult {.stdcall.}](vkGetProc("vkGetAndroidHardwareBufferPropertiesANDROID"))
  vkGetMemoryAndroidHardwareBufferANDROID = cast[proc(device: VkDevice, pInfo: ptr VkMemoryGetAndroidHardwareBufferInfoANDROID, pBuffer: ptr pointer): VkResult {.stdcall.}](vkGetProc("vkGetMemoryAndroidHardwareBufferANDROID"))

proc loadVK_AMDX_shader_enqueue*() =
  ## Loads VK_AMDX_shader_enqueue extension commands.
  vkCreateExecutionGraphPipelinesAMDX = cast[proc(device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: uint32, pCreateInfos: ptr VkExecutionGraphPipelineCreateInfoAMDX, pAllocator: ptr VkAllocationCallbacks, pPipelines: ptr VkPipeline): VkResult {.stdcall.}](vkGetProc("vkCreateExecutionGraphPipelinesAMDX"))
  vkGetExecutionGraphPipelineScratchSizeAMDX = cast[proc(device: VkDevice, executionGraph: VkPipeline, pSizeInfo: ptr VkExecutionGraphPipelineScratchSizeAMDX): VkResult {.stdcall.}](vkGetProc("vkGetExecutionGraphPipelineScratchSizeAMDX"))
  vkGetExecutionGraphPipelineNodeIndexAMDX = cast[proc(device: VkDevice, executionGraph: VkPipeline, pNodeInfo: ptr VkPipelineShaderStageNodeCreateInfoAMDX, pNodeIndex: ptr uint32): VkResult {.stdcall.}](vkGetProc("vkGetExecutionGraphPipelineNodeIndexAMDX"))
  vkCmdInitializeGraphScratchMemoryAMDX = cast[proc(commandBuffer: VkCommandBuffer, executionGraph: VkPipeline, scratch: VkDeviceAddress, scratchSize: VkDeviceSize): void {.stdcall.}](vkGetProc("vkCmdInitializeGraphScratchMemoryAMDX"))
  vkCmdDispatchGraphAMDX = cast[proc(commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, pCountInfo: ptr VkDispatchGraphCountInfoAMDX): void {.stdcall.}](vkGetProc("vkCmdDispatchGraphAMDX"))
  vkCmdDispatchGraphIndirectAMDX = cast[proc(commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, pCountInfo: ptr VkDispatchGraphCountInfoAMDX): void {.stdcall.}](vkGetProc("vkCmdDispatchGraphIndirectAMDX"))
  vkCmdDispatchGraphIndirectCountAMDX = cast[proc(commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, countInfo: VkDeviceAddress): void {.stdcall.}](vkGetProc("vkCmdDispatchGraphIndirectCountAMDX"))

proc loadVK_EXT_descriptor_heap*() =
  ## Loads VK_EXT_descriptor_heap extension commands.
  vkWriteSamplerDescriptorsEXT = cast[proc(device: VkDevice, samplerCount: uint32, pSamplers: ptr VkSamplerCreateInfo, pDescriptors: ptr VkHostAddressRangeEXT): VkResult {.stdcall.}](vkGetProc("vkWriteSamplerDescriptorsEXT"))
  vkWriteResourceDescriptorsEXT = cast[proc(device: VkDevice, resourceCount: uint32, pResources: ptr VkResourceDescriptorInfoEXT, pDescriptors: ptr VkHostAddressRangeEXT): VkResult {.stdcall.}](vkGetProc("vkWriteResourceDescriptorsEXT"))
  vkCmdBindSamplerHeapEXT = cast[proc(commandBuffer: VkCommandBuffer, pBindInfo: ptr VkBindHeapInfoEXT): void {.stdcall.}](vkGetProc("vkCmdBindSamplerHeapEXT"))
  vkCmdBindResourceHeapEXT = cast[proc(commandBuffer: VkCommandBuffer, pBindInfo: ptr VkBindHeapInfoEXT): void {.stdcall.}](vkGetProc("vkCmdBindResourceHeapEXT"))
  vkCmdPushDataEXT = cast[proc(commandBuffer: VkCommandBuffer, pPushDataInfo: ptr VkPushDataInfoEXT): void {.stdcall.}](vkGetProc("vkCmdPushDataEXT"))
  vkGetImageOpaqueCaptureDataEXT = cast[proc(device: VkDevice, imageCount: uint32, pImages: ptr VkImage, pDatas: ptr VkHostAddressRangeEXT): VkResult {.stdcall.}](vkGetProc("vkGetImageOpaqueCaptureDataEXT"))
  vkGetPhysicalDeviceDescriptorSizeEXT = cast[proc(physicalDevice: VkPhysicalDevice, descriptorType: VkDescriptorType): VkDeviceSize {.stdcall.}](vkGetProc("vkGetPhysicalDeviceDescriptorSizeEXT"))
  vkRegisterCustomBorderColorEXT = cast[proc(device: VkDevice, pBorderColor: ptr VkSamplerCustomBorderColorCreateInfoEXT, requestIndex: VkBool32, pIndex: ptr uint32): VkResult {.stdcall.}](vkGetProc("vkRegisterCustomBorderColorEXT"))
  vkUnregisterCustomBorderColorEXT = cast[proc(device: VkDevice, index: uint32): void {.stdcall.}](vkGetProc("vkUnregisterCustomBorderColorEXT"))
  vkGetTensorOpaqueCaptureDataARM = cast[proc(device: VkDevice, tensorCount: uint32, pTensors: ptr VkTensorARM, pDatas: ptr VkHostAddressRangeEXT): VkResult {.stdcall.}](vkGetProc("vkGetTensorOpaqueCaptureDataARM"))

proc loadVK_EXT_sample_locations*() =
  ## Loads VK_EXT_sample_locations extension commands.
  vkCmdSetSampleLocationsEXT = cast[proc(commandBuffer: VkCommandBuffer, pSampleLocationsInfo: ptr VkSampleLocationsInfoEXT): void {.stdcall.}](vkGetProc("vkCmdSetSampleLocationsEXT"))
  vkGetPhysicalDeviceMultisamplePropertiesEXT = cast[proc(physicalDevice: VkPhysicalDevice, samples: VkSampleCountFlagBits, pMultisampleProperties: ptr VkMultisamplePropertiesEXT): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceMultisamplePropertiesEXT"))

proc loadVK_KHR_get_memory_requirements2*() =
  ## Loads VK_KHR_get_memory_requirements2 extension commands.
  vkGetImageMemoryRequirements2KHR = cast[proc(device: VkDevice, pInfo: ptr VkImageMemoryRequirementsInfo2, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetImageMemoryRequirements2KHR"))
  vkGetBufferMemoryRequirements2KHR = cast[proc(device: VkDevice, pInfo: ptr VkBufferMemoryRequirementsInfo2, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetBufferMemoryRequirements2KHR"))
  vkGetImageSparseMemoryRequirements2KHR = cast[proc(device: VkDevice, pInfo: ptr VkImageSparseMemoryRequirementsInfo2, pSparseMemoryRequirementCount: ptr uint32, pSparseMemoryRequirements: ptr VkSparseImageMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetImageSparseMemoryRequirements2KHR"))

proc loadVK_KHR_acceleration_structure*() =
  ## Loads VK_KHR_acceleration_structure extension commands.
  vkCreateAccelerationStructureKHR = cast[proc(device: VkDevice, pCreateInfo: ptr VkAccelerationStructureCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pAccelerationStructure: ptr VkAccelerationStructureKHR): VkResult {.stdcall.}](vkGetProc("vkCreateAccelerationStructureKHR"))
  vkDestroyAccelerationStructureKHR = cast[proc(device: VkDevice, accelerationStructure: VkAccelerationStructureKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyAccelerationStructureKHR"))
  vkCmdBuildAccelerationStructuresKHR = cast[proc(commandBuffer: VkCommandBuffer, infoCount: uint32, pInfos: ptr VkAccelerationStructureBuildGeometryInfoKHR, ppBuildRangeInfos: ptr ptr VkAccelerationStructureBuildRangeInfoKHR): void {.stdcall.}](vkGetProc("vkCmdBuildAccelerationStructuresKHR"))
  vkCmdBuildAccelerationStructuresIndirectKHR = cast[proc(commandBuffer: VkCommandBuffer, infoCount: uint32, pInfos: ptr VkAccelerationStructureBuildGeometryInfoKHR, pIndirectDeviceAddresses: ptr VkDeviceAddress, pIndirectStrides: ptr uint32, ppMaxPrimitiveCounts: ptr ptr uint32): void {.stdcall.}](vkGetProc("vkCmdBuildAccelerationStructuresIndirectKHR"))
  vkBuildAccelerationStructuresKHR = cast[proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, infoCount: uint32, pInfos: ptr VkAccelerationStructureBuildGeometryInfoKHR, ppBuildRangeInfos: ptr ptr VkAccelerationStructureBuildRangeInfoKHR): VkResult {.stdcall.}](vkGetProc("vkBuildAccelerationStructuresKHR"))
  vkCopyAccelerationStructureKHR = cast[proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: ptr VkCopyAccelerationStructureInfoKHR): VkResult {.stdcall.}](vkGetProc("vkCopyAccelerationStructureKHR"))
  vkCopyAccelerationStructureToMemoryKHR = cast[proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: ptr VkCopyAccelerationStructureToMemoryInfoKHR): VkResult {.stdcall.}](vkGetProc("vkCopyAccelerationStructureToMemoryKHR"))
  vkCopyMemoryToAccelerationStructureKHR = cast[proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: ptr VkCopyMemoryToAccelerationStructureInfoKHR): VkResult {.stdcall.}](vkGetProc("vkCopyMemoryToAccelerationStructureKHR"))
  vkWriteAccelerationStructuresPropertiesKHR = cast[proc(device: VkDevice, accelerationStructureCount: uint32, pAccelerationStructures: ptr VkAccelerationStructureKHR, queryType: VkQueryType, dataSize: csize_t, pData: pointer, stride: csize_t): VkResult {.stdcall.}](vkGetProc("vkWriteAccelerationStructuresPropertiesKHR"))
  vkCmdCopyAccelerationStructureKHR = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkCopyAccelerationStructureInfoKHR): void {.stdcall.}](vkGetProc("vkCmdCopyAccelerationStructureKHR"))
  vkCmdCopyAccelerationStructureToMemoryKHR = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkCopyAccelerationStructureToMemoryInfoKHR): void {.stdcall.}](vkGetProc("vkCmdCopyAccelerationStructureToMemoryKHR"))
  vkCmdCopyMemoryToAccelerationStructureKHR = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkCopyMemoryToAccelerationStructureInfoKHR): void {.stdcall.}](vkGetProc("vkCmdCopyMemoryToAccelerationStructureKHR"))
  vkGetAccelerationStructureDeviceAddressKHR = cast[proc(device: VkDevice, pInfo: ptr VkAccelerationStructureDeviceAddressInfoKHR): VkDeviceAddress {.stdcall.}](vkGetProc("vkGetAccelerationStructureDeviceAddressKHR"))
  vkCmdWriteAccelerationStructuresPropertiesKHR = cast[proc(commandBuffer: VkCommandBuffer, accelerationStructureCount: uint32, pAccelerationStructures: ptr VkAccelerationStructureKHR, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: uint32): void {.stdcall.}](vkGetProc("vkCmdWriteAccelerationStructuresPropertiesKHR"))
  vkGetDeviceAccelerationStructureCompatibilityKHR = cast[proc(device: VkDevice, pVersionInfo: ptr VkAccelerationStructureVersionInfoKHR, pCompatibility: ptr VkAccelerationStructureCompatibilityKHR): void {.stdcall.}](vkGetProc("vkGetDeviceAccelerationStructureCompatibilityKHR"))
  vkGetAccelerationStructureBuildSizesKHR = cast[proc(device: VkDevice, buildType: VkAccelerationStructureBuildTypeKHR, pBuildInfo: ptr VkAccelerationStructureBuildGeometryInfoKHR, pMaxPrimitiveCounts: ptr uint32, pSizeInfo: ptr VkAccelerationStructureBuildSizesInfoKHR): void {.stdcall.}](vkGetProc("vkGetAccelerationStructureBuildSizesKHR"))

proc loadVK_KHR_ray_tracing_pipeline*() =
  ## Loads VK_KHR_ray_tracing_pipeline extension commands.
  vkCmdTraceRaysKHR = cast[proc(commandBuffer: VkCommandBuffer, pRaygenShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, pMissShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, pHitShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, pCallableShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, width: uint32, height: uint32, depth: uint32): void {.stdcall.}](vkGetProc("vkCmdTraceRaysKHR"))
  vkCreateRayTracingPipelinesKHR = cast[proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pipelineCache: VkPipelineCache, createInfoCount: uint32, pCreateInfos: ptr VkRayTracingPipelineCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pPipelines: ptr VkPipeline): VkResult {.stdcall.}](vkGetProc("vkCreateRayTracingPipelinesKHR"))
  vkGetRayTracingShaderGroupHandlesKHR = cast[proc(device: VkDevice, pipeline: VkPipeline, firstGroup: uint32, groupCount: uint32, dataSize: csize_t, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetRayTracingShaderGroupHandlesKHR"))
  vkGetRayTracingCaptureReplayShaderGroupHandlesKHR = cast[proc(device: VkDevice, pipeline: VkPipeline, firstGroup: uint32, groupCount: uint32, dataSize: csize_t, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetRayTracingCaptureReplayShaderGroupHandlesKHR"))
  vkCmdTraceRaysIndirectKHR = cast[proc(commandBuffer: VkCommandBuffer, pRaygenShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, pMissShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, pHitShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, pCallableShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, indirectDeviceAddress: VkDeviceAddress): void {.stdcall.}](vkGetProc("vkCmdTraceRaysIndirectKHR"))
  vkGetRayTracingShaderGroupStackSizeKHR = cast[proc(device: VkDevice, pipeline: VkPipeline, group: uint32, groupShader: VkShaderGroupShaderKHR): VkDeviceSize {.stdcall.}](vkGetProc("vkGetRayTracingShaderGroupStackSizeKHR"))
  vkCmdSetRayTracingPipelineStackSizeKHR = cast[proc(commandBuffer: VkCommandBuffer, pipelineStackSize: uint32): void {.stdcall.}](vkGetProc("vkCmdSetRayTracingPipelineStackSizeKHR"))

proc loadVK_KHR_sampler_ycbcr_conversion*() =
  ## Loads VK_KHR_sampler_ycbcr_conversion extension commands.
  vkCreateSamplerYcbcrConversionKHR = cast[proc(device: VkDevice, pCreateInfo: ptr VkSamplerYcbcrConversionCreateInfo, pAllocator: ptr VkAllocationCallbacks, pYcbcrConversion: ptr VkSamplerYcbcrConversion): VkResult {.stdcall.}](vkGetProc("vkCreateSamplerYcbcrConversionKHR"))
  vkDestroySamplerYcbcrConversionKHR = cast[proc(device: VkDevice, ycbcrConversion: VkSamplerYcbcrConversion, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroySamplerYcbcrConversionKHR"))

proc loadVK_KHR_bind_memory2*() =
  ## Loads VK_KHR_bind_memory2 extension commands.
  vkBindBufferMemory2KHR = cast[proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindBufferMemoryInfo): VkResult {.stdcall.}](vkGetProc("vkBindBufferMemory2KHR"))
  vkBindImageMemory2KHR = cast[proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindImageMemoryInfo): VkResult {.stdcall.}](vkGetProc("vkBindImageMemory2KHR"))

proc loadVK_EXT_image_drm_format_modifier*() =
  ## Loads VK_EXT_image_drm_format_modifier extension commands.
  vkGetImageDrmFormatModifierPropertiesEXT = cast[proc(device: VkDevice, image: VkImage, pProperties: ptr VkImageDrmFormatModifierPropertiesEXT): VkResult {.stdcall.}](vkGetProc("vkGetImageDrmFormatModifierPropertiesEXT"))

proc loadVK_EXT_validation_cache*() =
  ## Loads VK_EXT_validation_cache extension commands.
  vkCreateValidationCacheEXT = cast[proc(device: VkDevice, pCreateInfo: ptr VkValidationCacheCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pValidationCache: ptr VkValidationCacheEXT): VkResult {.stdcall.}](vkGetProc("vkCreateValidationCacheEXT"))
  vkDestroyValidationCacheEXT = cast[proc(device: VkDevice, validationCache: VkValidationCacheEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyValidationCacheEXT"))
  vkMergeValidationCachesEXT = cast[proc(device: VkDevice, dstCache: VkValidationCacheEXT, srcCacheCount: uint32, pSrcCaches: ptr VkValidationCacheEXT): VkResult {.stdcall.}](vkGetProc("vkMergeValidationCachesEXT"))
  vkGetValidationCacheDataEXT = cast[proc(device: VkDevice, validationCache: VkValidationCacheEXT, pDataSize: ptr csize_t, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetValidationCacheDataEXT"))

proc loadVK_NV_shading_rate_image*() =
  ## Loads VK_NV_shading_rate_image extension commands.
  vkCmdBindShadingRateImageNV = cast[proc(commandBuffer: VkCommandBuffer, imageView: VkImageView, imageLayout: VkImageLayout): void {.stdcall.}](vkGetProc("vkCmdBindShadingRateImageNV"))
  vkCmdSetViewportShadingRatePaletteNV = cast[proc(commandBuffer: VkCommandBuffer, firstViewport: uint32, viewportCount: uint32, pShadingRatePalettes: ptr VkShadingRatePaletteNV): void {.stdcall.}](vkGetProc("vkCmdSetViewportShadingRatePaletteNV"))
  vkCmdSetCoarseSampleOrderNV = cast[proc(commandBuffer: VkCommandBuffer, sampleOrderType: VkCoarseSampleOrderTypeNV, customSampleOrderCount: uint32, pCustomSampleOrders: ptr VkCoarseSampleOrderCustomNV): void {.stdcall.}](vkGetProc("vkCmdSetCoarseSampleOrderNV"))

proc loadVK_NV_ray_tracing*() =
  ## Loads VK_NV_ray_tracing extension commands.
  vkCreateAccelerationStructureNV = cast[proc(device: VkDevice, pCreateInfo: ptr VkAccelerationStructureCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pAccelerationStructure: ptr VkAccelerationStructureNV): VkResult {.stdcall.}](vkGetProc("vkCreateAccelerationStructureNV"))
  vkDestroyAccelerationStructureNV = cast[proc(device: VkDevice, accelerationStructure: VkAccelerationStructureNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyAccelerationStructureNV"))
  vkGetAccelerationStructureMemoryRequirementsNV = cast[proc(device: VkDevice, pInfo: ptr VkAccelerationStructureMemoryRequirementsInfoNV, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetAccelerationStructureMemoryRequirementsNV"))
  vkBindAccelerationStructureMemoryNV = cast[proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindAccelerationStructureMemoryInfoNV): VkResult {.stdcall.}](vkGetProc("vkBindAccelerationStructureMemoryNV"))
  vkCmdBuildAccelerationStructureNV = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkAccelerationStructureInfoNV, instanceData: VkBuffer, instanceOffset: VkDeviceSize, update: VkBool32, dst: VkAccelerationStructureNV, src: VkAccelerationStructureNV, scratch: VkBuffer, scratchOffset: VkDeviceSize): void {.stdcall.}](vkGetProc("vkCmdBuildAccelerationStructureNV"))
  vkCmdCopyAccelerationStructureNV = cast[proc(commandBuffer: VkCommandBuffer, dst: VkAccelerationStructureNV, src: VkAccelerationStructureNV, mode: VkCopyAccelerationStructureModeKHR): void {.stdcall.}](vkGetProc("vkCmdCopyAccelerationStructureNV"))
  vkCmdTraceRaysNV = cast[proc(commandBuffer: VkCommandBuffer, raygenShaderBindingTableBuffer: VkBuffer, raygenShaderBindingOffset: VkDeviceSize, missShaderBindingTableBuffer: VkBuffer, missShaderBindingOffset: VkDeviceSize, missShaderBindingStride: VkDeviceSize, hitShaderBindingTableBuffer: VkBuffer, hitShaderBindingOffset: VkDeviceSize, hitShaderBindingStride: VkDeviceSize, callableShaderBindingTableBuffer: VkBuffer, callableShaderBindingOffset: VkDeviceSize, callableShaderBindingStride: VkDeviceSize, width: uint32, height: uint32, depth: uint32): void {.stdcall.}](vkGetProc("vkCmdTraceRaysNV"))
  vkCreateRayTracingPipelinesNV = cast[proc(device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: uint32, pCreateInfos: ptr VkRayTracingPipelineCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pPipelines: ptr VkPipeline): VkResult {.stdcall.}](vkGetProc("vkCreateRayTracingPipelinesNV"))
  vkGetRayTracingShaderGroupHandlesNV = cast[proc(device: VkDevice, pipeline: VkPipeline, firstGroup: uint32, groupCount: uint32, dataSize: csize_t, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetRayTracingShaderGroupHandlesNV"))
  vkGetAccelerationStructureHandleNV = cast[proc(device: VkDevice, accelerationStructure: VkAccelerationStructureNV, dataSize: csize_t, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetAccelerationStructureHandleNV"))
  vkCmdWriteAccelerationStructuresPropertiesNV = cast[proc(commandBuffer: VkCommandBuffer, accelerationStructureCount: uint32, pAccelerationStructures: ptr VkAccelerationStructureNV, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: uint32): void {.stdcall.}](vkGetProc("vkCmdWriteAccelerationStructuresPropertiesNV"))
  vkCompileDeferredNV = cast[proc(device: VkDevice, pipeline: VkPipeline, shader: uint32): VkResult {.stdcall.}](vkGetProc("vkCompileDeferredNV"))

proc loadVK_KHR_maintenance3*() =
  ## Loads VK_KHR_maintenance3 extension commands.
  vkGetDescriptorSetLayoutSupportKHR = cast[proc(device: VkDevice, pCreateInfo: ptr VkDescriptorSetLayoutCreateInfo, pSupport: ptr VkDescriptorSetLayoutSupport): void {.stdcall.}](vkGetProc("vkGetDescriptorSetLayoutSupportKHR"))

proc loadVK_KHR_draw_indirect_count*() =
  ## Loads VK_KHR_draw_indirect_count extension commands.
  vkCmdDrawIndirectCountKHR = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawIndirectCountKHR"))
  vkCmdDrawIndexedIndirectCountKHR = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawIndexedIndirectCountKHR"))

proc loadVK_EXT_external_memory_host*() =
  ## Loads VK_EXT_external_memory_host extension commands.
  vkGetMemoryHostPointerPropertiesEXT = cast[proc(device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, pHostPointer: pointer, pMemoryHostPointerProperties: ptr VkMemoryHostPointerPropertiesEXT): VkResult {.stdcall.}](vkGetProc("vkGetMemoryHostPointerPropertiesEXT"))

proc loadVK_AMD_buffer_marker*() =
  ## Loads VK_AMD_buffer_marker extension commands.
  vkCmdWriteBufferMarkerAMD = cast[proc(commandBuffer: VkCommandBuffer, pipelineStage: VkPipelineStageFlagBits, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, marker: uint32): void {.stdcall.}](vkGetProc("vkCmdWriteBufferMarkerAMD"))
  vkCmdWriteBufferMarker2AMD = cast[proc(commandBuffer: VkCommandBuffer, stage: VkPipelineStageFlags2, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, marker: uint32): void {.stdcall.}](vkGetProc("vkCmdWriteBufferMarker2AMD"))

proc loadVK_EXT_calibrated_timestamps*() =
  ## Loads VK_EXT_calibrated_timestamps extension commands.
  vkGetPhysicalDeviceCalibrateableTimeDomainsEXT = cast[proc(physicalDevice: VkPhysicalDevice, pTimeDomainCount: ptr uint32, pTimeDomains: ptr VkTimeDomainKHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceCalibrateableTimeDomainsEXT"))
  vkGetCalibratedTimestampsEXT = cast[proc(device: VkDevice, timestampCount: uint32, pTimestampInfos: ptr VkCalibratedTimestampInfoKHR, pTimestamps: ptr uint64, pMaxDeviation: ptr uint64): VkResult {.stdcall.}](vkGetProc("vkGetCalibratedTimestampsEXT"))

proc loadVK_NV_mesh_shader*() =
  ## Loads VK_NV_mesh_shader extension commands.
  vkCmdDrawMeshTasksNV = cast[proc(commandBuffer: VkCommandBuffer, taskCount: uint32, firstTask: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawMeshTasksNV"))
  vkCmdDrawMeshTasksIndirectNV = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawMeshTasksIndirectNV"))
  vkCmdDrawMeshTasksIndirectCountNV = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawMeshTasksIndirectCountNV"))

proc loadVK_NV_scissor_exclusive*() =
  ## Loads VK_NV_scissor_exclusive extension commands.
  vkCmdSetExclusiveScissorEnableNV = cast[proc(commandBuffer: VkCommandBuffer, firstExclusiveScissor: uint32, exclusiveScissorCount: uint32, pExclusiveScissorEnables: ptr VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetExclusiveScissorEnableNV"))
  vkCmdSetExclusiveScissorNV = cast[proc(commandBuffer: VkCommandBuffer, firstExclusiveScissor: uint32, exclusiveScissorCount: uint32, pExclusiveScissors: ptr VkRect2D): void {.stdcall.}](vkGetProc("vkCmdSetExclusiveScissorNV"))

proc loadVK_NV_device_diagnostic_checkpoints*() =
  ## Loads VK_NV_device_diagnostic_checkpoints extension commands.
  vkCmdSetCheckpointNV = cast[proc(commandBuffer: VkCommandBuffer, pCheckpointMarker: pointer): void {.stdcall.}](vkGetProc("vkCmdSetCheckpointNV"))
  vkGetQueueCheckpointDataNV = cast[proc(queue: VkQueue, pCheckpointDataCount: ptr uint32, pCheckpointData: ptr VkCheckpointDataNV): void {.stdcall.}](vkGetProc("vkGetQueueCheckpointDataNV"))
  vkGetQueueCheckpointData2NV = cast[proc(queue: VkQueue, pCheckpointDataCount: ptr uint32, pCheckpointData: ptr VkCheckpointData2NV): void {.stdcall.}](vkGetProc("vkGetQueueCheckpointData2NV"))

proc loadVK_KHR_timeline_semaphore*() =
  ## Loads VK_KHR_timeline_semaphore extension commands.
  vkGetSemaphoreCounterValueKHR = cast[proc(device: VkDevice, semaphore: VkSemaphore, pValue: ptr uint64): VkResult {.stdcall.}](vkGetProc("vkGetSemaphoreCounterValueKHR"))
  vkWaitSemaphoresKHR = cast[proc(device: VkDevice, pWaitInfo: ptr VkSemaphoreWaitInfo, timeout: uint64): VkResult {.stdcall.}](vkGetProc("vkWaitSemaphoresKHR"))
  vkSignalSemaphoreKHR = cast[proc(device: VkDevice, pSignalInfo: ptr VkSemaphoreSignalInfo): VkResult {.stdcall.}](vkGetProc("vkSignalSemaphoreKHR"))

proc loadVK_EXT_present_timing*() =
  ## Loads VK_EXT_present_timing extension commands.
  vkSetSwapchainPresentTimingQueueSizeEXT = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, size: uint32): VkResult {.stdcall.}](vkGetProc("vkSetSwapchainPresentTimingQueueSizeEXT"))
  vkGetSwapchainTimingPropertiesEXT = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainTimingProperties: ptr VkSwapchainTimingPropertiesEXT, pSwapchainTimingPropertiesCounter: ptr uint64): VkResult {.stdcall.}](vkGetProc("vkGetSwapchainTimingPropertiesEXT"))
  vkGetSwapchainTimeDomainPropertiesEXT = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainTimeDomainProperties: ptr VkSwapchainTimeDomainPropertiesEXT, pTimeDomainsCounter: ptr uint64): VkResult {.stdcall.}](vkGetProc("vkGetSwapchainTimeDomainPropertiesEXT"))
  vkGetPastPresentationTimingEXT = cast[proc(device: VkDevice, pPastPresentationTimingInfo: ptr VkPastPresentationTimingInfoEXT, pPastPresentationTimingProperties: ptr VkPastPresentationTimingPropertiesEXT): VkResult {.stdcall.}](vkGetProc("vkGetPastPresentationTimingEXT"))

proc loadVK_INTEL_performance_query*() =
  ## Loads VK_INTEL_performance_query extension commands.
  vkInitializePerformanceApiINTEL = cast[proc(device: VkDevice, pInitializeInfo: ptr VkInitializePerformanceApiInfoINTEL): VkResult {.stdcall.}](vkGetProc("vkInitializePerformanceApiINTEL"))
  vkUninitializePerformanceApiINTEL = cast[proc(device: VkDevice): void {.stdcall.}](vkGetProc("vkUninitializePerformanceApiINTEL"))
  vkCmdSetPerformanceMarkerINTEL = cast[proc(commandBuffer: VkCommandBuffer, pMarkerInfo: ptr VkPerformanceMarkerInfoINTEL): VkResult {.stdcall.}](vkGetProc("vkCmdSetPerformanceMarkerINTEL"))
  vkCmdSetPerformanceStreamMarkerINTEL = cast[proc(commandBuffer: VkCommandBuffer, pMarkerInfo: ptr VkPerformanceStreamMarkerInfoINTEL): VkResult {.stdcall.}](vkGetProc("vkCmdSetPerformanceStreamMarkerINTEL"))
  vkCmdSetPerformanceOverrideINTEL = cast[proc(commandBuffer: VkCommandBuffer, pOverrideInfo: ptr VkPerformanceOverrideInfoINTEL): VkResult {.stdcall.}](vkGetProc("vkCmdSetPerformanceOverrideINTEL"))
  vkAcquirePerformanceConfigurationINTEL = cast[proc(device: VkDevice, pAcquireInfo: ptr VkPerformanceConfigurationAcquireInfoINTEL, pConfiguration: ptr VkPerformanceConfigurationINTEL): VkResult {.stdcall.}](vkGetProc("vkAcquirePerformanceConfigurationINTEL"))
  vkReleasePerformanceConfigurationINTEL = cast[proc(device: VkDevice, configuration: VkPerformanceConfigurationINTEL): VkResult {.stdcall.}](vkGetProc("vkReleasePerformanceConfigurationINTEL"))
  vkQueueSetPerformanceConfigurationINTEL = cast[proc(queue: VkQueue, configuration: VkPerformanceConfigurationINTEL): VkResult {.stdcall.}](vkGetProc("vkQueueSetPerformanceConfigurationINTEL"))
  vkGetPerformanceParameterINTEL = cast[proc(device: VkDevice, parameter: VkPerformanceParameterTypeINTEL, pValue: ptr VkPerformanceValueINTEL): VkResult {.stdcall.}](vkGetProc("vkGetPerformanceParameterINTEL"))

proc loadVK_AMD_display_native_hdr*() =
  ## Loads VK_AMD_display_native_hdr extension commands.
  vkSetLocalDimmingAMD = cast[proc(device: VkDevice, swapChain: VkSwapchainKHR, localDimmingEnable: VkBool32): void {.stdcall.}](vkGetProc("vkSetLocalDimmingAMD"))

proc loadVK_FUCHSIA_imagepipe_surface*() =
  ## Loads VK_FUCHSIA_imagepipe_surface extension commands.
  vkCreateImagePipeSurfaceFUCHSIA = cast[proc(instance: VkInstance, pCreateInfo: ptr VkImagePipeSurfaceCreateInfoFUCHSIA, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateImagePipeSurfaceFUCHSIA"))

proc loadVK_EXT_metal_surface*() =
  ## Loads VK_EXT_metal_surface extension commands.
  vkCreateMetalSurfaceEXT = cast[proc(instance: VkInstance, pCreateInfo: ptr VkMetalSurfaceCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateMetalSurfaceEXT"))

proc loadVK_KHR_fragment_shading_rate*() =
  ## Loads VK_KHR_fragment_shading_rate extension commands.
  vkGetPhysicalDeviceFragmentShadingRatesKHR = cast[proc(physicalDevice: VkPhysicalDevice, pFragmentShadingRateCount: ptr uint32, pFragmentShadingRates: ptr VkPhysicalDeviceFragmentShadingRateKHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceFragmentShadingRatesKHR"))
  vkCmdSetFragmentShadingRateKHR = cast[proc(commandBuffer: VkCommandBuffer, pFragmentSize: ptr VkExtent2D, combinerOps: array[2, VkFragmentShadingRateCombinerOpKHR]): void {.stdcall.}](vkGetProc("vkCmdSetFragmentShadingRateKHR"))

proc loadVK_KHR_dynamic_rendering_local_read*() =
  ## Loads VK_KHR_dynamic_rendering_local_read extension commands.
  vkCmdSetRenderingAttachmentLocationsKHR = cast[proc(commandBuffer: VkCommandBuffer, pLocationInfo: ptr VkRenderingAttachmentLocationInfo): void {.stdcall.}](vkGetProc("vkCmdSetRenderingAttachmentLocationsKHR"))
  vkCmdSetRenderingInputAttachmentIndicesKHR = cast[proc(commandBuffer: VkCommandBuffer, pInputAttachmentIndexInfo: ptr VkRenderingInputAttachmentIndexInfo): void {.stdcall.}](vkGetProc("vkCmdSetRenderingInputAttachmentIndicesKHR"))

proc loadVK_EXT_buffer_device_address*() =
  ## Loads VK_EXT_buffer_device_address extension commands.
  vkGetBufferDeviceAddressEXT = cast[proc(device: VkDevice, pInfo: ptr VkBufferDeviceAddressInfo): VkDeviceAddress {.stdcall.}](vkGetProc("vkGetBufferDeviceAddressEXT"))

proc loadVK_EXT_tooling_info*() =
  ## Loads VK_EXT_tooling_info extension commands.
  vkGetPhysicalDeviceToolPropertiesEXT = cast[proc(physicalDevice: VkPhysicalDevice, pToolCount: ptr uint32, pToolProperties: ptr VkPhysicalDeviceToolProperties): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceToolPropertiesEXT"))

proc loadVK_KHR_present_wait*() =
  ## Loads VK_KHR_present_wait extension commands.
  vkWaitForPresentKHR = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, presentId: uint64, timeout: uint64): VkResult {.stdcall.}](vkGetProc("vkWaitForPresentKHR"))

proc loadVK_NV_cooperative_matrix*() =
  ## Loads VK_NV_cooperative_matrix extension commands.
  vkGetPhysicalDeviceCooperativeMatrixPropertiesNV = cast[proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkCooperativeMatrixPropertiesNV): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceCooperativeMatrixPropertiesNV"))

proc loadVK_NV_coverage_reduction_mode*() =
  ## Loads VK_NV_coverage_reduction_mode extension commands.
  vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV = cast[proc(physicalDevice: VkPhysicalDevice, pCombinationCount: ptr uint32, pCombinations: ptr VkFramebufferMixedSamplesCombinationNV): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV"))

proc loadVK_EXT_full_screen_exclusive*() =
  ## Loads VK_EXT_full_screen_exclusive extension commands.
  vkGetPhysicalDeviceSurfacePresentModes2EXT = cast[proc(physicalDevice: VkPhysicalDevice, pSurfaceInfo: ptr VkPhysicalDeviceSurfaceInfo2KHR, pPresentModeCount: ptr uint32, pPresentModes: ptr VkPresentModeKHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSurfacePresentModes2EXT"))
  vkAcquireFullScreenExclusiveModeEXT = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR): VkResult {.stdcall.}](vkGetProc("vkAcquireFullScreenExclusiveModeEXT"))
  vkReleaseFullScreenExclusiveModeEXT = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR): VkResult {.stdcall.}](vkGetProc("vkReleaseFullScreenExclusiveModeEXT"))
  vkGetDeviceGroupSurfacePresentModes2EXT = cast[proc(device: VkDevice, pSurfaceInfo: ptr VkPhysicalDeviceSurfaceInfo2KHR, pModes: ptr VkDeviceGroupPresentModeFlagsKHR): VkResult {.stdcall.}](vkGetProc("vkGetDeviceGroupSurfacePresentModes2EXT"))

proc loadVK_EXT_headless_surface*() =
  ## Loads VK_EXT_headless_surface extension commands.
  vkCreateHeadlessSurfaceEXT = cast[proc(instance: VkInstance, pCreateInfo: ptr VkHeadlessSurfaceCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateHeadlessSurfaceEXT"))

proc loadVK_KHR_buffer_device_address*() =
  ## Loads VK_KHR_buffer_device_address extension commands.
  vkGetBufferDeviceAddressKHR = cast[proc(device: VkDevice, pInfo: ptr VkBufferDeviceAddressInfo): VkDeviceAddress {.stdcall.}](vkGetProc("vkGetBufferDeviceAddressKHR"))
  vkGetBufferOpaqueCaptureAddressKHR = cast[proc(device: VkDevice, pInfo: ptr VkBufferDeviceAddressInfo): uint64 {.stdcall.}](vkGetProc("vkGetBufferOpaqueCaptureAddressKHR"))
  vkGetDeviceMemoryOpaqueCaptureAddressKHR = cast[proc(device: VkDevice, pInfo: ptr VkDeviceMemoryOpaqueCaptureAddressInfo): uint64 {.stdcall.}](vkGetProc("vkGetDeviceMemoryOpaqueCaptureAddressKHR"))

proc loadVK_EXT_line_rasterization*() =
  ## Loads VK_EXT_line_rasterization extension commands.
  vkCmdSetLineStippleEXT = cast[proc(commandBuffer: VkCommandBuffer, lineStippleFactor: uint32, lineStipplePattern: uint16): void {.stdcall.}](vkGetProc("vkCmdSetLineStippleEXT"))

proc loadVK_EXT_host_query_reset*() =
  ## Loads VK_EXT_host_query_reset extension commands.
  vkResetQueryPoolEXT = cast[proc(device: VkDevice, queryPool: VkQueryPool, firstQuery: uint32, queryCount: uint32): void {.stdcall.}](vkGetProc("vkResetQueryPoolEXT"))

proc loadVK_EXT_extended_dynamic_state*() =
  ## Loads VK_EXT_extended_dynamic_state extension commands.
  vkCmdSetCullModeEXT = cast[proc(commandBuffer: VkCommandBuffer, cullMode: VkCullModeFlags): void {.stdcall.}](vkGetProc("vkCmdSetCullModeEXT"))
  vkCmdSetFrontFaceEXT = cast[proc(commandBuffer: VkCommandBuffer, frontFace: VkFrontFace): void {.stdcall.}](vkGetProc("vkCmdSetFrontFaceEXT"))
  vkCmdSetPrimitiveTopologyEXT = cast[proc(commandBuffer: VkCommandBuffer, primitiveTopology: VkPrimitiveTopology): void {.stdcall.}](vkGetProc("vkCmdSetPrimitiveTopologyEXT"))
  vkCmdSetViewportWithCountEXT = cast[proc(commandBuffer: VkCommandBuffer, viewportCount: uint32, pViewports: ptr VkViewport): void {.stdcall.}](vkGetProc("vkCmdSetViewportWithCountEXT"))
  vkCmdSetScissorWithCountEXT = cast[proc(commandBuffer: VkCommandBuffer, scissorCount: uint32, pScissors: ptr VkRect2D): void {.stdcall.}](vkGetProc("vkCmdSetScissorWithCountEXT"))
  vkCmdBindVertexBuffers2EXT = cast[proc(commandBuffer: VkCommandBuffer, firstBinding: uint32, bindingCount: uint32, pBuffers: ptr VkBuffer, pOffsets: ptr VkDeviceSize, pSizes: ptr VkDeviceSize, pStrides: ptr VkDeviceSize): void {.stdcall.}](vkGetProc("vkCmdBindVertexBuffers2EXT"))
  vkCmdSetDepthTestEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, depthTestEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthTestEnableEXT"))
  vkCmdSetDepthWriteEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, depthWriteEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthWriteEnableEXT"))
  vkCmdSetDepthCompareOpEXT = cast[proc(commandBuffer: VkCommandBuffer, depthCompareOp: VkCompareOp): void {.stdcall.}](vkGetProc("vkCmdSetDepthCompareOpEXT"))
  vkCmdSetDepthBoundsTestEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, depthBoundsTestEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthBoundsTestEnableEXT"))
  vkCmdSetStencilTestEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, stencilTestEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetStencilTestEnableEXT"))
  vkCmdSetStencilOpEXT = cast[proc(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, failOp: VkStencilOp, passOp: VkStencilOp, depthFailOp: VkStencilOp, compareOp: VkCompareOp): void {.stdcall.}](vkGetProc("vkCmdSetStencilOpEXT"))

proc loadVK_KHR_deferred_host_operations*() =
  ## Loads VK_KHR_deferred_host_operations extension commands.
  vkCreateDeferredOperationKHR = cast[proc(device: VkDevice, pAllocator: ptr VkAllocationCallbacks, pDeferredOperation: ptr VkDeferredOperationKHR): VkResult {.stdcall.}](vkGetProc("vkCreateDeferredOperationKHR"))
  vkDestroyDeferredOperationKHR = cast[proc(device: VkDevice, operation: VkDeferredOperationKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyDeferredOperationKHR"))
  vkGetDeferredOperationMaxConcurrencyKHR = cast[proc(device: VkDevice, operation: VkDeferredOperationKHR): uint32 {.stdcall.}](vkGetProc("vkGetDeferredOperationMaxConcurrencyKHR"))
  vkGetDeferredOperationResultKHR = cast[proc(device: VkDevice, operation: VkDeferredOperationKHR): VkResult {.stdcall.}](vkGetProc("vkGetDeferredOperationResultKHR"))
  vkDeferredOperationJoinKHR = cast[proc(device: VkDevice, operation: VkDeferredOperationKHR): VkResult {.stdcall.}](vkGetProc("vkDeferredOperationJoinKHR"))

proc loadVK_KHR_pipeline_executable_properties*() =
  ## Loads VK_KHR_pipeline_executable_properties extension commands.
  vkGetPipelineExecutablePropertiesKHR = cast[proc(device: VkDevice, pPipelineInfo: ptr VkPipelineInfoKHR, pExecutableCount: ptr uint32, pProperties: ptr VkPipelineExecutablePropertiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetPipelineExecutablePropertiesKHR"))
  vkGetPipelineExecutableStatisticsKHR = cast[proc(device: VkDevice, pExecutableInfo: ptr VkPipelineExecutableInfoKHR, pStatisticCount: ptr uint32, pStatistics: ptr VkPipelineExecutableStatisticKHR): VkResult {.stdcall.}](vkGetProc("vkGetPipelineExecutableStatisticsKHR"))
  vkGetPipelineExecutableInternalRepresentationsKHR = cast[proc(device: VkDevice, pExecutableInfo: ptr VkPipelineExecutableInfoKHR, pInternalRepresentationCount: ptr uint32, pInternalRepresentations: ptr VkPipelineExecutableInternalRepresentationKHR): VkResult {.stdcall.}](vkGetProc("vkGetPipelineExecutableInternalRepresentationsKHR"))

proc loadVK_EXT_host_image_copy*() =
  ## Loads VK_EXT_host_image_copy extension commands.
  vkCopyMemoryToImageEXT = cast[proc(device: VkDevice, pCopyMemoryToImageInfo: ptr VkCopyMemoryToImageInfo): VkResult {.stdcall.}](vkGetProc("vkCopyMemoryToImageEXT"))
  vkCopyImageToMemoryEXT = cast[proc(device: VkDevice, pCopyImageToMemoryInfo: ptr VkCopyImageToMemoryInfo): VkResult {.stdcall.}](vkGetProc("vkCopyImageToMemoryEXT"))
  vkCopyImageToImageEXT = cast[proc(device: VkDevice, pCopyImageToImageInfo: ptr VkCopyImageToImageInfo): VkResult {.stdcall.}](vkGetProc("vkCopyImageToImageEXT"))
  vkTransitionImageLayoutEXT = cast[proc(device: VkDevice, transitionCount: uint32, pTransitions: ptr VkHostImageLayoutTransitionInfo): VkResult {.stdcall.}](vkGetProc("vkTransitionImageLayoutEXT"))
  vkGetImageSubresourceLayout2EXT = cast[proc(device: VkDevice, image: VkImage, pSubresource: ptr VkImageSubresource2, pLayout: ptr VkSubresourceLayout2): void {.stdcall.}](vkGetProc("vkGetImageSubresourceLayout2EXT"))

proc loadVK_KHR_map_memory2*() =
  ## Loads VK_KHR_map_memory2 extension commands.
  vkMapMemory2KHR = cast[proc(device: VkDevice, pMemoryMapInfo: ptr VkMemoryMapInfo, ppData: ptr pointer): VkResult {.stdcall.}](vkGetProc("vkMapMemory2KHR"))
  vkUnmapMemory2KHR = cast[proc(device: VkDevice, pMemoryUnmapInfo: ptr VkMemoryUnmapInfo): VkResult {.stdcall.}](vkGetProc("vkUnmapMemory2KHR"))

proc loadVK_EXT_swapchain_maintenance1*() =
  ## Loads VK_EXT_swapchain_maintenance1 extension commands.
  vkReleaseSwapchainImagesEXT = cast[proc(device: VkDevice, pReleaseInfo: ptr VkReleaseSwapchainImagesInfoKHR): VkResult {.stdcall.}](vkGetProc("vkReleaseSwapchainImagesEXT"))

proc loadVK_NV_device_generated_commands*() =
  ## Loads VK_NV_device_generated_commands extension commands.
  vkGetGeneratedCommandsMemoryRequirementsNV = cast[proc(device: VkDevice, pInfo: ptr VkGeneratedCommandsMemoryRequirementsInfoNV, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetGeneratedCommandsMemoryRequirementsNV"))
  vkCmdPreprocessGeneratedCommandsNV = cast[proc(commandBuffer: VkCommandBuffer, pGeneratedCommandsInfo: ptr VkGeneratedCommandsInfoNV): void {.stdcall.}](vkGetProc("vkCmdPreprocessGeneratedCommandsNV"))
  vkCmdExecuteGeneratedCommandsNV = cast[proc(commandBuffer: VkCommandBuffer, isPreprocessed: VkBool32, pGeneratedCommandsInfo: ptr VkGeneratedCommandsInfoNV): void {.stdcall.}](vkGetProc("vkCmdExecuteGeneratedCommandsNV"))
  vkCmdBindPipelineShaderGroupNV = cast[proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline, groupIndex: uint32): void {.stdcall.}](vkGetProc("vkCmdBindPipelineShaderGroupNV"))
  vkCreateIndirectCommandsLayoutNV = cast[proc(device: VkDevice, pCreateInfo: ptr VkIndirectCommandsLayoutCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pIndirectCommandsLayout: ptr VkIndirectCommandsLayoutNV): VkResult {.stdcall.}](vkGetProc("vkCreateIndirectCommandsLayoutNV"))
  vkDestroyIndirectCommandsLayoutNV = cast[proc(device: VkDevice, indirectCommandsLayout: VkIndirectCommandsLayoutNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyIndirectCommandsLayoutNV"))

proc loadVK_EXT_depth_bias_control*() =
  ## Loads VK_EXT_depth_bias_control extension commands.
  vkCmdSetDepthBias2EXT = cast[proc(commandBuffer: VkCommandBuffer, pDepthBiasInfo: ptr VkDepthBiasInfoEXT): void {.stdcall.}](vkGetProc("vkCmdSetDepthBias2EXT"))

proc loadVK_EXT_acquire_drm_display*() =
  ## Loads VK_EXT_acquire_drm_display extension commands.
  vkAcquireDrmDisplayEXT = cast[proc(physicalDevice: VkPhysicalDevice, drmFd: int32, display: VkDisplayKHR): VkResult {.stdcall.}](vkGetProc("vkAcquireDrmDisplayEXT"))
  vkGetDrmDisplayEXT = cast[proc(physicalDevice: VkPhysicalDevice, drmFd: int32, connectorId: uint32, display: ptr VkDisplayKHR): VkResult {.stdcall.}](vkGetProc("vkGetDrmDisplayEXT"))

proc loadVK_EXT_private_data*() =
  ## Loads VK_EXT_private_data extension commands.
  vkCreatePrivateDataSlotEXT = cast[proc(device: VkDevice, pCreateInfo: ptr VkPrivateDataSlotCreateInfo, pAllocator: ptr VkAllocationCallbacks, pPrivateDataSlot: ptr VkPrivateDataSlot): VkResult {.stdcall.}](vkGetProc("vkCreatePrivateDataSlotEXT"))
  vkDestroyPrivateDataSlotEXT = cast[proc(device: VkDevice, privateDataSlot: VkPrivateDataSlot, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyPrivateDataSlotEXT"))
  vkSetPrivateDataEXT = cast[proc(device: VkDevice, objectType: VkObjectType, objectHandle: uint64, privateDataSlot: VkPrivateDataSlot, data: uint64): VkResult {.stdcall.}](vkGetProc("vkSetPrivateDataEXT"))
  vkGetPrivateDataEXT = cast[proc(device: VkDevice, objectType: VkObjectType, objectHandle: uint64, privateDataSlot: VkPrivateDataSlot, pData: ptr uint64): void {.stdcall.}](vkGetProc("vkGetPrivateDataEXT"))

proc loadVK_KHR_video_encode_queue*() =
  ## Loads VK_KHR_video_encode_queue extension commands.
  vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR = cast[proc(physicalDevice: VkPhysicalDevice, pQualityLevelInfo: ptr VkPhysicalDeviceVideoEncodeQualityLevelInfoKHR, pQualityLevelProperties: ptr VkVideoEncodeQualityLevelPropertiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR"))
  vkGetEncodedVideoSessionParametersKHR = cast[proc(device: VkDevice, pVideoSessionParametersInfo: ptr VkVideoEncodeSessionParametersGetInfoKHR, pFeedbackInfo: ptr VkVideoEncodeSessionParametersFeedbackInfoKHR, pDataSize: ptr csize_t, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetEncodedVideoSessionParametersKHR"))
  vkCmdEncodeVideoKHR = cast[proc(commandBuffer: VkCommandBuffer, pEncodeInfo: ptr VkVideoEncodeInfoKHR): void {.stdcall.}](vkGetProc("vkCmdEncodeVideoKHR"))

proc loadVK_NV_cuda_kernel_launch*() =
  ## Loads VK_NV_cuda_kernel_launch extension commands.
  vkCreateCudaModuleNV = cast[proc(device: VkDevice, pCreateInfo: ptr VkCudaModuleCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pModule: ptr VkCudaModuleNV): VkResult {.stdcall.}](vkGetProc("vkCreateCudaModuleNV"))
  vkGetCudaModuleCacheNV = cast[proc(device: VkDevice, module: VkCudaModuleNV, pCacheSize: ptr csize_t, pCacheData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetCudaModuleCacheNV"))
  vkCreateCudaFunctionNV = cast[proc(device: VkDevice, pCreateInfo: ptr VkCudaFunctionCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pFunction: ptr VkCudaFunctionNV): VkResult {.stdcall.}](vkGetProc("vkCreateCudaFunctionNV"))
  vkDestroyCudaModuleNV = cast[proc(device: VkDevice, module: VkCudaModuleNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyCudaModuleNV"))
  vkDestroyCudaFunctionNV = cast[proc(device: VkDevice, function: VkCudaFunctionNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyCudaFunctionNV"))
  vkCmdCudaLaunchKernelNV = cast[proc(commandBuffer: VkCommandBuffer, pLaunchInfo: ptr VkCudaLaunchInfoNV): void {.stdcall.}](vkGetProc("vkCmdCudaLaunchKernelNV"))

proc loadVK_KHR_object_refresh*() =
  ## Loads VK_KHR_object_refresh extension commands.
  vkCmdRefreshObjectsKHR = cast[proc(commandBuffer: VkCommandBuffer, pRefreshObjects: ptr VkRefreshObjectListKHR): void {.stdcall.}](vkGetProc("vkCmdRefreshObjectsKHR"))
  vkGetPhysicalDeviceRefreshableObjectTypesKHR = cast[proc(physicalDevice: VkPhysicalDevice, pRefreshableObjectTypeCount: ptr uint32, pRefreshableObjectTypes: ptr VkObjectType): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceRefreshableObjectTypesKHR"))

proc loadVK_QCOM_tile_shading*() =
  ## Loads VK_QCOM_tile_shading extension commands.
  vkCmdDispatchTileQCOM = cast[proc(commandBuffer: VkCommandBuffer, pDispatchTileInfo: ptr VkDispatchTileInfoQCOM): void {.stdcall.}](vkGetProc("vkCmdDispatchTileQCOM"))
  vkCmdBeginPerTileExecutionQCOM = cast[proc(commandBuffer: VkCommandBuffer, pPerTileBeginInfo: ptr VkPerTileBeginInfoQCOM): void {.stdcall.}](vkGetProc("vkCmdBeginPerTileExecutionQCOM"))
  vkCmdEndPerTileExecutionQCOM = cast[proc(commandBuffer: VkCommandBuffer, pPerTileEndInfo: ptr VkPerTileEndInfoQCOM): void {.stdcall.}](vkGetProc("vkCmdEndPerTileExecutionQCOM"))

proc loadVK_EXT_metal_objects*() =
  ## Loads VK_EXT_metal_objects extension commands.
  vkExportMetalObjectsEXT = cast[proc(device: VkDevice, pMetalObjectsInfo: ptr VkExportMetalObjectsInfoEXT): void {.stdcall.}](vkGetProc("vkExportMetalObjectsEXT"))

proc loadVK_KHR_synchronization2*() =
  ## Loads VK_KHR_synchronization2 extension commands.
  vkCmdSetEvent2KHR = cast[proc(commandBuffer: VkCommandBuffer, event: VkEvent, pDependencyInfo: ptr VkDependencyInfo): void {.stdcall.}](vkGetProc("vkCmdSetEvent2KHR"))
  vkCmdResetEvent2KHR = cast[proc(commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags2): void {.stdcall.}](vkGetProc("vkCmdResetEvent2KHR"))
  vkCmdWaitEvents2KHR = cast[proc(commandBuffer: VkCommandBuffer, eventCount: uint32, pEvents: ptr VkEvent, pDependencyInfos: ptr VkDependencyInfo): void {.stdcall.}](vkGetProc("vkCmdWaitEvents2KHR"))
  vkCmdPipelineBarrier2KHR = cast[proc(commandBuffer: VkCommandBuffer, pDependencyInfo: ptr VkDependencyInfo): void {.stdcall.}](vkGetProc("vkCmdPipelineBarrier2KHR"))
  vkCmdWriteTimestamp2KHR = cast[proc(commandBuffer: VkCommandBuffer, stage: VkPipelineStageFlags2, queryPool: VkQueryPool, query: uint32): void {.stdcall.}](vkGetProc("vkCmdWriteTimestamp2KHR"))
  vkQueueSubmit2KHR = cast[proc(queue: VkQueue, submitCount: uint32, pSubmits: ptr VkSubmitInfo2, fence: VkFence): VkResult {.stdcall.}](vkGetProc("vkQueueSubmit2KHR"))

proc loadVK_EXT_descriptor_buffer*() =
  ## Loads VK_EXT_descriptor_buffer extension commands.
  vkGetDescriptorSetLayoutSizeEXT = cast[proc(device: VkDevice, layout: VkDescriptorSetLayout, pLayoutSizeInBytes: ptr VkDeviceSize): void {.stdcall.}](vkGetProc("vkGetDescriptorSetLayoutSizeEXT"))
  vkGetDescriptorSetLayoutBindingOffsetEXT = cast[proc(device: VkDevice, layout: VkDescriptorSetLayout, binding: uint32, pOffset: ptr VkDeviceSize): void {.stdcall.}](vkGetProc("vkGetDescriptorSetLayoutBindingOffsetEXT"))
  vkGetDescriptorEXT = cast[proc(device: VkDevice, pDescriptorInfo: ptr VkDescriptorGetInfoEXT, dataSize: csize_t, pDescriptor: pointer): void {.stdcall.}](vkGetProc("vkGetDescriptorEXT"))
  vkCmdBindDescriptorBuffersEXT = cast[proc(commandBuffer: VkCommandBuffer, bufferCount: uint32, pBindingInfos: ptr VkDescriptorBufferBindingInfoEXT): void {.stdcall.}](vkGetProc("vkCmdBindDescriptorBuffersEXT"))
  vkCmdSetDescriptorBufferOffsetsEXT = cast[proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, firstSet: uint32, setCount: uint32, pBufferIndices: ptr uint32, pOffsets: ptr VkDeviceSize): void {.stdcall.}](vkGetProc("vkCmdSetDescriptorBufferOffsetsEXT"))
  vkCmdBindDescriptorBufferEmbeddedSamplersEXT = cast[proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, set: uint32): void {.stdcall.}](vkGetProc("vkCmdBindDescriptorBufferEmbeddedSamplersEXT"))
  vkGetBufferOpaqueCaptureDescriptorDataEXT = cast[proc(device: VkDevice, pInfo: ptr VkBufferCaptureDescriptorDataInfoEXT, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetBufferOpaqueCaptureDescriptorDataEXT"))
  vkGetImageOpaqueCaptureDescriptorDataEXT = cast[proc(device: VkDevice, pInfo: ptr VkImageCaptureDescriptorDataInfoEXT, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetImageOpaqueCaptureDescriptorDataEXT"))
  vkGetImageViewOpaqueCaptureDescriptorDataEXT = cast[proc(device: VkDevice, pInfo: ptr VkImageViewCaptureDescriptorDataInfoEXT, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetImageViewOpaqueCaptureDescriptorDataEXT"))
  vkGetSamplerOpaqueCaptureDescriptorDataEXT = cast[proc(device: VkDevice, pInfo: ptr VkSamplerCaptureDescriptorDataInfoEXT, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetSamplerOpaqueCaptureDescriptorDataEXT"))
  vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT = cast[proc(device: VkDevice, pInfo: ptr VkAccelerationStructureCaptureDescriptorDataInfoEXT, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT"))

proc loadVK_KHR_device_address_commands*() =
  ## Loads VK_KHR_device_address_commands extension commands.
  vkCmdBindIndexBuffer3KHR = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkBindIndexBuffer3InfoKHR): void {.stdcall.}](vkGetProc("vkCmdBindIndexBuffer3KHR"))
  vkCmdBindVertexBuffers3KHR = cast[proc(commandBuffer: VkCommandBuffer, firstBinding: uint32, bindingCount: uint32, pBindingInfos: ptr VkBindVertexBuffer3InfoKHR): void {.stdcall.}](vkGetProc("vkCmdBindVertexBuffers3KHR"))
  vkCmdDrawIndirect2KHR = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDrawIndirect2InfoKHR): void {.stdcall.}](vkGetProc("vkCmdDrawIndirect2KHR"))
  vkCmdDrawIndexedIndirect2KHR = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDrawIndirect2InfoKHR): void {.stdcall.}](vkGetProc("vkCmdDrawIndexedIndirect2KHR"))
  vkCmdDispatchIndirect2KHR = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDispatchIndirect2InfoKHR): void {.stdcall.}](vkGetProc("vkCmdDispatchIndirect2KHR"))
  vkCmdCopyMemoryKHR = cast[proc(commandBuffer: VkCommandBuffer, pCopyMemoryInfo: ptr VkCopyDeviceMemoryInfoKHR): void {.stdcall.}](vkGetProc("vkCmdCopyMemoryKHR"))
  vkCmdCopyMemoryToImageKHR = cast[proc(commandBuffer: VkCommandBuffer, pCopyMemoryInfo: ptr VkCopyDeviceMemoryImageInfoKHR): void {.stdcall.}](vkGetProc("vkCmdCopyMemoryToImageKHR"))
  vkCmdCopyImageToMemoryKHR = cast[proc(commandBuffer: VkCommandBuffer, pCopyMemoryInfo: ptr VkCopyDeviceMemoryImageInfoKHR): void {.stdcall.}](vkGetProc("vkCmdCopyImageToMemoryKHR"))
  vkCmdUpdateMemoryKHR = cast[proc(commandBuffer: VkCommandBuffer, pDstRange: ptr VkDeviceAddressRangeKHR, dstFlags: VkAddressCommandFlagsKHR, dataSize: VkDeviceSize, pData: pointer): void {.stdcall.}](vkGetProc("vkCmdUpdateMemoryKHR"))
  vkCmdFillMemoryKHR = cast[proc(commandBuffer: VkCommandBuffer, pDstRange: ptr VkDeviceAddressRangeKHR, dstFlags: VkAddressCommandFlagsKHR, data: uint32): void {.stdcall.}](vkGetProc("vkCmdFillMemoryKHR"))
  vkCmdCopyQueryPoolResultsToMemoryKHR = cast[proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: uint32, queryCount: uint32, pDstRange: ptr VkStridedDeviceAddressRangeKHR, dstFlags: VkAddressCommandFlagsKHR, queryResultFlags: VkQueryResultFlags): void {.stdcall.}](vkGetProc("vkCmdCopyQueryPoolResultsToMemoryKHR"))
  vkCmdDrawIndirectCount2KHR = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDrawIndirectCount2InfoKHR): void {.stdcall.}](vkGetProc("vkCmdDrawIndirectCount2KHR"))
  vkCmdDrawIndexedIndirectCount2KHR = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDrawIndirectCount2InfoKHR): void {.stdcall.}](vkGetProc("vkCmdDrawIndexedIndirectCount2KHR"))
  vkCmdBeginConditionalRendering2EXT = cast[proc(commandBuffer: VkCommandBuffer, pConditionalRenderingBegin: ptr VkConditionalRenderingBeginInfo2EXT): void {.stdcall.}](vkGetProc("vkCmdBeginConditionalRendering2EXT"))
  vkCmdBindTransformFeedbackBuffers2EXT = cast[proc(commandBuffer: VkCommandBuffer, firstBinding: uint32, bindingCount: uint32, pBindingInfos: ptr VkBindTransformFeedbackBuffer2InfoEXT): void {.stdcall.}](vkGetProc("vkCmdBindTransformFeedbackBuffers2EXT"))
  vkCmdBeginTransformFeedback2EXT = cast[proc(commandBuffer: VkCommandBuffer, firstCounterRange: uint32, counterRangeCount: uint32, pCounterInfos: ptr VkBindTransformFeedbackBuffer2InfoEXT): void {.stdcall.}](vkGetProc("vkCmdBeginTransformFeedback2EXT"))
  vkCmdEndTransformFeedback2EXT = cast[proc(commandBuffer: VkCommandBuffer, firstCounterRange: uint32, counterRangeCount: uint32, pCounterInfos: ptr VkBindTransformFeedbackBuffer2InfoEXT): void {.stdcall.}](vkGetProc("vkCmdEndTransformFeedback2EXT"))
  vkCmdDrawIndirectByteCount2EXT = cast[proc(commandBuffer: VkCommandBuffer, instanceCount: uint32, firstInstance: uint32, pCounterInfo: ptr VkBindTransformFeedbackBuffer2InfoEXT, counterOffset: uint32, vertexStride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawIndirectByteCount2EXT"))
  vkCmdDrawMeshTasksIndirect2EXT = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDrawIndirect2InfoKHR): void {.stdcall.}](vkGetProc("vkCmdDrawMeshTasksIndirect2EXT"))
  vkCmdDrawMeshTasksIndirectCount2EXT = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDrawIndirectCount2InfoKHR): void {.stdcall.}](vkGetProc("vkCmdDrawMeshTasksIndirectCount2EXT"))
  vkCmdWriteMarkerToMemoryAMD = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkMemoryMarkerInfoAMD): void {.stdcall.}](vkGetProc("vkCmdWriteMarkerToMemoryAMD"))
  vkCreateAccelerationStructure2KHR = cast[proc(device: VkDevice, pCreateInfo: ptr VkAccelerationStructureCreateInfo2KHR, pAllocator: ptr VkAllocationCallbacks, pAccelerationStructure: ptr VkAccelerationStructureKHR): VkResult {.stdcall.}](vkGetProc("vkCreateAccelerationStructure2KHR"))

proc loadVK_NV_fragment_shading_rate_enums*() =
  ## Loads VK_NV_fragment_shading_rate_enums extension commands.
  vkCmdSetFragmentShadingRateEnumNV = cast[proc(commandBuffer: VkCommandBuffer, shadingRate: VkFragmentShadingRateNV, combinerOps: array[2, VkFragmentShadingRateCombinerOpKHR]): void {.stdcall.}](vkGetProc("vkCmdSetFragmentShadingRateEnumNV"))

proc loadVK_EXT_mesh_shader*() =
  ## Loads VK_EXT_mesh_shader extension commands.
  vkCmdDrawMeshTasksEXT = cast[proc(commandBuffer: VkCommandBuffer, groupCountX: uint32, groupCountY: uint32, groupCountZ: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawMeshTasksEXT"))
  vkCmdDrawMeshTasksIndirectEXT = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawMeshTasksIndirectEXT"))
  vkCmdDrawMeshTasksIndirectCountEXT = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawMeshTasksIndirectCountEXT"))

proc loadVK_KHR_copy_commands2*() =
  ## Loads VK_KHR_copy_commands2 extension commands.
  vkCmdCopyBuffer2KHR = cast[proc(commandBuffer: VkCommandBuffer, pCopyBufferInfo: ptr VkCopyBufferInfo2): void {.stdcall.}](vkGetProc("vkCmdCopyBuffer2KHR"))
  vkCmdCopyImage2KHR = cast[proc(commandBuffer: VkCommandBuffer, pCopyImageInfo: ptr VkCopyImageInfo2): void {.stdcall.}](vkGetProc("vkCmdCopyImage2KHR"))
  vkCmdCopyBufferToImage2KHR = cast[proc(commandBuffer: VkCommandBuffer, pCopyBufferToImageInfo: ptr VkCopyBufferToImageInfo2): void {.stdcall.}](vkGetProc("vkCmdCopyBufferToImage2KHR"))
  vkCmdCopyImageToBuffer2KHR = cast[proc(commandBuffer: VkCommandBuffer, pCopyImageToBufferInfo: ptr VkCopyImageToBufferInfo2): void {.stdcall.}](vkGetProc("vkCmdCopyImageToBuffer2KHR"))
  vkCmdBlitImage2KHR = cast[proc(commandBuffer: VkCommandBuffer, pBlitImageInfo: ptr VkBlitImageInfo2): void {.stdcall.}](vkGetProc("vkCmdBlitImage2KHR"))
  vkCmdResolveImage2KHR = cast[proc(commandBuffer: VkCommandBuffer, pResolveImageInfo: ptr VkResolveImageInfo2): void {.stdcall.}](vkGetProc("vkCmdResolveImage2KHR"))

proc loadVK_EXT_image_compression_control*() =
  ## Loads VK_EXT_image_compression_control extension commands.
  vkGetImageSubresourceLayout2EXT = cast[proc(device: VkDevice, image: VkImage, pSubresource: ptr VkImageSubresource2, pLayout: ptr VkSubresourceLayout2): void {.stdcall.}](vkGetProc("vkGetImageSubresourceLayout2EXT"))

proc loadVK_EXT_device_fault*() =
  ## Loads VK_EXT_device_fault extension commands.
  vkGetDeviceFaultInfoEXT = cast[proc(device: VkDevice, pFaultCounts: ptr VkDeviceFaultCountsEXT, pFaultInfo: ptr VkDeviceFaultInfoEXT): VkResult {.stdcall.}](vkGetProc("vkGetDeviceFaultInfoEXT"))

proc loadVK_NV_acquire_winrt_display*() =
  ## Loads VK_NV_acquire_winrt_display extension commands.
  vkAcquireWinrtDisplayNV = cast[proc(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR): VkResult {.stdcall.}](vkGetProc("vkAcquireWinrtDisplayNV"))
  vkGetWinrtDisplayNV = cast[proc(physicalDevice: VkPhysicalDevice, deviceRelativeId: uint32, pDisplay: ptr VkDisplayKHR): VkResult {.stdcall.}](vkGetProc("vkGetWinrtDisplayNV"))

proc loadVK_EXT_directfb_surface*() =
  ## Loads VK_EXT_directfb_surface extension commands.
  vkCreateDirectFBSurfaceEXT = cast[proc(instance: VkInstance, pCreateInfo: ptr VkDirectFBSurfaceCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateDirectFBSurfaceEXT"))
  vkGetPhysicalDeviceDirectFBPresentationSupportEXT = cast[proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, dfb: pointer): VkBool32 {.stdcall.}](vkGetProc("vkGetPhysicalDeviceDirectFBPresentationSupportEXT"))

proc loadVK_EXT_vertex_input_dynamic_state*() =
  ## Loads VK_EXT_vertex_input_dynamic_state extension commands.
  vkCmdSetVertexInputEXT = cast[proc(commandBuffer: VkCommandBuffer, vertexBindingDescriptionCount: uint32, pVertexBindingDescriptions: ptr VkVertexInputBindingDescription2EXT, vertexAttributeDescriptionCount: uint32, pVertexAttributeDescriptions: ptr VkVertexInputAttributeDescription2EXT): void {.stdcall.}](vkGetProc("vkCmdSetVertexInputEXT"))

proc loadVK_FUCHSIA_external_memory*() =
  ## Loads VK_FUCHSIA_external_memory extension commands.
  vkGetMemoryZirconHandleFUCHSIA = cast[proc(device: VkDevice, pGetZirconHandleInfo: ptr VkMemoryGetZirconHandleInfoFUCHSIA, pZirconHandle: ptr uint32): VkResult {.stdcall.}](vkGetProc("vkGetMemoryZirconHandleFUCHSIA"))
  vkGetMemoryZirconHandlePropertiesFUCHSIA = cast[proc(device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, zirconHandle: uint32, pMemoryZirconHandleProperties: ptr VkMemoryZirconHandlePropertiesFUCHSIA): VkResult {.stdcall.}](vkGetProc("vkGetMemoryZirconHandlePropertiesFUCHSIA"))

proc loadVK_FUCHSIA_external_semaphore*() =
  ## Loads VK_FUCHSIA_external_semaphore extension commands.
  vkImportSemaphoreZirconHandleFUCHSIA = cast[proc(device: VkDevice, pImportSemaphoreZirconHandleInfo: ptr VkImportSemaphoreZirconHandleInfoFUCHSIA): VkResult {.stdcall.}](vkGetProc("vkImportSemaphoreZirconHandleFUCHSIA"))
  vkGetSemaphoreZirconHandleFUCHSIA = cast[proc(device: VkDevice, pGetZirconHandleInfo: ptr VkSemaphoreGetZirconHandleInfoFUCHSIA, pZirconHandle: ptr uint32): VkResult {.stdcall.}](vkGetProc("vkGetSemaphoreZirconHandleFUCHSIA"))

proc loadVK_FUCHSIA_buffer_collection*() =
  ## Loads VK_FUCHSIA_buffer_collection extension commands.
  vkCreateBufferCollectionFUCHSIA = cast[proc(device: VkDevice, pCreateInfo: ptr VkBufferCollectionCreateInfoFUCHSIA, pAllocator: ptr VkAllocationCallbacks, pCollection: ptr VkBufferCollectionFUCHSIA): VkResult {.stdcall.}](vkGetProc("vkCreateBufferCollectionFUCHSIA"))
  vkSetBufferCollectionImageConstraintsFUCHSIA = cast[proc(device: VkDevice, collection: VkBufferCollectionFUCHSIA, pImageConstraintsInfo: ptr VkImageConstraintsInfoFUCHSIA): VkResult {.stdcall.}](vkGetProc("vkSetBufferCollectionImageConstraintsFUCHSIA"))
  vkSetBufferCollectionBufferConstraintsFUCHSIA = cast[proc(device: VkDevice, collection: VkBufferCollectionFUCHSIA, pBufferConstraintsInfo: ptr VkBufferConstraintsInfoFUCHSIA): VkResult {.stdcall.}](vkGetProc("vkSetBufferCollectionBufferConstraintsFUCHSIA"))
  vkDestroyBufferCollectionFUCHSIA = cast[proc(device: VkDevice, collection: VkBufferCollectionFUCHSIA, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyBufferCollectionFUCHSIA"))
  vkGetBufferCollectionPropertiesFUCHSIA = cast[proc(device: VkDevice, collection: VkBufferCollectionFUCHSIA, pProperties: ptr VkBufferCollectionPropertiesFUCHSIA): VkResult {.stdcall.}](vkGetProc("vkGetBufferCollectionPropertiesFUCHSIA"))

proc loadVK_HUAWEI_subpass_shading*() =
  ## Loads VK_HUAWEI_subpass_shading extension commands.
  vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI = cast[proc(device: VkDevice, renderpass: VkRenderPass, pMaxWorkgroupSize: ptr VkExtent2D): VkResult {.stdcall.}](vkGetProc("vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI"))
  vkCmdSubpassShadingHUAWEI = cast[proc(commandBuffer: VkCommandBuffer): void {.stdcall.}](vkGetProc("vkCmdSubpassShadingHUAWEI"))

proc loadVK_HUAWEI_invocation_mask*() =
  ## Loads VK_HUAWEI_invocation_mask extension commands.
  vkCmdBindInvocationMaskHUAWEI = cast[proc(commandBuffer: VkCommandBuffer, imageView: VkImageView, imageLayout: VkImageLayout): void {.stdcall.}](vkGetProc("vkCmdBindInvocationMaskHUAWEI"))

proc loadVK_NV_external_memory_rdma*() =
  ## Loads VK_NV_external_memory_rdma extension commands.
  vkGetMemoryRemoteAddressNV = cast[proc(device: VkDevice, pMemoryGetRemoteAddressInfo: ptr VkMemoryGetRemoteAddressInfoNV, pAddress: ptr VkRemoteAddressNV): VkResult {.stdcall.}](vkGetProc("vkGetMemoryRemoteAddressNV"))

proc loadVK_EXT_pipeline_properties*() =
  ## Loads VK_EXT_pipeline_properties extension commands.
  vkGetPipelinePropertiesEXT = cast[proc(device: VkDevice, pPipelineInfo: ptr VkPipelineInfoKHR, pPipelineProperties: ptr VkBaseOutStructure): VkResult {.stdcall.}](vkGetProc("vkGetPipelinePropertiesEXT"))

proc loadVK_NV_external_sci_sync*() =
  ## Loads VK_NV_external_sci_sync extension commands.
  vkGetFenceSciSyncFenceNV = cast[proc(device: VkDevice, pGetSciSyncHandleInfo: ptr VkFenceGetSciSyncInfoNV, pHandle: pointer): VkResult {.stdcall.}](vkGetProc("vkGetFenceSciSyncFenceNV"))
  vkGetFenceSciSyncObjNV = cast[proc(device: VkDevice, pGetSciSyncHandleInfo: ptr VkFenceGetSciSyncInfoNV, pHandle: pointer): VkResult {.stdcall.}](vkGetProc("vkGetFenceSciSyncObjNV"))
  vkImportFenceSciSyncFenceNV = cast[proc(device: VkDevice, pImportFenceSciSyncInfo: ptr VkImportFenceSciSyncInfoNV): VkResult {.stdcall.}](vkGetProc("vkImportFenceSciSyncFenceNV"))
  vkImportFenceSciSyncObjNV = cast[proc(device: VkDevice, pImportFenceSciSyncInfo: ptr VkImportFenceSciSyncInfoNV): VkResult {.stdcall.}](vkGetProc("vkImportFenceSciSyncObjNV"))
  vkGetPhysicalDeviceSciSyncAttributesNV = cast[proc(physicalDevice: VkPhysicalDevice, pSciSyncAttributesInfo: ptr VkSciSyncAttributesInfoNV, pAttributes: pointer): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSciSyncAttributesNV"))
  vkGetSemaphoreSciSyncObjNV = cast[proc(device: VkDevice, pGetSciSyncInfo: ptr VkSemaphoreGetSciSyncInfoNV, pHandle: pointer): VkResult {.stdcall.}](vkGetProc("vkGetSemaphoreSciSyncObjNV"))
  vkImportSemaphoreSciSyncObjNV = cast[proc(device: VkDevice, pImportSemaphoreSciSyncInfo: ptr VkImportSemaphoreSciSyncInfoNV): VkResult {.stdcall.}](vkGetProc("vkImportSemaphoreSciSyncObjNV"))

proc loadVK_NV_external_memory_sci_buf*() =
  ## Loads VK_NV_external_memory_sci_buf extension commands.
  vkGetMemorySciBufNV = cast[proc(device: VkDevice, pGetSciBufInfo: ptr VkMemoryGetSciBufInfoNV, pHandle: pointer): VkResult {.stdcall.}](vkGetProc("vkGetMemorySciBufNV"))
  vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV = cast[proc(physicalDevice: VkPhysicalDevice, handleType: VkExternalMemoryHandleTypeFlagBits, handle: pointer, pMemorySciBufProperties: ptr VkMemorySciBufPropertiesNV): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV"))
  vkGetPhysicalDeviceSciBufAttributesNV = cast[proc(physicalDevice: VkPhysicalDevice, pAttributes: pointer): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSciBufAttributesNV"))

proc loadVK_EXT_extended_dynamic_state2*() =
  ## Loads VK_EXT_extended_dynamic_state2 extension commands.
  vkCmdSetPatchControlPointsEXT = cast[proc(commandBuffer: VkCommandBuffer, patchControlPoints: uint32): void {.stdcall.}](vkGetProc("vkCmdSetPatchControlPointsEXT"))
  vkCmdSetRasterizerDiscardEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, rasterizerDiscardEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetRasterizerDiscardEnableEXT"))
  vkCmdSetDepthBiasEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, depthBiasEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthBiasEnableEXT"))
  vkCmdSetLogicOpEXT = cast[proc(commandBuffer: VkCommandBuffer, logicOp: VkLogicOp): void {.stdcall.}](vkGetProc("vkCmdSetLogicOpEXT"))
  vkCmdSetPrimitiveRestartEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, primitiveRestartEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetPrimitiveRestartEnableEXT"))

proc loadVK_QNX_screen_surface*() =
  ## Loads VK_QNX_screen_surface extension commands.
  vkCreateScreenSurfaceQNX = cast[proc(instance: VkInstance, pCreateInfo: ptr VkScreenSurfaceCreateInfoQNX, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateScreenSurfaceQNX"))
  vkGetPhysicalDeviceScreenPresentationSupportQNX = cast[proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, window: pointer): VkBool32 {.stdcall.}](vkGetProc("vkGetPhysicalDeviceScreenPresentationSupportQNX"))

proc loadVK_EXT_color_write_enable*() =
  ## Loads VK_EXT_color_write_enable extension commands.
  vkCmdSetColorWriteEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, attachmentCount: uint32, pColorWriteEnables: ptr VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetColorWriteEnableEXT"))

proc loadVK_KHR_ray_tracing_maintenance1*() =
  ## Loads VK_KHR_ray_tracing_maintenance1 extension commands.
  vkCmdTraceRaysIndirect2KHR = cast[proc(commandBuffer: VkCommandBuffer, indirectDeviceAddress: VkDeviceAddress): void {.stdcall.}](vkGetProc("vkCmdTraceRaysIndirect2KHR"))

proc loadVK_EXT_multi_draw*() =
  ## Loads VK_EXT_multi_draw extension commands.
  vkCmdDrawMultiEXT = cast[proc(commandBuffer: VkCommandBuffer, drawCount: uint32, pVertexInfo: ptr VkMultiDrawInfoEXT, instanceCount: uint32, firstInstance: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawMultiEXT"))
  vkCmdDrawMultiIndexedEXT = cast[proc(commandBuffer: VkCommandBuffer, drawCount: uint32, pIndexInfo: ptr VkMultiDrawIndexedInfoEXT, instanceCount: uint32, firstInstance: uint32, stride: uint32, pVertexOffset: ptr int32): void {.stdcall.}](vkGetProc("vkCmdDrawMultiIndexedEXT"))

proc loadVK_EXT_opacity_micromap*() =
  ## Loads VK_EXT_opacity_micromap extension commands.
  vkCreateMicromapEXT = cast[proc(device: VkDevice, pCreateInfo: ptr VkMicromapCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pMicromap: ptr VkMicromapEXT): VkResult {.stdcall.}](vkGetProc("vkCreateMicromapEXT"))
  vkDestroyMicromapEXT = cast[proc(device: VkDevice, micromap: VkMicromapEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyMicromapEXT"))
  vkCmdBuildMicromapsEXT = cast[proc(commandBuffer: VkCommandBuffer, infoCount: uint32, pInfos: ptr VkMicromapBuildInfoEXT): void {.stdcall.}](vkGetProc("vkCmdBuildMicromapsEXT"))
  vkBuildMicromapsEXT = cast[proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, infoCount: uint32, pInfos: ptr VkMicromapBuildInfoEXT): VkResult {.stdcall.}](vkGetProc("vkBuildMicromapsEXT"))
  vkCopyMicromapEXT = cast[proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: ptr VkCopyMicromapInfoEXT): VkResult {.stdcall.}](vkGetProc("vkCopyMicromapEXT"))
  vkCopyMicromapToMemoryEXT = cast[proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: ptr VkCopyMicromapToMemoryInfoEXT): VkResult {.stdcall.}](vkGetProc("vkCopyMicromapToMemoryEXT"))
  vkCopyMemoryToMicromapEXT = cast[proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: ptr VkCopyMemoryToMicromapInfoEXT): VkResult {.stdcall.}](vkGetProc("vkCopyMemoryToMicromapEXT"))
  vkWriteMicromapsPropertiesEXT = cast[proc(device: VkDevice, micromapCount: uint32, pMicromaps: ptr VkMicromapEXT, queryType: VkQueryType, dataSize: csize_t, pData: pointer, stride: csize_t): VkResult {.stdcall.}](vkGetProc("vkWriteMicromapsPropertiesEXT"))
  vkCmdCopyMicromapEXT = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkCopyMicromapInfoEXT): void {.stdcall.}](vkGetProc("vkCmdCopyMicromapEXT"))
  vkCmdCopyMicromapToMemoryEXT = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkCopyMicromapToMemoryInfoEXT): void {.stdcall.}](vkGetProc("vkCmdCopyMicromapToMemoryEXT"))
  vkCmdCopyMemoryToMicromapEXT = cast[proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkCopyMemoryToMicromapInfoEXT): void {.stdcall.}](vkGetProc("vkCmdCopyMemoryToMicromapEXT"))
  vkCmdWriteMicromapsPropertiesEXT = cast[proc(commandBuffer: VkCommandBuffer, micromapCount: uint32, pMicromaps: ptr VkMicromapEXT, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: uint32): void {.stdcall.}](vkGetProc("vkCmdWriteMicromapsPropertiesEXT"))
  vkGetDeviceMicromapCompatibilityEXT = cast[proc(device: VkDevice, pVersionInfo: ptr VkMicromapVersionInfoEXT, pCompatibility: ptr VkAccelerationStructureCompatibilityKHR): void {.stdcall.}](vkGetProc("vkGetDeviceMicromapCompatibilityEXT"))
  vkGetMicromapBuildSizesEXT = cast[proc(device: VkDevice, buildType: VkAccelerationStructureBuildTypeKHR, pBuildInfo: ptr VkMicromapBuildInfoEXT, pSizeInfo: ptr VkMicromapBuildSizesInfoEXT): void {.stdcall.}](vkGetProc("vkGetMicromapBuildSizesEXT"))

proc loadVK_HUAWEI_cluster_culling_shader*() =
  ## Loads VK_HUAWEI_cluster_culling_shader extension commands.
  vkCmdDrawClusterHUAWEI = cast[proc(commandBuffer: VkCommandBuffer, groupCountX: uint32, groupCountY: uint32, groupCountZ: uint32): void {.stdcall.}](vkGetProc("vkCmdDrawClusterHUAWEI"))
  vkCmdDrawClusterIndirectHUAWEI = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize): void {.stdcall.}](vkGetProc("vkCmdDrawClusterIndirectHUAWEI"))

proc loadVK_EXT_pageable_device_local_memory*() =
  ## Loads VK_EXT_pageable_device_local_memory extension commands.
  vkSetDeviceMemoryPriorityEXT = cast[proc(device: VkDevice, memory: VkDeviceMemory, priority: float32): void {.stdcall.}](vkGetProc("vkSetDeviceMemoryPriorityEXT"))

proc loadVK_KHR_maintenance4*() =
  ## Loads VK_KHR_maintenance4 extension commands.
  vkGetDeviceBufferMemoryRequirementsKHR = cast[proc(device: VkDevice, pInfo: ptr VkDeviceBufferMemoryRequirements, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetDeviceBufferMemoryRequirementsKHR"))
  vkGetDeviceImageMemoryRequirementsKHR = cast[proc(device: VkDevice, pInfo: ptr VkDeviceImageMemoryRequirements, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetDeviceImageMemoryRequirementsKHR"))
  vkGetDeviceImageSparseMemoryRequirementsKHR = cast[proc(device: VkDevice, pInfo: ptr VkDeviceImageMemoryRequirements, pSparseMemoryRequirementCount: ptr uint32, pSparseMemoryRequirements: ptr VkSparseImageMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetDeviceImageSparseMemoryRequirementsKHR"))

proc loadVK_VALVE_descriptor_set_host_mapping*() =
  ## Loads VK_VALVE_descriptor_set_host_mapping extension commands.
  vkGetDescriptorSetLayoutHostMappingInfoVALVE = cast[proc(device: VkDevice, pBindingReference: ptr VkDescriptorSetBindingReferenceVALVE, pHostMapping: ptr VkDescriptorSetLayoutHostMappingInfoVALVE): void {.stdcall.}](vkGetProc("vkGetDescriptorSetLayoutHostMappingInfoVALVE"))
  vkGetDescriptorSetHostMappingVALVE = cast[proc(device: VkDevice, descriptorSet: VkDescriptorSet, ppData: ptr pointer): void {.stdcall.}](vkGetProc("vkGetDescriptorSetHostMappingVALVE"))

proc loadVK_NV_copy_memory_indirect*() =
  ## Loads VK_NV_copy_memory_indirect extension commands.
  vkCmdCopyMemoryIndirectNV = cast[proc(commandBuffer: VkCommandBuffer, copyBufferAddress: VkDeviceAddress, copyCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdCopyMemoryIndirectNV"))
  vkCmdCopyMemoryToImageIndirectNV = cast[proc(commandBuffer: VkCommandBuffer, copyBufferAddress: VkDeviceAddress, copyCount: uint32, stride: uint32, dstImage: VkImage, dstImageLayout: VkImageLayout, pImageSubresources: ptr VkImageSubresourceLayers): void {.stdcall.}](vkGetProc("vkCmdCopyMemoryToImageIndirectNV"))

proc loadVK_NV_memory_decompression*() =
  ## Loads VK_NV_memory_decompression extension commands.
  vkCmdDecompressMemoryNV = cast[proc(commandBuffer: VkCommandBuffer, decompressRegionCount: uint32, pDecompressMemoryRegions: ptr VkDecompressMemoryRegionNV): void {.stdcall.}](vkGetProc("vkCmdDecompressMemoryNV"))
  vkCmdDecompressMemoryIndirectCountNV = cast[proc(commandBuffer: VkCommandBuffer, indirectCommandsAddress: VkDeviceAddress, indirectCommandsCountAddress: VkDeviceAddress, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDecompressMemoryIndirectCountNV"))

proc loadVK_NV_device_generated_commands_compute*() =
  ## Loads VK_NV_device_generated_commands_compute extension commands.
  vkGetPipelineIndirectMemoryRequirementsNV = cast[proc(device: VkDevice, pCreateInfo: ptr VkComputePipelineCreateInfo, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetPipelineIndirectMemoryRequirementsNV"))
  vkCmdUpdatePipelineIndirectBufferNV = cast[proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline): void {.stdcall.}](vkGetProc("vkCmdUpdatePipelineIndirectBufferNV"))
  vkGetPipelineIndirectDeviceAddressNV = cast[proc(device: VkDevice, pInfo: ptr VkPipelineIndirectDeviceAddressInfoNV): VkDeviceAddress {.stdcall.}](vkGetProc("vkGetPipelineIndirectDeviceAddressNV"))

proc loadVK_OHOS_external_memory*() =
  ## Loads VK_OHOS_external_memory extension commands.
  vkGetNativeBufferPropertiesOHOS = cast[proc(device: VkDevice, buffer: pointer, pProperties: ptr VkNativeBufferPropertiesOHOS): VkResult {.stdcall.}](vkGetProc("vkGetNativeBufferPropertiesOHOS"))
  vkGetMemoryNativeBufferOHOS = cast[proc(device: VkDevice, pInfo: ptr VkMemoryGetNativeBufferInfoOHOS, pBuffer: ptr pointer): VkResult {.stdcall.}](vkGetProc("vkGetMemoryNativeBufferOHOS"))

proc loadVK_EXT_extended_dynamic_state3*() =
  ## Loads VK_EXT_extended_dynamic_state3 extension commands.
  vkCmdSetDepthClampEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, depthClampEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthClampEnableEXT"))
  vkCmdSetPolygonModeEXT = cast[proc(commandBuffer: VkCommandBuffer, polygonMode: VkPolygonMode): void {.stdcall.}](vkGetProc("vkCmdSetPolygonModeEXT"))
  vkCmdSetRasterizationSamplesEXT = cast[proc(commandBuffer: VkCommandBuffer, rasterizationSamples: VkSampleCountFlagBits): void {.stdcall.}](vkGetProc("vkCmdSetRasterizationSamplesEXT"))
  vkCmdSetSampleMaskEXT = cast[proc(commandBuffer: VkCommandBuffer, samples: VkSampleCountFlagBits, pSampleMask: ptr VkSampleMask): void {.stdcall.}](vkGetProc("vkCmdSetSampleMaskEXT"))
  vkCmdSetAlphaToCoverageEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, alphaToCoverageEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetAlphaToCoverageEnableEXT"))
  vkCmdSetAlphaToOneEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, alphaToOneEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetAlphaToOneEnableEXT"))
  vkCmdSetLogicOpEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, logicOpEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetLogicOpEnableEXT"))
  vkCmdSetColorBlendEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, firstAttachment: uint32, attachmentCount: uint32, pColorBlendEnables: ptr VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetColorBlendEnableEXT"))
  vkCmdSetColorBlendEquationEXT = cast[proc(commandBuffer: VkCommandBuffer, firstAttachment: uint32, attachmentCount: uint32, pColorBlendEquations: ptr VkColorBlendEquationEXT): void {.stdcall.}](vkGetProc("vkCmdSetColorBlendEquationEXT"))
  vkCmdSetColorWriteMaskEXT = cast[proc(commandBuffer: VkCommandBuffer, firstAttachment: uint32, attachmentCount: uint32, pColorWriteMasks: ptr VkColorComponentFlags): void {.stdcall.}](vkGetProc("vkCmdSetColorWriteMaskEXT"))
  vkCmdSetTessellationDomainOriginEXT = cast[proc(commandBuffer: VkCommandBuffer, domainOrigin: VkTessellationDomainOrigin): void {.stdcall.}](vkGetProc("vkCmdSetTessellationDomainOriginEXT"))
  vkCmdSetRasterizationStreamEXT = cast[proc(commandBuffer: VkCommandBuffer, rasterizationStream: uint32): void {.stdcall.}](vkGetProc("vkCmdSetRasterizationStreamEXT"))
  vkCmdSetConservativeRasterizationModeEXT = cast[proc(commandBuffer: VkCommandBuffer, conservativeRasterizationMode: VkConservativeRasterizationModeEXT): void {.stdcall.}](vkGetProc("vkCmdSetConservativeRasterizationModeEXT"))
  vkCmdSetExtraPrimitiveOverestimationSizeEXT = cast[proc(commandBuffer: VkCommandBuffer, extraPrimitiveOverestimationSize: float32): void {.stdcall.}](vkGetProc("vkCmdSetExtraPrimitiveOverestimationSizeEXT"))
  vkCmdSetDepthClipEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, depthClipEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthClipEnableEXT"))
  vkCmdSetSampleLocationsEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, sampleLocationsEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetSampleLocationsEnableEXT"))
  vkCmdSetColorBlendAdvancedEXT = cast[proc(commandBuffer: VkCommandBuffer, firstAttachment: uint32, attachmentCount: uint32, pColorBlendAdvanced: ptr VkColorBlendAdvancedEXT): void {.stdcall.}](vkGetProc("vkCmdSetColorBlendAdvancedEXT"))
  vkCmdSetProvokingVertexModeEXT = cast[proc(commandBuffer: VkCommandBuffer, provokingVertexMode: VkProvokingVertexModeEXT): void {.stdcall.}](vkGetProc("vkCmdSetProvokingVertexModeEXT"))
  vkCmdSetLineRasterizationModeEXT = cast[proc(commandBuffer: VkCommandBuffer, lineRasterizationMode: VkLineRasterizationModeEXT): void {.stdcall.}](vkGetProc("vkCmdSetLineRasterizationModeEXT"))
  vkCmdSetLineStippleEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, stippledLineEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetLineStippleEnableEXT"))
  vkCmdSetDepthClipNegativeOneToOneEXT = cast[proc(commandBuffer: VkCommandBuffer, negativeOneToOne: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthClipNegativeOneToOneEXT"))
  vkCmdSetViewportWScalingEnableNV = cast[proc(commandBuffer: VkCommandBuffer, viewportWScalingEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetViewportWScalingEnableNV"))
  vkCmdSetViewportSwizzleNV = cast[proc(commandBuffer: VkCommandBuffer, firstViewport: uint32, viewportCount: uint32, pViewportSwizzles: ptr VkViewportSwizzleNV): void {.stdcall.}](vkGetProc("vkCmdSetViewportSwizzleNV"))
  vkCmdSetCoverageToColorEnableNV = cast[proc(commandBuffer: VkCommandBuffer, coverageToColorEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetCoverageToColorEnableNV"))
  vkCmdSetCoverageToColorLocationNV = cast[proc(commandBuffer: VkCommandBuffer, coverageToColorLocation: uint32): void {.stdcall.}](vkGetProc("vkCmdSetCoverageToColorLocationNV"))
  vkCmdSetCoverageModulationModeNV = cast[proc(commandBuffer: VkCommandBuffer, coverageModulationMode: VkCoverageModulationModeNV): void {.stdcall.}](vkGetProc("vkCmdSetCoverageModulationModeNV"))
  vkCmdSetCoverageModulationTableEnableNV = cast[proc(commandBuffer: VkCommandBuffer, coverageModulationTableEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetCoverageModulationTableEnableNV"))
  vkCmdSetCoverageModulationTableNV = cast[proc(commandBuffer: VkCommandBuffer, coverageModulationTableCount: uint32, pCoverageModulationTable: ptr float32): void {.stdcall.}](vkGetProc("vkCmdSetCoverageModulationTableNV"))
  vkCmdSetShadingRateImageEnableNV = cast[proc(commandBuffer: VkCommandBuffer, shadingRateImageEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetShadingRateImageEnableNV"))
  vkCmdSetRepresentativeFragmentTestEnableNV = cast[proc(commandBuffer: VkCommandBuffer, representativeFragmentTestEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetRepresentativeFragmentTestEnableNV"))
  vkCmdSetCoverageReductionModeNV = cast[proc(commandBuffer: VkCommandBuffer, coverageReductionMode: VkCoverageReductionModeNV): void {.stdcall.}](vkGetProc("vkCmdSetCoverageReductionModeNV"))

proc loadVK_ARM_tensors*() =
  ## Loads VK_ARM_tensors extension commands.
  vkCreateTensorARM = cast[proc(device: VkDevice, pCreateInfo: ptr VkTensorCreateInfoARM, pAllocator: ptr VkAllocationCallbacks, pTensor: ptr VkTensorARM): VkResult {.stdcall.}](vkGetProc("vkCreateTensorARM"))
  vkDestroyTensorARM = cast[proc(device: VkDevice, tensor: VkTensorARM, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyTensorARM"))
  vkCreateTensorViewARM = cast[proc(device: VkDevice, pCreateInfo: ptr VkTensorViewCreateInfoARM, pAllocator: ptr VkAllocationCallbacks, pView: ptr VkTensorViewARM): VkResult {.stdcall.}](vkGetProc("vkCreateTensorViewARM"))
  vkDestroyTensorViewARM = cast[proc(device: VkDevice, tensorView: VkTensorViewARM, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyTensorViewARM"))
  vkGetTensorMemoryRequirementsARM = cast[proc(device: VkDevice, pInfo: ptr VkTensorMemoryRequirementsInfoARM, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetTensorMemoryRequirementsARM"))
  vkBindTensorMemoryARM = cast[proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindTensorMemoryInfoARM): VkResult {.stdcall.}](vkGetProc("vkBindTensorMemoryARM"))
  vkGetDeviceTensorMemoryRequirementsARM = cast[proc(device: VkDevice, pInfo: ptr VkDeviceTensorMemoryRequirementsARM, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetDeviceTensorMemoryRequirementsARM"))
  vkCmdCopyTensorARM = cast[proc(commandBuffer: VkCommandBuffer, pCopyTensorInfo: ptr VkCopyTensorInfoARM): void {.stdcall.}](vkGetProc("vkCmdCopyTensorARM"))
  vkGetPhysicalDeviceExternalTensorPropertiesARM = cast[proc(physicalDevice: VkPhysicalDevice, pExternalTensorInfo: ptr VkPhysicalDeviceExternalTensorInfoARM, pExternalTensorProperties: ptr VkExternalTensorPropertiesARM): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceExternalTensorPropertiesARM"))
  vkGetTensorOpaqueCaptureDescriptorDataARM = cast[proc(device: VkDevice, pInfo: ptr VkTensorCaptureDescriptorDataInfoARM, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetTensorOpaqueCaptureDescriptorDataARM"))
  vkGetTensorViewOpaqueCaptureDescriptorDataARM = cast[proc(device: VkDevice, pInfo: ptr VkTensorViewCaptureDescriptorDataInfoARM, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetTensorViewOpaqueCaptureDescriptorDataARM"))

proc loadVK_EXT_shader_module_identifier*() =
  ## Loads VK_EXT_shader_module_identifier extension commands.
  vkGetShaderModuleIdentifierEXT = cast[proc(device: VkDevice, shaderModule: VkShaderModule, pIdentifier: ptr VkShaderModuleIdentifierEXT): void {.stdcall.}](vkGetProc("vkGetShaderModuleIdentifierEXT"))
  vkGetShaderModuleCreateInfoIdentifierEXT = cast[proc(device: VkDevice, pCreateInfo: ptr VkShaderModuleCreateInfo, pIdentifier: ptr VkShaderModuleIdentifierEXT): void {.stdcall.}](vkGetProc("vkGetShaderModuleCreateInfoIdentifierEXT"))

proc loadVK_NV_optical_flow*() =
  ## Loads VK_NV_optical_flow extension commands.
  vkGetPhysicalDeviceOpticalFlowImageFormatsNV = cast[proc(physicalDevice: VkPhysicalDevice, pOpticalFlowImageFormatInfo: ptr VkOpticalFlowImageFormatInfoNV, pFormatCount: ptr uint32, pImageFormatProperties: ptr VkOpticalFlowImageFormatPropertiesNV): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceOpticalFlowImageFormatsNV"))
  vkCreateOpticalFlowSessionNV = cast[proc(device: VkDevice, pCreateInfo: ptr VkOpticalFlowSessionCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pSession: ptr VkOpticalFlowSessionNV): VkResult {.stdcall.}](vkGetProc("vkCreateOpticalFlowSessionNV"))
  vkDestroyOpticalFlowSessionNV = cast[proc(device: VkDevice, session: VkOpticalFlowSessionNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyOpticalFlowSessionNV"))
  vkBindOpticalFlowSessionImageNV = cast[proc(device: VkDevice, session: VkOpticalFlowSessionNV, bindingPoint: VkOpticalFlowSessionBindingPointNV, view: VkImageView, layout: VkImageLayout): VkResult {.stdcall.}](vkGetProc("vkBindOpticalFlowSessionImageNV"))
  vkCmdOpticalFlowExecuteNV = cast[proc(commandBuffer: VkCommandBuffer, session: VkOpticalFlowSessionNV, pExecuteInfo: ptr VkOpticalFlowExecuteInfoNV): void {.stdcall.}](vkGetProc("vkCmdOpticalFlowExecuteNV"))

proc loadVK_KHR_maintenance5*() =
  ## Loads VK_KHR_maintenance5 extension commands.
  vkCmdBindIndexBuffer2KHR = cast[proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, size: VkDeviceSize, indexType: VkIndexType): void {.stdcall.}](vkGetProc("vkCmdBindIndexBuffer2KHR"))
  vkGetRenderingAreaGranularityKHR = cast[proc(device: VkDevice, pRenderingAreaInfo: ptr VkRenderingAreaInfo, pGranularity: ptr VkExtent2D): void {.stdcall.}](vkGetProc("vkGetRenderingAreaGranularityKHR"))
  vkGetDeviceImageSubresourceLayoutKHR = cast[proc(device: VkDevice, pInfo: ptr VkDeviceImageSubresourceInfo, pLayout: ptr VkSubresourceLayout2): void {.stdcall.}](vkGetProc("vkGetDeviceImageSubresourceLayoutKHR"))
  vkGetImageSubresourceLayout2KHR = cast[proc(device: VkDevice, image: VkImage, pSubresource: ptr VkImageSubresource2, pLayout: ptr VkSubresourceLayout2): void {.stdcall.}](vkGetProc("vkGetImageSubresourceLayout2KHR"))

proc loadVK_AMD_anti_lag*() =
  ## Loads VK_AMD_anti_lag extension commands.
  vkAntiLagUpdateAMD = cast[proc(device: VkDevice, pData: ptr VkAntiLagDataAMD): void {.stdcall.}](vkGetProc("vkAntiLagUpdateAMD"))

proc loadVK_KHR_present_wait2*() =
  ## Loads VK_KHR_present_wait2 extension commands.
  vkWaitForPresent2KHR = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, pPresentWait2Info: ptr VkPresentWait2InfoKHR): VkResult {.stdcall.}](vkGetProc("vkWaitForPresent2KHR"))

proc loadVK_EXT_shader_object*() =
  ## Loads VK_EXT_shader_object extension commands.
  vkCreateShadersEXT = cast[proc(device: VkDevice, createInfoCount: uint32, pCreateInfos: ptr VkShaderCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pShaders: ptr VkShaderEXT): VkResult {.stdcall.}](vkGetProc("vkCreateShadersEXT"))
  vkDestroyShaderEXT = cast[proc(device: VkDevice, shader: VkShaderEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyShaderEXT"))
  vkGetShaderBinaryDataEXT = cast[proc(device: VkDevice, shader: VkShaderEXT, pDataSize: ptr csize_t, pData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetShaderBinaryDataEXT"))
  vkCmdBindShadersEXT = cast[proc(commandBuffer: VkCommandBuffer, stageCount: uint32, pStages: ptr VkShaderStageFlagBits, pShaders: ptr VkShaderEXT): void {.stdcall.}](vkGetProc("vkCmdBindShadersEXT"))
  vkCmdSetCullModeEXT = cast[proc(commandBuffer: VkCommandBuffer, cullMode: VkCullModeFlags): void {.stdcall.}](vkGetProc("vkCmdSetCullModeEXT"))
  vkCmdSetFrontFaceEXT = cast[proc(commandBuffer: VkCommandBuffer, frontFace: VkFrontFace): void {.stdcall.}](vkGetProc("vkCmdSetFrontFaceEXT"))
  vkCmdSetPrimitiveTopologyEXT = cast[proc(commandBuffer: VkCommandBuffer, primitiveTopology: VkPrimitiveTopology): void {.stdcall.}](vkGetProc("vkCmdSetPrimitiveTopologyEXT"))
  vkCmdSetViewportWithCountEXT = cast[proc(commandBuffer: VkCommandBuffer, viewportCount: uint32, pViewports: ptr VkViewport): void {.stdcall.}](vkGetProc("vkCmdSetViewportWithCountEXT"))
  vkCmdSetScissorWithCountEXT = cast[proc(commandBuffer: VkCommandBuffer, scissorCount: uint32, pScissors: ptr VkRect2D): void {.stdcall.}](vkGetProc("vkCmdSetScissorWithCountEXT"))
  vkCmdBindVertexBuffers2EXT = cast[proc(commandBuffer: VkCommandBuffer, firstBinding: uint32, bindingCount: uint32, pBuffers: ptr VkBuffer, pOffsets: ptr VkDeviceSize, pSizes: ptr VkDeviceSize, pStrides: ptr VkDeviceSize): void {.stdcall.}](vkGetProc("vkCmdBindVertexBuffers2EXT"))
  vkCmdSetDepthTestEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, depthTestEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthTestEnableEXT"))
  vkCmdSetDepthWriteEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, depthWriteEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthWriteEnableEXT"))
  vkCmdSetDepthCompareOpEXT = cast[proc(commandBuffer: VkCommandBuffer, depthCompareOp: VkCompareOp): void {.stdcall.}](vkGetProc("vkCmdSetDepthCompareOpEXT"))
  vkCmdSetDepthBoundsTestEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, depthBoundsTestEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthBoundsTestEnableEXT"))
  vkCmdSetStencilTestEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, stencilTestEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetStencilTestEnableEXT"))
  vkCmdSetStencilOpEXT = cast[proc(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, failOp: VkStencilOp, passOp: VkStencilOp, depthFailOp: VkStencilOp, compareOp: VkCompareOp): void {.stdcall.}](vkGetProc("vkCmdSetStencilOpEXT"))
  vkCmdSetVertexInputEXT = cast[proc(commandBuffer: VkCommandBuffer, vertexBindingDescriptionCount: uint32, pVertexBindingDescriptions: ptr VkVertexInputBindingDescription2EXT, vertexAttributeDescriptionCount: uint32, pVertexAttributeDescriptions: ptr VkVertexInputAttributeDescription2EXT): void {.stdcall.}](vkGetProc("vkCmdSetVertexInputEXT"))
  vkCmdSetPatchControlPointsEXT = cast[proc(commandBuffer: VkCommandBuffer, patchControlPoints: uint32): void {.stdcall.}](vkGetProc("vkCmdSetPatchControlPointsEXT"))
  vkCmdSetRasterizerDiscardEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, rasterizerDiscardEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetRasterizerDiscardEnableEXT"))
  vkCmdSetDepthBiasEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, depthBiasEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthBiasEnableEXT"))
  vkCmdSetLogicOpEXT = cast[proc(commandBuffer: VkCommandBuffer, logicOp: VkLogicOp): void {.stdcall.}](vkGetProc("vkCmdSetLogicOpEXT"))
  vkCmdSetPrimitiveRestartEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, primitiveRestartEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetPrimitiveRestartEnableEXT"))
  vkCmdSetTessellationDomainOriginEXT = cast[proc(commandBuffer: VkCommandBuffer, domainOrigin: VkTessellationDomainOrigin): void {.stdcall.}](vkGetProc("vkCmdSetTessellationDomainOriginEXT"))
  vkCmdSetDepthClampEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, depthClampEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthClampEnableEXT"))
  vkCmdSetPolygonModeEXT = cast[proc(commandBuffer: VkCommandBuffer, polygonMode: VkPolygonMode): void {.stdcall.}](vkGetProc("vkCmdSetPolygonModeEXT"))
  vkCmdSetRasterizationSamplesEXT = cast[proc(commandBuffer: VkCommandBuffer, rasterizationSamples: VkSampleCountFlagBits): void {.stdcall.}](vkGetProc("vkCmdSetRasterizationSamplesEXT"))
  vkCmdSetSampleMaskEXT = cast[proc(commandBuffer: VkCommandBuffer, samples: VkSampleCountFlagBits, pSampleMask: ptr VkSampleMask): void {.stdcall.}](vkGetProc("vkCmdSetSampleMaskEXT"))
  vkCmdSetAlphaToCoverageEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, alphaToCoverageEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetAlphaToCoverageEnableEXT"))
  vkCmdSetAlphaToOneEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, alphaToOneEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetAlphaToOneEnableEXT"))
  vkCmdSetLogicOpEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, logicOpEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetLogicOpEnableEXT"))
  vkCmdSetColorBlendEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, firstAttachment: uint32, attachmentCount: uint32, pColorBlendEnables: ptr VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetColorBlendEnableEXT"))
  vkCmdSetColorBlendEquationEXT = cast[proc(commandBuffer: VkCommandBuffer, firstAttachment: uint32, attachmentCount: uint32, pColorBlendEquations: ptr VkColorBlendEquationEXT): void {.stdcall.}](vkGetProc("vkCmdSetColorBlendEquationEXT"))
  vkCmdSetColorWriteMaskEXT = cast[proc(commandBuffer: VkCommandBuffer, firstAttachment: uint32, attachmentCount: uint32, pColorWriteMasks: ptr VkColorComponentFlags): void {.stdcall.}](vkGetProc("vkCmdSetColorWriteMaskEXT"))
  vkCmdSetRasterizationStreamEXT = cast[proc(commandBuffer: VkCommandBuffer, rasterizationStream: uint32): void {.stdcall.}](vkGetProc("vkCmdSetRasterizationStreamEXT"))
  vkCmdSetConservativeRasterizationModeEXT = cast[proc(commandBuffer: VkCommandBuffer, conservativeRasterizationMode: VkConservativeRasterizationModeEXT): void {.stdcall.}](vkGetProc("vkCmdSetConservativeRasterizationModeEXT"))
  vkCmdSetExtraPrimitiveOverestimationSizeEXT = cast[proc(commandBuffer: VkCommandBuffer, extraPrimitiveOverestimationSize: float32): void {.stdcall.}](vkGetProc("vkCmdSetExtraPrimitiveOverestimationSizeEXT"))
  vkCmdSetDepthClipEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, depthClipEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthClipEnableEXT"))
  vkCmdSetSampleLocationsEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, sampleLocationsEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetSampleLocationsEnableEXT"))
  vkCmdSetColorBlendAdvancedEXT = cast[proc(commandBuffer: VkCommandBuffer, firstAttachment: uint32, attachmentCount: uint32, pColorBlendAdvanced: ptr VkColorBlendAdvancedEXT): void {.stdcall.}](vkGetProc("vkCmdSetColorBlendAdvancedEXT"))
  vkCmdSetProvokingVertexModeEXT = cast[proc(commandBuffer: VkCommandBuffer, provokingVertexMode: VkProvokingVertexModeEXT): void {.stdcall.}](vkGetProc("vkCmdSetProvokingVertexModeEXT"))
  vkCmdSetLineRasterizationModeEXT = cast[proc(commandBuffer: VkCommandBuffer, lineRasterizationMode: VkLineRasterizationModeEXT): void {.stdcall.}](vkGetProc("vkCmdSetLineRasterizationModeEXT"))
  vkCmdSetLineStippleEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, stippledLineEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetLineStippleEnableEXT"))
  vkCmdSetDepthClipNegativeOneToOneEXT = cast[proc(commandBuffer: VkCommandBuffer, negativeOneToOne: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetDepthClipNegativeOneToOneEXT"))
  vkCmdSetViewportWScalingEnableNV = cast[proc(commandBuffer: VkCommandBuffer, viewportWScalingEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetViewportWScalingEnableNV"))
  vkCmdSetViewportSwizzleNV = cast[proc(commandBuffer: VkCommandBuffer, firstViewport: uint32, viewportCount: uint32, pViewportSwizzles: ptr VkViewportSwizzleNV): void {.stdcall.}](vkGetProc("vkCmdSetViewportSwizzleNV"))
  vkCmdSetCoverageToColorEnableNV = cast[proc(commandBuffer: VkCommandBuffer, coverageToColorEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetCoverageToColorEnableNV"))
  vkCmdSetCoverageToColorLocationNV = cast[proc(commandBuffer: VkCommandBuffer, coverageToColorLocation: uint32): void {.stdcall.}](vkGetProc("vkCmdSetCoverageToColorLocationNV"))
  vkCmdSetCoverageModulationModeNV = cast[proc(commandBuffer: VkCommandBuffer, coverageModulationMode: VkCoverageModulationModeNV): void {.stdcall.}](vkGetProc("vkCmdSetCoverageModulationModeNV"))
  vkCmdSetCoverageModulationTableEnableNV = cast[proc(commandBuffer: VkCommandBuffer, coverageModulationTableEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetCoverageModulationTableEnableNV"))
  vkCmdSetCoverageModulationTableNV = cast[proc(commandBuffer: VkCommandBuffer, coverageModulationTableCount: uint32, pCoverageModulationTable: ptr float32): void {.stdcall.}](vkGetProc("vkCmdSetCoverageModulationTableNV"))
  vkCmdSetShadingRateImageEnableNV = cast[proc(commandBuffer: VkCommandBuffer, shadingRateImageEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetShadingRateImageEnableNV"))
  vkCmdSetRepresentativeFragmentTestEnableNV = cast[proc(commandBuffer: VkCommandBuffer, representativeFragmentTestEnable: VkBool32): void {.stdcall.}](vkGetProc("vkCmdSetRepresentativeFragmentTestEnableNV"))
  vkCmdSetCoverageReductionModeNV = cast[proc(commandBuffer: VkCommandBuffer, coverageReductionMode: VkCoverageReductionModeNV): void {.stdcall.}](vkGetProc("vkCmdSetCoverageReductionModeNV"))
  vkCmdSetDepthClampRangeEXT = cast[proc(commandBuffer: VkCommandBuffer, depthClampMode: VkDepthClampModeEXT, pDepthClampRange: ptr VkDepthClampRangeEXT): void {.stdcall.}](vkGetProc("vkCmdSetDepthClampRangeEXT"))

proc loadVK_KHR_pipeline_binary*() =
  ## Loads VK_KHR_pipeline_binary extension commands.
  vkCreatePipelineBinariesKHR = cast[proc(device: VkDevice, pCreateInfo: ptr VkPipelineBinaryCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pBinaries: ptr VkPipelineBinaryHandlesInfoKHR): VkResult {.stdcall.}](vkGetProc("vkCreatePipelineBinariesKHR"))
  vkDestroyPipelineBinaryKHR = cast[proc(device: VkDevice, pipelineBinary: VkPipelineBinaryKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyPipelineBinaryKHR"))
  vkGetPipelineKeyKHR = cast[proc(device: VkDevice, pPipelineCreateInfo: ptr VkPipelineCreateInfoKHR, pPipelineKey: ptr VkPipelineBinaryKeyKHR): VkResult {.stdcall.}](vkGetProc("vkGetPipelineKeyKHR"))
  vkGetPipelineBinaryDataKHR = cast[proc(device: VkDevice, pInfo: ptr VkPipelineBinaryDataInfoKHR, pPipelineBinaryKey: ptr VkPipelineBinaryKeyKHR, pPipelineBinaryDataSize: ptr csize_t, pPipelineBinaryData: pointer): VkResult {.stdcall.}](vkGetProc("vkGetPipelineBinaryDataKHR"))
  vkReleaseCapturedPipelineDataKHR = cast[proc(device: VkDevice, pInfo: ptr VkReleaseCapturedPipelineDataInfoKHR, pAllocator: ptr VkAllocationCallbacks): VkResult {.stdcall.}](vkGetProc("vkReleaseCapturedPipelineDataKHR"))

proc loadVK_QCOM_tile_properties*() =
  ## Loads VK_QCOM_tile_properties extension commands.
  vkGetFramebufferTilePropertiesQCOM = cast[proc(device: VkDevice, framebuffer: VkFramebuffer, pPropertiesCount: ptr uint32, pProperties: ptr VkTilePropertiesQCOM): VkResult {.stdcall.}](vkGetProc("vkGetFramebufferTilePropertiesQCOM"))
  vkGetDynamicRenderingTilePropertiesQCOM = cast[proc(device: VkDevice, pRenderingInfo: ptr VkRenderingInfo, pProperties: ptr VkTilePropertiesQCOM): VkResult {.stdcall.}](vkGetProc("vkGetDynamicRenderingTilePropertiesQCOM"))

proc loadVK_KHR_swapchain_maintenance1*() =
  ## Loads VK_KHR_swapchain_maintenance1 extension commands.
  vkReleaseSwapchainImagesKHR = cast[proc(device: VkDevice, pReleaseInfo: ptr VkReleaseSwapchainImagesInfoKHR): VkResult {.stdcall.}](vkGetProc("vkReleaseSwapchainImagesKHR"))

proc loadVK_NV_external_sci_sync2*() =
  ## Loads VK_NV_external_sci_sync2 extension commands.
  vkCreateSemaphoreSciSyncPoolNV = cast[proc(device: VkDevice, pCreateInfo: ptr VkSemaphoreSciSyncPoolCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pSemaphorePool: ptr VkSemaphoreSciSyncPoolNV): VkResult {.stdcall.}](vkGetProc("vkCreateSemaphoreSciSyncPoolNV"))
  vkDestroySemaphoreSciSyncPoolNV = cast[proc(device: VkDevice, semaphorePool: VkSemaphoreSciSyncPoolNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroySemaphoreSciSyncPoolNV"))
  vkGetFenceSciSyncFenceNV = cast[proc(device: VkDevice, pGetSciSyncHandleInfo: ptr VkFenceGetSciSyncInfoNV, pHandle: pointer): VkResult {.stdcall.}](vkGetProc("vkGetFenceSciSyncFenceNV"))
  vkGetFenceSciSyncObjNV = cast[proc(device: VkDevice, pGetSciSyncHandleInfo: ptr VkFenceGetSciSyncInfoNV, pHandle: pointer): VkResult {.stdcall.}](vkGetProc("vkGetFenceSciSyncObjNV"))
  vkImportFenceSciSyncFenceNV = cast[proc(device: VkDevice, pImportFenceSciSyncInfo: ptr VkImportFenceSciSyncInfoNV): VkResult {.stdcall.}](vkGetProc("vkImportFenceSciSyncFenceNV"))
  vkImportFenceSciSyncObjNV = cast[proc(device: VkDevice, pImportFenceSciSyncInfo: ptr VkImportFenceSciSyncInfoNV): VkResult {.stdcall.}](vkGetProc("vkImportFenceSciSyncObjNV"))
  vkGetPhysicalDeviceSciSyncAttributesNV = cast[proc(physicalDevice: VkPhysicalDevice, pSciSyncAttributesInfo: ptr VkSciSyncAttributesInfoNV, pAttributes: pointer): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceSciSyncAttributesNV"))

proc loadVK_NV_cooperative_vector*() =
  ## Loads VK_NV_cooperative_vector extension commands.
  vkGetPhysicalDeviceCooperativeVectorPropertiesNV = cast[proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkCooperativeVectorPropertiesNV): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceCooperativeVectorPropertiesNV"))
  vkConvertCooperativeVectorMatrixNV = cast[proc(device: VkDevice, pInfo: ptr VkConvertCooperativeVectorMatrixInfoNV): VkResult {.stdcall.}](vkGetProc("vkConvertCooperativeVectorMatrixNV"))
  vkCmdConvertCooperativeVectorMatrixNV = cast[proc(commandBuffer: VkCommandBuffer, infoCount: uint32, pInfos: ptr VkConvertCooperativeVectorMatrixInfoNV): void {.stdcall.}](vkGetProc("vkCmdConvertCooperativeVectorMatrixNV"))

proc loadVK_NV_low_latency2*() =
  ## Loads VK_NV_low_latency2 extension commands.
  vkSetLatencySleepModeNV = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, pSleepModeInfo: ptr VkLatencySleepModeInfoNV): VkResult {.stdcall.}](vkGetProc("vkSetLatencySleepModeNV"))
  vkLatencySleepNV = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, pSleepInfo: ptr VkLatencySleepInfoNV): VkResult {.stdcall.}](vkGetProc("vkLatencySleepNV"))
  vkSetLatencyMarkerNV = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, pLatencyMarkerInfo: ptr VkSetLatencyMarkerInfoNV): void {.stdcall.}](vkGetProc("vkSetLatencyMarkerNV"))
  vkGetLatencyTimingsNV = cast[proc(device: VkDevice, swapchain: VkSwapchainKHR, pLatencyMarkerInfo: ptr VkGetLatencyMarkerInfoNV): void {.stdcall.}](vkGetProc("vkGetLatencyTimingsNV"))
  vkQueueNotifyOutOfBandNV = cast[proc(queue: VkQueue, pQueueTypeInfo: ptr VkOutOfBandQueueTypeInfoNV): void {.stdcall.}](vkGetProc("vkQueueNotifyOutOfBandNV"))

proc loadVK_KHR_cooperative_matrix*() =
  ## Loads VK_KHR_cooperative_matrix extension commands.
  vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR = cast[proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkCooperativeMatrixPropertiesKHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR"))

proc loadVK_ARM_data_graph*() =
  ## Loads VK_ARM_data_graph extension commands.
  vkCreateDataGraphPipelinesARM = cast[proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pipelineCache: VkPipelineCache, createInfoCount: uint32, pCreateInfos: ptr VkDataGraphPipelineCreateInfoARM, pAllocator: ptr VkAllocationCallbacks, pPipelines: ptr VkPipeline): VkResult {.stdcall.}](vkGetProc("vkCreateDataGraphPipelinesARM"))
  vkCreateDataGraphPipelineSessionARM = cast[proc(device: VkDevice, pCreateInfo: ptr VkDataGraphPipelineSessionCreateInfoARM, pAllocator: ptr VkAllocationCallbacks, pSession: ptr VkDataGraphPipelineSessionARM): VkResult {.stdcall.}](vkGetProc("vkCreateDataGraphPipelineSessionARM"))
  vkGetDataGraphPipelineSessionBindPointRequirementsARM = cast[proc(device: VkDevice, pInfo: ptr VkDataGraphPipelineSessionBindPointRequirementsInfoARM, pBindPointRequirementCount: ptr uint32, pBindPointRequirements: ptr VkDataGraphPipelineSessionBindPointRequirementARM): VkResult {.stdcall.}](vkGetProc("vkGetDataGraphPipelineSessionBindPointRequirementsARM"))
  vkGetDataGraphPipelineSessionMemoryRequirementsARM = cast[proc(device: VkDevice, pInfo: ptr VkDataGraphPipelineSessionMemoryRequirementsInfoARM, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetDataGraphPipelineSessionMemoryRequirementsARM"))
  vkBindDataGraphPipelineSessionMemoryARM = cast[proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindDataGraphPipelineSessionMemoryInfoARM): VkResult {.stdcall.}](vkGetProc("vkBindDataGraphPipelineSessionMemoryARM"))
  vkDestroyDataGraphPipelineSessionARM = cast[proc(device: VkDevice, session: VkDataGraphPipelineSessionARM, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyDataGraphPipelineSessionARM"))
  vkCmdDispatchDataGraphARM = cast[proc(commandBuffer: VkCommandBuffer, session: VkDataGraphPipelineSessionARM, pInfo: ptr VkDataGraphPipelineDispatchInfoARM): void {.stdcall.}](vkGetProc("vkCmdDispatchDataGraphARM"))
  vkGetDataGraphPipelineAvailablePropertiesARM = cast[proc(device: VkDevice, pPipelineInfo: ptr VkDataGraphPipelineInfoARM, pPropertiesCount: ptr uint32, pProperties: ptr VkDataGraphPipelinePropertyARM): VkResult {.stdcall.}](vkGetProc("vkGetDataGraphPipelineAvailablePropertiesARM"))
  vkGetDataGraphPipelinePropertiesARM = cast[proc(device: VkDevice, pPipelineInfo: ptr VkDataGraphPipelineInfoARM, propertiesCount: uint32, pProperties: ptr VkDataGraphPipelinePropertyQueryResultARM): VkResult {.stdcall.}](vkGetProc("vkGetDataGraphPipelinePropertiesARM"))
  vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM = cast[proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, pQueueFamilyDataGraphPropertyCount: ptr uint32, pQueueFamilyDataGraphProperties: ptr VkQueueFamilyDataGraphPropertiesARM): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM"))
  vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM = cast[proc(physicalDevice: VkPhysicalDevice, pQueueFamilyDataGraphProcessingEngineInfo: ptr VkPhysicalDeviceQueueFamilyDataGraphProcessingEngineInfoARM, pQueueFamilyDataGraphProcessingEngineProperties: ptr VkQueueFamilyDataGraphProcessingEnginePropertiesARM): void {.stdcall.}](vkGetProc("vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM"))

proc loadVK_EXT_attachment_feedback_loop_dynamic_state*() =
  ## Loads VK_EXT_attachment_feedback_loop_dynamic_state extension commands.
  vkCmdSetAttachmentFeedbackLoopEnableEXT = cast[proc(commandBuffer: VkCommandBuffer, aspectMask: VkImageAspectFlags): void {.stdcall.}](vkGetProc("vkCmdSetAttachmentFeedbackLoopEnableEXT"))

proc loadVK_QNX_external_memory_screen_buffer*() =
  ## Loads VK_QNX_external_memory_screen_buffer extension commands.
  vkGetScreenBufferPropertiesQNX = cast[proc(device: VkDevice, buffer: pointer, pProperties: ptr VkScreenBufferPropertiesQNX): VkResult {.stdcall.}](vkGetProc("vkGetScreenBufferPropertiesQNX"))

proc loadVK_KHR_line_rasterization*() =
  ## Loads VK_KHR_line_rasterization extension commands.
  vkCmdSetLineStippleKHR = cast[proc(commandBuffer: VkCommandBuffer, lineStippleFactor: uint32, lineStipplePattern: uint16): void {.stdcall.}](vkGetProc("vkCmdSetLineStippleKHR"))

proc loadVK_KHR_calibrated_timestamps*() =
  ## Loads VK_KHR_calibrated_timestamps extension commands.
  vkGetPhysicalDeviceCalibrateableTimeDomainsKHR = cast[proc(physicalDevice: VkPhysicalDevice, pTimeDomainCount: ptr uint32, pTimeDomains: ptr VkTimeDomainKHR): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceCalibrateableTimeDomainsKHR"))
  vkGetCalibratedTimestampsKHR = cast[proc(device: VkDevice, timestampCount: uint32, pTimestampInfos: ptr VkCalibratedTimestampInfoKHR, pTimestamps: ptr uint64, pMaxDeviation: ptr uint64): VkResult {.stdcall.}](vkGetProc("vkGetCalibratedTimestampsKHR"))

proc loadVK_KHR_maintenance6*() =
  ## Loads VK_KHR_maintenance6 extension commands.
  vkCmdBindDescriptorSets2KHR = cast[proc(commandBuffer: VkCommandBuffer, pBindDescriptorSetsInfo: ptr VkBindDescriptorSetsInfo): void {.stdcall.}](vkGetProc("vkCmdBindDescriptorSets2KHR"))
  vkCmdPushConstants2KHR = cast[proc(commandBuffer: VkCommandBuffer, pPushConstantsInfo: ptr VkPushConstantsInfo): void {.stdcall.}](vkGetProc("vkCmdPushConstants2KHR"))
  vkCmdPushDescriptorSet2KHR = cast[proc(commandBuffer: VkCommandBuffer, pPushDescriptorSetInfo: ptr VkPushDescriptorSetInfo): void {.stdcall.}](vkGetProc("vkCmdPushDescriptorSet2KHR"))
  vkCmdPushDescriptorSetWithTemplate2KHR = cast[proc(commandBuffer: VkCommandBuffer, pPushDescriptorSetWithTemplateInfo: ptr VkPushDescriptorSetWithTemplateInfo): void {.stdcall.}](vkGetProc("vkCmdPushDescriptorSetWithTemplate2KHR"))
  vkCmdSetDescriptorBufferOffsets2EXT = cast[proc(commandBuffer: VkCommandBuffer, pSetDescriptorBufferOffsetsInfo: ptr VkSetDescriptorBufferOffsetsInfoEXT): void {.stdcall.}](vkGetProc("vkCmdSetDescriptorBufferOffsets2EXT"))
  vkCmdBindDescriptorBufferEmbeddedSamplers2EXT = cast[proc(commandBuffer: VkCommandBuffer, pBindDescriptorBufferEmbeddedSamplersInfo: ptr VkBindDescriptorBufferEmbeddedSamplersInfoEXT): void {.stdcall.}](vkGetProc("vkCmdBindDescriptorBufferEmbeddedSamplers2EXT"))

proc loadVK_QCOM_tile_memory_heap*() =
  ## Loads VK_QCOM_tile_memory_heap extension commands.
  vkCmdBindTileMemoryQCOM = cast[proc(commandBuffer: VkCommandBuffer, pTileMemoryBindInfo: ptr VkTileMemoryBindInfoQCOM): void {.stdcall.}](vkGetProc("vkCmdBindTileMemoryQCOM"))

proc loadVK_KHR_copy_memory_indirect*() =
  ## Loads VK_KHR_copy_memory_indirect extension commands.
  vkCmdCopyMemoryIndirectKHR = cast[proc(commandBuffer: VkCommandBuffer, pCopyMemoryIndirectInfo: ptr VkCopyMemoryIndirectInfoKHR): void {.stdcall.}](vkGetProc("vkCmdCopyMemoryIndirectKHR"))
  vkCmdCopyMemoryToImageIndirectKHR = cast[proc(commandBuffer: VkCommandBuffer, pCopyMemoryToImageIndirectInfo: ptr VkCopyMemoryToImageIndirectInfoKHR): void {.stdcall.}](vkGetProc("vkCmdCopyMemoryToImageIndirectKHR"))

proc loadVK_EXT_memory_decompression*() =
  ## Loads VK_EXT_memory_decompression extension commands.
  vkCmdDecompressMemoryEXT = cast[proc(commandBuffer: VkCommandBuffer, pDecompressMemoryInfoEXT: ptr VkDecompressMemoryInfoEXT): void {.stdcall.}](vkGetProc("vkCmdDecompressMemoryEXT"))
  vkCmdDecompressMemoryIndirectCountEXT = cast[proc(commandBuffer: VkCommandBuffer, decompressionMethod: VkMemoryDecompressionMethodFlagsEXT, indirectCommandsAddress: VkDeviceAddress, indirectCommandsCountAddress: VkDeviceAddress, maxDecompressionCount: uint32, stride: uint32): void {.stdcall.}](vkGetProc("vkCmdDecompressMemoryIndirectCountEXT"))

proc loadVK_NV_external_compute_queue*() =
  ## Loads VK_NV_external_compute_queue extension commands.
  vkCreateExternalComputeQueueNV = cast[proc(device: VkDevice, pCreateInfo: ptr VkExternalComputeQueueCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pExternalQueue: ptr VkExternalComputeQueueNV): VkResult {.stdcall.}](vkGetProc("vkCreateExternalComputeQueueNV"))
  vkDestroyExternalComputeQueueNV = cast[proc(device: VkDevice, externalQueue: VkExternalComputeQueueNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyExternalComputeQueueNV"))
  vkGetExternalComputeQueueDataNV = cast[proc(externalQueue: VkExternalComputeQueueNV, params: ptr VkExternalComputeQueueDataParamsNV, pData: pointer): void {.stdcall.}](vkGetProc("vkGetExternalComputeQueueDataNV"))

proc loadVK_NV_cluster_acceleration_structure*() =
  ## Loads VK_NV_cluster_acceleration_structure extension commands.
  vkGetClusterAccelerationStructureBuildSizesNV = cast[proc(device: VkDevice, pInfo: ptr VkClusterAccelerationStructureInputInfoNV, pSizeInfo: ptr VkAccelerationStructureBuildSizesInfoKHR): void {.stdcall.}](vkGetProc("vkGetClusterAccelerationStructureBuildSizesNV"))
  vkCmdBuildClusterAccelerationStructureIndirectNV = cast[proc(commandBuffer: VkCommandBuffer, pCommandInfos: ptr VkClusterAccelerationStructureCommandsInfoNV): void {.stdcall.}](vkGetProc("vkCmdBuildClusterAccelerationStructureIndirectNV"))

proc loadVK_NV_partitioned_acceleration_structure*() =
  ## Loads VK_NV_partitioned_acceleration_structure extension commands.
  vkGetPartitionedAccelerationStructuresBuildSizesNV = cast[proc(device: VkDevice, pInfo: ptr VkPartitionedAccelerationStructureInstancesInputNV, pSizeInfo: ptr VkAccelerationStructureBuildSizesInfoKHR): void {.stdcall.}](vkGetProc("vkGetPartitionedAccelerationStructuresBuildSizesNV"))
  vkCmdBuildPartitionedAccelerationStructuresNV = cast[proc(commandBuffer: VkCommandBuffer, pBuildInfo: ptr VkBuildPartitionedAccelerationStructureInfoNV): void {.stdcall.}](vkGetProc("vkCmdBuildPartitionedAccelerationStructuresNV"))

proc loadVK_EXT_device_generated_commands*() =
  ## Loads VK_EXT_device_generated_commands extension commands.
  vkGetGeneratedCommandsMemoryRequirementsEXT = cast[proc(device: VkDevice, pInfo: ptr VkGeneratedCommandsMemoryRequirementsInfoEXT, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}](vkGetProc("vkGetGeneratedCommandsMemoryRequirementsEXT"))
  vkCmdPreprocessGeneratedCommandsEXT = cast[proc(commandBuffer: VkCommandBuffer, pGeneratedCommandsInfo: ptr VkGeneratedCommandsInfoEXT, stateCommandBuffer: VkCommandBuffer): void {.stdcall.}](vkGetProc("vkCmdPreprocessGeneratedCommandsEXT"))
  vkCmdExecuteGeneratedCommandsEXT = cast[proc(commandBuffer: VkCommandBuffer, isPreprocessed: VkBool32, pGeneratedCommandsInfo: ptr VkGeneratedCommandsInfoEXT): void {.stdcall.}](vkGetProc("vkCmdExecuteGeneratedCommandsEXT"))
  vkCreateIndirectCommandsLayoutEXT = cast[proc(device: VkDevice, pCreateInfo: ptr VkIndirectCommandsLayoutCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pIndirectCommandsLayout: ptr VkIndirectCommandsLayoutEXT): VkResult {.stdcall.}](vkGetProc("vkCreateIndirectCommandsLayoutEXT"))
  vkDestroyIndirectCommandsLayoutEXT = cast[proc(device: VkDevice, indirectCommandsLayout: VkIndirectCommandsLayoutEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyIndirectCommandsLayoutEXT"))
  vkCreateIndirectExecutionSetEXT = cast[proc(device: VkDevice, pCreateInfo: ptr VkIndirectExecutionSetCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pIndirectExecutionSet: ptr VkIndirectExecutionSetEXT): VkResult {.stdcall.}](vkGetProc("vkCreateIndirectExecutionSetEXT"))
  vkDestroyIndirectExecutionSetEXT = cast[proc(device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyIndirectExecutionSetEXT"))
  vkUpdateIndirectExecutionSetPipelineEXT = cast[proc(device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, executionSetWriteCount: uint32, pExecutionSetWrites: ptr VkWriteIndirectExecutionSetPipelineEXT): void {.stdcall.}](vkGetProc("vkUpdateIndirectExecutionSetPipelineEXT"))
  vkUpdateIndirectExecutionSetShaderEXT = cast[proc(device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, executionSetWriteCount: uint32, pExecutionSetWrites: ptr VkWriteIndirectExecutionSetShaderEXT): void {.stdcall.}](vkGetProc("vkUpdateIndirectExecutionSetShaderEXT"))

proc loadVK_EXT_depth_clamp_control*() =
  ## Loads VK_EXT_depth_clamp_control extension commands.
  vkCmdSetDepthClampRangeEXT = cast[proc(commandBuffer: VkCommandBuffer, depthClampMode: VkDepthClampModeEXT, pDepthClampRange: ptr VkDepthClampRangeEXT): void {.stdcall.}](vkGetProc("vkCmdSetDepthClampRangeEXT"))

proc loadVK_OHOS_surface*() =
  ## Loads VK_OHOS_surface extension commands.
  vkCreateSurfaceOHOS = cast[proc(instance: VkInstance, pCreateInfo: ptr VkSurfaceCreateInfoOHOS, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateSurfaceOHOS"))

proc loadVK_NV_cooperative_matrix2*() =
  ## Loads VK_NV_cooperative_matrix2 extension commands.
  vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV = cast[proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkCooperativeMatrixFlexibleDimensionsPropertiesNV): VkResult {.stdcall.}](vkGetProc("vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV"))

proc loadVK_EXT_external_memory_metal*() =
  ## Loads VK_EXT_external_memory_metal extension commands.
  vkGetMemoryMetalHandleEXT = cast[proc(device: VkDevice, pGetMetalHandleInfo: ptr VkMemoryGetMetalHandleInfoEXT, pHandle: ptr pointer): VkResult {.stdcall.}](vkGetProc("vkGetMemoryMetalHandleEXT"))
  vkGetMemoryMetalHandlePropertiesEXT = cast[proc(device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, pHandle: pointer, pMemoryMetalHandleProperties: ptr VkMemoryMetalHandlePropertiesEXT): VkResult {.stdcall.}](vkGetProc("vkGetMemoryMetalHandlePropertiesEXT"))

proc loadVK_ARM_performance_counters_by_region*() =
  ## Loads VK_ARM_performance_counters_by_region extension commands.
  vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM = cast[proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, pCounterCount: ptr uint32, pCounters: ptr VkPerformanceCounterARM, pCounterDescriptions: ptr VkPerformanceCounterDescriptionARM): VkResult {.stdcall.}](vkGetProc("vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM"))

proc loadVK_ARM_shader_instrumentation*() =
  ## Loads VK_ARM_shader_instrumentation extension commands.
  vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM = cast[proc(physicalDevice: VkPhysicalDevice, pDescriptionCount: ptr uint32, pDescriptions: ptr VkShaderInstrumentationMetricDescriptionARM): VkResult {.stdcall.}](vkGetProc("vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM"))
  vkCreateShaderInstrumentationARM = cast[proc(device: VkDevice, pCreateInfo: ptr VkShaderInstrumentationCreateInfoARM, pAllocator: ptr VkAllocationCallbacks, pInstrumentation: ptr VkShaderInstrumentationARM): VkResult {.stdcall.}](vkGetProc("vkCreateShaderInstrumentationARM"))
  vkDestroyShaderInstrumentationARM = cast[proc(device: VkDevice, instrumentation: VkShaderInstrumentationARM, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}](vkGetProc("vkDestroyShaderInstrumentationARM"))
  vkCmdBeginShaderInstrumentationARM = cast[proc(commandBuffer: VkCommandBuffer, instrumentation: VkShaderInstrumentationARM): void {.stdcall.}](vkGetProc("vkCmdBeginShaderInstrumentationARM"))
  vkCmdEndShaderInstrumentationARM = cast[proc(commandBuffer: VkCommandBuffer): void {.stdcall.}](vkGetProc("vkCmdEndShaderInstrumentationARM"))
  vkGetShaderInstrumentationValuesARM = cast[proc(device: VkDevice, instrumentation: VkShaderInstrumentationARM, pMetricBlockCount: ptr uint32, pMetricValues: pointer, flags: VkShaderInstrumentationValuesFlagsARM): VkResult {.stdcall.}](vkGetProc("vkGetShaderInstrumentationValuesARM"))
  vkClearShaderInstrumentationMetricsARM = cast[proc(device: VkDevice, instrumentation: VkShaderInstrumentationARM): void {.stdcall.}](vkGetProc("vkClearShaderInstrumentationMetricsARM"))

proc loadVK_EXT_fragment_density_map_offset*() =
  ## Loads VK_EXT_fragment_density_map_offset extension commands.
  vkCmdEndRendering2EXT = cast[proc(commandBuffer: VkCommandBuffer, pRenderingEndInfo: ptr VkRenderingEndInfoKHR): void {.stdcall.}](vkGetProc("vkCmdEndRendering2EXT"))

proc loadVK_EXT_custom_resolve*() =
  ## Loads VK_EXT_custom_resolve extension commands.
  vkCmdBeginCustomResolveEXT = cast[proc(commandBuffer: VkCommandBuffer, pBeginCustomResolveInfo: ptr VkBeginCustomResolveInfoEXT): void {.stdcall.}](vkGetProc("vkCmdBeginCustomResolveEXT"))

proc loadVK_KHR_maintenance10*() =
  ## Loads VK_KHR_maintenance10 extension commands.
  vkCmdEndRendering2KHR = cast[proc(commandBuffer: VkCommandBuffer, pRenderingEndInfo: ptr VkRenderingEndInfoKHR): void {.stdcall.}](vkGetProc("vkCmdEndRendering2KHR"))

proc loadVK_NV_compute_occupancy_priority*() =
  ## Loads VK_NV_compute_occupancy_priority extension commands.
  vkCmdSetComputeOccupancyPriorityNV = cast[proc(commandBuffer: VkCommandBuffer, pParameters: ptr VkComputeOccupancyPriorityParametersNV): void {.stdcall.}](vkGetProc("vkCmdSetComputeOccupancyPriorityNV"))

proc loadVK_SEC_ubm_surface*() =
  ## Loads VK_SEC_ubm_surface extension commands.
  vkCreateUbmSurfaceSEC = cast[proc(instance: VkInstance, pCreateInfo: ptr VkUbmSurfaceCreateInfoSEC, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}](vkGetProc("vkCreateUbmSurfaceSEC"))
  vkGetPhysicalDeviceUbmPresentationSupportSEC = cast[proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, device: pointer): VkBool32 {.stdcall.}](vkGetProc("vkGetPhysicalDeviceUbmPresentationSupportSEC"))

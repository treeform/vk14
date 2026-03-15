# Auto-generated from vk.xml — do not edit manually.
# Regenerate with: nim r tools/generate_api.nim


import types
export types

var vkGetProc*: proc(name: cstring): pointer {.cdecl.}

var
  vkCreateInstance*: proc(pCreateInfo: ptr VkInstanceCreateInfo, pAllocator: ptr VkAllocationCallbacks, pInstance: ptr VkInstance): VkResult {.stdcall.}
  vkDestroyInstance*: proc(instance: VkInstance, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkEnumeratePhysicalDevices*: proc(instance: VkInstance, pPhysicalDeviceCount: ptr uint32, pPhysicalDevices: ptr VkPhysicalDevice): VkResult {.stdcall.}
  vkGetDeviceProcAddr*: proc(device: VkDevice, pName: cstring): PFN_vkVoidFunction {.stdcall.}
  vkGetInstanceProcAddr*: proc(instance: VkInstance, pName: cstring): PFN_vkVoidFunction {.stdcall.}
  vkGetPhysicalDeviceProperties*: proc(physicalDevice: VkPhysicalDevice, pProperties: ptr VkPhysicalDeviceProperties): void {.stdcall.}
  vkGetPhysicalDeviceQueueFamilyProperties*: proc(physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: ptr uint32, pQueueFamilyProperties: ptr VkQueueFamilyProperties): void {.stdcall.}
  vkGetPhysicalDeviceMemoryProperties*: proc(physicalDevice: VkPhysicalDevice, pMemoryProperties: ptr VkPhysicalDeviceMemoryProperties): void {.stdcall.}
  vkGetPhysicalDeviceFeatures*: proc(physicalDevice: VkPhysicalDevice, pFeatures: ptr VkPhysicalDeviceFeatures): void {.stdcall.}
  vkGetPhysicalDeviceFormatProperties*: proc(physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: ptr VkFormatProperties): void {.stdcall.}
  vkGetPhysicalDeviceImageFormatProperties*: proc(physicalDevice: VkPhysicalDevice, format: VkFormat, `type`: VkImageType, tiling: VkImageTiling, usage: VkImageUsageFlags, flags: VkImageCreateFlags, pImageFormatProperties: ptr VkImageFormatProperties): VkResult {.stdcall.}
  vkCreateDevice*: proc(physicalDevice: VkPhysicalDevice, pCreateInfo: ptr VkDeviceCreateInfo, pAllocator: ptr VkAllocationCallbacks, pDevice: ptr VkDevice): VkResult {.stdcall.}
  vkDestroyDevice*: proc(device: VkDevice, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkEnumerateInstanceVersion*: proc(pApiVersion: ptr uint32): VkResult {.stdcall.}
  vkEnumerateInstanceLayerProperties*: proc(pPropertyCount: ptr uint32, pProperties: ptr VkLayerProperties): VkResult {.stdcall.}
  vkEnumerateInstanceExtensionProperties*: proc(pLayerName: cstring, pPropertyCount: ptr uint32, pProperties: ptr VkExtensionProperties): VkResult {.stdcall.}
  vkEnumerateDeviceLayerProperties*: proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkLayerProperties): VkResult {.stdcall.}
  vkEnumerateDeviceExtensionProperties*: proc(physicalDevice: VkPhysicalDevice, pLayerName: cstring, pPropertyCount: ptr uint32, pProperties: ptr VkExtensionProperties): VkResult {.stdcall.}
  vkGetDeviceQueue*: proc(device: VkDevice, queueFamilyIndex: uint32, queueIndex: uint32, pQueue: ptr VkQueue): void {.stdcall.}
  vkQueueSubmit*: proc(queue: VkQueue, submitCount: uint32, pSubmits: ptr VkSubmitInfo, fence: VkFence): VkResult {.stdcall.}
  vkQueueWaitIdle*: proc(queue: VkQueue): VkResult {.stdcall.}
  vkDeviceWaitIdle*: proc(device: VkDevice): VkResult {.stdcall.}
  vkAllocateMemory*: proc(device: VkDevice, pAllocateInfo: ptr VkMemoryAllocateInfo, pAllocator: ptr VkAllocationCallbacks, pMemory: ptr VkDeviceMemory): VkResult {.stdcall.}
  vkFreeMemory*: proc(device: VkDevice, memory: VkDeviceMemory, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkMapMemory*: proc(device: VkDevice, memory: VkDeviceMemory, offset: VkDeviceSize, size: VkDeviceSize, flags: VkMemoryMapFlags, ppData: ptr pointer): VkResult {.stdcall.}
  vkUnmapMemory*: proc(device: VkDevice, memory: VkDeviceMemory): void {.stdcall.}
  vkFlushMappedMemoryRanges*: proc(device: VkDevice, memoryRangeCount: uint32, pMemoryRanges: ptr VkMappedMemoryRange): VkResult {.stdcall.}
  vkInvalidateMappedMemoryRanges*: proc(device: VkDevice, memoryRangeCount: uint32, pMemoryRanges: ptr VkMappedMemoryRange): VkResult {.stdcall.}
  vkGetDeviceMemoryCommitment*: proc(device: VkDevice, memory: VkDeviceMemory, pCommittedMemoryInBytes: ptr VkDeviceSize): void {.stdcall.}
  vkGetBufferMemoryRequirements*: proc(device: VkDevice, buffer: VkBuffer, pMemoryRequirements: ptr VkMemoryRequirements): void {.stdcall.}
  vkBindBufferMemory*: proc(device: VkDevice, buffer: VkBuffer, memory: VkDeviceMemory, memoryOffset: VkDeviceSize): VkResult {.stdcall.}
  vkGetImageMemoryRequirements*: proc(device: VkDevice, image: VkImage, pMemoryRequirements: ptr VkMemoryRequirements): void {.stdcall.}
  vkBindImageMemory*: proc(device: VkDevice, image: VkImage, memory: VkDeviceMemory, memoryOffset: VkDeviceSize): VkResult {.stdcall.}
  vkGetImageSparseMemoryRequirements*: proc(device: VkDevice, image: VkImage, pSparseMemoryRequirementCount: ptr uint32, pSparseMemoryRequirements: ptr VkSparseImageMemoryRequirements): void {.stdcall.}
  vkGetPhysicalDeviceSparseImageFormatProperties*: proc(physicalDevice: VkPhysicalDevice, format: VkFormat, `type`: VkImageType, samples: VkSampleCountFlagBits, usage: VkImageUsageFlags, tiling: VkImageTiling, pPropertyCount: ptr uint32, pProperties: ptr VkSparseImageFormatProperties): void {.stdcall.}
  vkQueueBindSparse*: proc(queue: VkQueue, bindInfoCount: uint32, pBindInfo: ptr VkBindSparseInfo, fence: VkFence): VkResult {.stdcall.}
  vkCreateFence*: proc(device: VkDevice, pCreateInfo: ptr VkFenceCreateInfo, pAllocator: ptr VkAllocationCallbacks, pFence: ptr VkFence): VkResult {.stdcall.}
  vkDestroyFence*: proc(device: VkDevice, fence: VkFence, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkResetFences*: proc(device: VkDevice, fenceCount: uint32, pFences: ptr VkFence): VkResult {.stdcall.}
  vkGetFenceStatus*: proc(device: VkDevice, fence: VkFence): VkResult {.stdcall.}
  vkWaitForFences*: proc(device: VkDevice, fenceCount: uint32, pFences: ptr VkFence, waitAll: VkBool32, timeout: uint64): VkResult {.stdcall.}
  vkCreateSemaphore*: proc(device: VkDevice, pCreateInfo: ptr VkSemaphoreCreateInfo, pAllocator: ptr VkAllocationCallbacks, pSemaphore: ptr VkSemaphore): VkResult {.stdcall.}
  vkDestroySemaphore*: proc(device: VkDevice, semaphore: VkSemaphore, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCreateEvent*: proc(device: VkDevice, pCreateInfo: ptr VkEventCreateInfo, pAllocator: ptr VkAllocationCallbacks, pEvent: ptr VkEvent): VkResult {.stdcall.}
  vkDestroyEvent*: proc(device: VkDevice, event: VkEvent, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetEventStatus*: proc(device: VkDevice, event: VkEvent): VkResult {.stdcall.}
  vkSetEvent*: proc(device: VkDevice, event: VkEvent): VkResult {.stdcall.}
  vkResetEvent*: proc(device: VkDevice, event: VkEvent): VkResult {.stdcall.}
  vkCreateQueryPool*: proc(device: VkDevice, pCreateInfo: ptr VkQueryPoolCreateInfo, pAllocator: ptr VkAllocationCallbacks, pQueryPool: ptr VkQueryPool): VkResult {.stdcall.}
  vkDestroyQueryPool*: proc(device: VkDevice, queryPool: VkQueryPool, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetQueryPoolResults*: proc(device: VkDevice, queryPool: VkQueryPool, firstQuery: uint32, queryCount: uint32, dataSize: csize_t, pData: pointer, stride: VkDeviceSize, flags: VkQueryResultFlags): VkResult {.stdcall.}
  vkResetQueryPool*: proc(device: VkDevice, queryPool: VkQueryPool, firstQuery: uint32, queryCount: uint32): void {.stdcall.}
  vkCreateBuffer*: proc(device: VkDevice, pCreateInfo: ptr VkBufferCreateInfo, pAllocator: ptr VkAllocationCallbacks, pBuffer: ptr VkBuffer): VkResult {.stdcall.}
  vkDestroyBuffer*: proc(device: VkDevice, buffer: VkBuffer, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCreateBufferView*: proc(device: VkDevice, pCreateInfo: ptr VkBufferViewCreateInfo, pAllocator: ptr VkAllocationCallbacks, pView: ptr VkBufferView): VkResult {.stdcall.}
  vkDestroyBufferView*: proc(device: VkDevice, bufferView: VkBufferView, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCreateImage*: proc(device: VkDevice, pCreateInfo: ptr VkImageCreateInfo, pAllocator: ptr VkAllocationCallbacks, pImage: ptr VkImage): VkResult {.stdcall.}
  vkDestroyImage*: proc(device: VkDevice, image: VkImage, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetImageSubresourceLayout*: proc(device: VkDevice, image: VkImage, pSubresource: ptr VkImageSubresource, pLayout: ptr VkSubresourceLayout): void {.stdcall.}
  vkCreateImageView*: proc(device: VkDevice, pCreateInfo: ptr VkImageViewCreateInfo, pAllocator: ptr VkAllocationCallbacks, pView: ptr VkImageView): VkResult {.stdcall.}
  vkDestroyImageView*: proc(device: VkDevice, imageView: VkImageView, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCreateShaderModule*: proc(device: VkDevice, pCreateInfo: ptr VkShaderModuleCreateInfo, pAllocator: ptr VkAllocationCallbacks, pShaderModule: ptr VkShaderModule): VkResult {.stdcall.}
  vkDestroyShaderModule*: proc(device: VkDevice, shaderModule: VkShaderModule, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCreatePipelineCache*: proc(device: VkDevice, pCreateInfo: ptr VkPipelineCacheCreateInfo, pAllocator: ptr VkAllocationCallbacks, pPipelineCache: ptr VkPipelineCache): VkResult {.stdcall.}
  vkDestroyPipelineCache*: proc(device: VkDevice, pipelineCache: VkPipelineCache, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetPipelineCacheData*: proc(device: VkDevice, pipelineCache: VkPipelineCache, pDataSize: ptr csize_t, pData: pointer): VkResult {.stdcall.}
  vkMergePipelineCaches*: proc(device: VkDevice, dstCache: VkPipelineCache, srcCacheCount: uint32, pSrcCaches: ptr VkPipelineCache): VkResult {.stdcall.}
  vkCreatePipelineBinariesKHR*: proc(device: VkDevice, pCreateInfo: ptr VkPipelineBinaryCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pBinaries: ptr VkPipelineBinaryHandlesInfoKHR): VkResult {.stdcall.}
  vkDestroyPipelineBinaryKHR*: proc(device: VkDevice, pipelineBinary: VkPipelineBinaryKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetPipelineKeyKHR*: proc(device: VkDevice, pPipelineCreateInfo: ptr VkPipelineCreateInfoKHR, pPipelineKey: ptr VkPipelineBinaryKeyKHR): VkResult {.stdcall.}
  vkGetPipelineBinaryDataKHR*: proc(device: VkDevice, pInfo: ptr VkPipelineBinaryDataInfoKHR, pPipelineBinaryKey: ptr VkPipelineBinaryKeyKHR, pPipelineBinaryDataSize: ptr csize_t, pPipelineBinaryData: pointer): VkResult {.stdcall.}
  vkReleaseCapturedPipelineDataKHR*: proc(device: VkDevice, pInfo: ptr VkReleaseCapturedPipelineDataInfoKHR, pAllocator: ptr VkAllocationCallbacks): VkResult {.stdcall.}
  vkCreateGraphicsPipelines*: proc(device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: uint32, pCreateInfos: ptr VkGraphicsPipelineCreateInfo, pAllocator: ptr VkAllocationCallbacks, pPipelines: ptr VkPipeline): VkResult {.stdcall.}
  vkCreateComputePipelines*: proc(device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: uint32, pCreateInfos: ptr VkComputePipelineCreateInfo, pAllocator: ptr VkAllocationCallbacks, pPipelines: ptr VkPipeline): VkResult {.stdcall.}
  vkGetDeviceSubpassShadingMaxWorkgroupSizeHUAWEI*: proc(device: VkDevice, renderpass: VkRenderPass, pMaxWorkgroupSize: ptr VkExtent2D): VkResult {.stdcall.}
  vkDestroyPipeline*: proc(device: VkDevice, pipeline: VkPipeline, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCreatePipelineLayout*: proc(device: VkDevice, pCreateInfo: ptr VkPipelineLayoutCreateInfo, pAllocator: ptr VkAllocationCallbacks, pPipelineLayout: ptr VkPipelineLayout): VkResult {.stdcall.}
  vkDestroyPipelineLayout*: proc(device: VkDevice, pipelineLayout: VkPipelineLayout, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCreateSampler*: proc(device: VkDevice, pCreateInfo: ptr VkSamplerCreateInfo, pAllocator: ptr VkAllocationCallbacks, pSampler: ptr VkSampler): VkResult {.stdcall.}
  vkDestroySampler*: proc(device: VkDevice, sampler: VkSampler, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCreateDescriptorSetLayout*: proc(device: VkDevice, pCreateInfo: ptr VkDescriptorSetLayoutCreateInfo, pAllocator: ptr VkAllocationCallbacks, pSetLayout: ptr VkDescriptorSetLayout): VkResult {.stdcall.}
  vkDestroyDescriptorSetLayout*: proc(device: VkDevice, descriptorSetLayout: VkDescriptorSetLayout, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCreateDescriptorPool*: proc(device: VkDevice, pCreateInfo: ptr VkDescriptorPoolCreateInfo, pAllocator: ptr VkAllocationCallbacks, pDescriptorPool: ptr VkDescriptorPool): VkResult {.stdcall.}
  vkDestroyDescriptorPool*: proc(device: VkDevice, descriptorPool: VkDescriptorPool, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkResetDescriptorPool*: proc(device: VkDevice, descriptorPool: VkDescriptorPool, flags: VkDescriptorPoolResetFlags): VkResult {.stdcall.}
  vkAllocateDescriptorSets*: proc(device: VkDevice, pAllocateInfo: ptr VkDescriptorSetAllocateInfo, pDescriptorSets: ptr VkDescriptorSet): VkResult {.stdcall.}
  vkFreeDescriptorSets*: proc(device: VkDevice, descriptorPool: VkDescriptorPool, descriptorSetCount: uint32, pDescriptorSets: ptr VkDescriptorSet): VkResult {.stdcall.}
  vkUpdateDescriptorSets*: proc(device: VkDevice, descriptorWriteCount: uint32, pDescriptorWrites: ptr VkWriteDescriptorSet, descriptorCopyCount: uint32, pDescriptorCopies: ptr VkCopyDescriptorSet): void {.stdcall.}
  vkCreateFramebuffer*: proc(device: VkDevice, pCreateInfo: ptr VkFramebufferCreateInfo, pAllocator: ptr VkAllocationCallbacks, pFramebuffer: ptr VkFramebuffer): VkResult {.stdcall.}
  vkDestroyFramebuffer*: proc(device: VkDevice, framebuffer: VkFramebuffer, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCreateRenderPass*: proc(device: VkDevice, pCreateInfo: ptr VkRenderPassCreateInfo, pAllocator: ptr VkAllocationCallbacks, pRenderPass: ptr VkRenderPass): VkResult {.stdcall.}
  vkDestroyRenderPass*: proc(device: VkDevice, renderPass: VkRenderPass, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetRenderAreaGranularity*: proc(device: VkDevice, renderPass: VkRenderPass, pGranularity: ptr VkExtent2D): void {.stdcall.}
  vkGetRenderingAreaGranularity*: proc(device: VkDevice, pRenderingAreaInfo: ptr VkRenderingAreaInfo, pGranularity: ptr VkExtent2D): void {.stdcall.}
  vkCreateCommandPool*: proc(device: VkDevice, pCreateInfo: ptr VkCommandPoolCreateInfo, pAllocator: ptr VkAllocationCallbacks, pCommandPool: ptr VkCommandPool): VkResult {.stdcall.}
  vkDestroyCommandPool*: proc(device: VkDevice, commandPool: VkCommandPool, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkResetCommandPool*: proc(device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolResetFlags): VkResult {.stdcall.}
  vkAllocateCommandBuffers*: proc(device: VkDevice, pAllocateInfo: ptr VkCommandBufferAllocateInfo, pCommandBuffers: ptr VkCommandBuffer): VkResult {.stdcall.}
  vkFreeCommandBuffers*: proc(device: VkDevice, commandPool: VkCommandPool, commandBufferCount: uint32, pCommandBuffers: ptr VkCommandBuffer): void {.stdcall.}
  vkBeginCommandBuffer*: proc(commandBuffer: VkCommandBuffer, pBeginInfo: ptr VkCommandBufferBeginInfo): VkResult {.stdcall.}
  vkEndCommandBuffer*: proc(commandBuffer: VkCommandBuffer): VkResult {.stdcall.}
  vkResetCommandBuffer*: proc(commandBuffer: VkCommandBuffer, flags: VkCommandBufferResetFlags): VkResult {.stdcall.}
  vkCmdBindPipeline*: proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline): void {.stdcall.}
  vkCmdSetAttachmentFeedbackLoopEnableEXT*: proc(commandBuffer: VkCommandBuffer, aspectMask: VkImageAspectFlags): void {.stdcall.}
  vkCmdSetViewport*: proc(commandBuffer: VkCommandBuffer, firstViewport: uint32, viewportCount: uint32, pViewports: ptr VkViewport): void {.stdcall.}
  vkCmdSetScissor*: proc(commandBuffer: VkCommandBuffer, firstScissor: uint32, scissorCount: uint32, pScissors: ptr VkRect2D): void {.stdcall.}
  vkCmdSetLineWidth*: proc(commandBuffer: VkCommandBuffer, lineWidth: float32): void {.stdcall.}
  vkCmdSetDepthBias*: proc(commandBuffer: VkCommandBuffer, depthBiasConstantFactor: float32, depthBiasClamp: float32, depthBiasSlopeFactor: float32): void {.stdcall.}
  vkCmdSetBlendConstants*: proc(commandBuffer: VkCommandBuffer, blendConstants: array[4, float32]): void {.stdcall.}
  vkCmdSetDepthBounds*: proc(commandBuffer: VkCommandBuffer, minDepthBounds: float32, maxDepthBounds: float32): void {.stdcall.}
  vkCmdSetStencilCompareMask*: proc(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, compareMask: uint32): void {.stdcall.}
  vkCmdSetStencilWriteMask*: proc(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, writeMask: uint32): void {.stdcall.}
  vkCmdSetStencilReference*: proc(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, reference: uint32): void {.stdcall.}
  vkCmdBindDescriptorSets*: proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, firstSet: uint32, descriptorSetCount: uint32, pDescriptorSets: ptr VkDescriptorSet, dynamicOffsetCount: uint32, pDynamicOffsets: ptr uint32): void {.stdcall.}
  vkCmdBindIndexBuffer*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, indexType: VkIndexType): void {.stdcall.}
  vkCmdBindVertexBuffers*: proc(commandBuffer: VkCommandBuffer, firstBinding: uint32, bindingCount: uint32, pBuffers: ptr VkBuffer, pOffsets: ptr VkDeviceSize): void {.stdcall.}
  vkCmdDraw*: proc(commandBuffer: VkCommandBuffer, vertexCount: uint32, instanceCount: uint32, firstVertex: uint32, firstInstance: uint32): void {.stdcall.}
  vkCmdDrawIndexed*: proc(commandBuffer: VkCommandBuffer, indexCount: uint32, instanceCount: uint32, firstIndex: uint32, vertexOffset: int32, firstInstance: uint32): void {.stdcall.}
  vkCmdDrawMultiEXT*: proc(commandBuffer: VkCommandBuffer, drawCount: uint32, pVertexInfo: ptr VkMultiDrawInfoEXT, instanceCount: uint32, firstInstance: uint32, stride: uint32): void {.stdcall.}
  vkCmdDrawMultiIndexedEXT*: proc(commandBuffer: VkCommandBuffer, drawCount: uint32, pIndexInfo: ptr VkMultiDrawIndexedInfoEXT, instanceCount: uint32, firstInstance: uint32, stride: uint32, pVertexOffset: ptr int32): void {.stdcall.}
  vkCmdDrawIndirect*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: uint32, stride: uint32): void {.stdcall.}
  vkCmdDrawIndexedIndirect*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: uint32, stride: uint32): void {.stdcall.}
  vkCmdDispatch*: proc(commandBuffer: VkCommandBuffer, groupCountX: uint32, groupCountY: uint32, groupCountZ: uint32): void {.stdcall.}
  vkCmdDispatchIndirect*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize): void {.stdcall.}
  vkCmdSubpassShadingHUAWEI*: proc(commandBuffer: VkCommandBuffer): void {.stdcall.}
  vkCmdDrawClusterHUAWEI*: proc(commandBuffer: VkCommandBuffer, groupCountX: uint32, groupCountY: uint32, groupCountZ: uint32): void {.stdcall.}
  vkCmdDrawClusterIndirectHUAWEI*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize): void {.stdcall.}
  vkCmdUpdatePipelineIndirectBufferNV*: proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline): void {.stdcall.}
  vkCmdCopyBuffer*: proc(commandBuffer: VkCommandBuffer, srcBuffer: VkBuffer, dstBuffer: VkBuffer, regionCount: uint32, pRegions: ptr VkBufferCopy): void {.stdcall.}
  vkCmdCopyImage*: proc(commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: uint32, pRegions: ptr VkImageCopy): void {.stdcall.}
  vkCmdBlitImage*: proc(commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: uint32, pRegions: ptr VkImageBlit, filter: VkFilter): void {.stdcall.}
  vkCmdCopyBufferToImage*: proc(commandBuffer: VkCommandBuffer, srcBuffer: VkBuffer, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: uint32, pRegions: ptr VkBufferImageCopy): void {.stdcall.}
  vkCmdCopyImageToBuffer*: proc(commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstBuffer: VkBuffer, regionCount: uint32, pRegions: ptr VkBufferImageCopy): void {.stdcall.}
  vkCmdCopyMemoryIndirectNV*: proc(commandBuffer: VkCommandBuffer, copyBufferAddress: VkDeviceAddress, copyCount: uint32, stride: uint32): void {.stdcall.}
  vkCmdCopyMemoryIndirectKHR*: proc(commandBuffer: VkCommandBuffer, pCopyMemoryIndirectInfo: ptr VkCopyMemoryIndirectInfoKHR): void {.stdcall.}
  vkCmdCopyMemoryToImageIndirectNV*: proc(commandBuffer: VkCommandBuffer, copyBufferAddress: VkDeviceAddress, copyCount: uint32, stride: uint32, dstImage: VkImage, dstImageLayout: VkImageLayout, pImageSubresources: ptr VkImageSubresourceLayers): void {.stdcall.}
  vkCmdCopyMemoryToImageIndirectKHR*: proc(commandBuffer: VkCommandBuffer, pCopyMemoryToImageIndirectInfo: ptr VkCopyMemoryToImageIndirectInfoKHR): void {.stdcall.}
  vkCmdUpdateBuffer*: proc(commandBuffer: VkCommandBuffer, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, dataSize: VkDeviceSize, pData: pointer): void {.stdcall.}
  vkCmdFillBuffer*: proc(commandBuffer: VkCommandBuffer, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, size: VkDeviceSize, data: uint32): void {.stdcall.}
  vkCmdClearColorImage*: proc(commandBuffer: VkCommandBuffer, image: VkImage, imageLayout: VkImageLayout, pColor: ptr VkClearColorValue, rangeCount: uint32, pRanges: ptr VkImageSubresourceRange): void {.stdcall.}
  vkCmdClearDepthStencilImage*: proc(commandBuffer: VkCommandBuffer, image: VkImage, imageLayout: VkImageLayout, pDepthStencil: ptr VkClearDepthStencilValue, rangeCount: uint32, pRanges: ptr VkImageSubresourceRange): void {.stdcall.}
  vkCmdClearAttachments*: proc(commandBuffer: VkCommandBuffer, attachmentCount: uint32, pAttachments: ptr VkClearAttachment, rectCount: uint32, pRects: ptr VkClearRect): void {.stdcall.}
  vkCmdResolveImage*: proc(commandBuffer: VkCommandBuffer, srcImage: VkImage, srcImageLayout: VkImageLayout, dstImage: VkImage, dstImageLayout: VkImageLayout, regionCount: uint32, pRegions: ptr VkImageResolve): void {.stdcall.}
  vkCmdSetEvent*: proc(commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags): void {.stdcall.}
  vkCmdResetEvent*: proc(commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags): void {.stdcall.}
  vkCmdWaitEvents*: proc(commandBuffer: VkCommandBuffer, eventCount: uint32, pEvents: ptr VkEvent, srcStageMask: VkPipelineStageFlags, dstStageMask: VkPipelineStageFlags, memoryBarrierCount: uint32, pMemoryBarriers: ptr VkMemoryBarrier, bufferMemoryBarrierCount: uint32, pBufferMemoryBarriers: ptr VkBufferMemoryBarrier, imageMemoryBarrierCount: uint32, pImageMemoryBarriers: ptr VkImageMemoryBarrier): void {.stdcall.}
  vkCmdPipelineBarrier*: proc(commandBuffer: VkCommandBuffer, srcStageMask: VkPipelineStageFlags, dstStageMask: VkPipelineStageFlags, dependencyFlags: VkDependencyFlags, memoryBarrierCount: uint32, pMemoryBarriers: ptr VkMemoryBarrier, bufferMemoryBarrierCount: uint32, pBufferMemoryBarriers: ptr VkBufferMemoryBarrier, imageMemoryBarrierCount: uint32, pImageMemoryBarriers: ptr VkImageMemoryBarrier): void {.stdcall.}
  vkCmdBeginQuery*: proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: uint32, flags: VkQueryControlFlags): void {.stdcall.}
  vkCmdEndQuery*: proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: uint32): void {.stdcall.}
  vkCmdBeginConditionalRenderingEXT*: proc(commandBuffer: VkCommandBuffer, pConditionalRenderingBegin: ptr VkConditionalRenderingBeginInfoEXT): void {.stdcall.}
  vkCmdEndConditionalRenderingEXT*: proc(commandBuffer: VkCommandBuffer): void {.stdcall.}
  vkCmdBeginCustomResolveEXT*: proc(commandBuffer: VkCommandBuffer, pBeginCustomResolveInfo: ptr VkBeginCustomResolveInfoEXT): void {.stdcall.}
  vkCmdResetQueryPool*: proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: uint32, queryCount: uint32): void {.stdcall.}
  vkCmdWriteTimestamp*: proc(commandBuffer: VkCommandBuffer, pipelineStage: VkPipelineStageFlagBits, queryPool: VkQueryPool, query: uint32): void {.stdcall.}
  vkCmdCopyQueryPoolResults*: proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: uint32, queryCount: uint32, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, stride: VkDeviceSize, flags: VkQueryResultFlags): void {.stdcall.}
  vkCmdPushConstants*: proc(commandBuffer: VkCommandBuffer, layout: VkPipelineLayout, stageFlags: VkShaderStageFlags, offset: uint32, size: uint32, pValues: pointer): void {.stdcall.}
  vkCmdBeginRenderPass*: proc(commandBuffer: VkCommandBuffer, pRenderPassBegin: ptr VkRenderPassBeginInfo, contents: VkSubpassContents): void {.stdcall.}
  vkCmdNextSubpass*: proc(commandBuffer: VkCommandBuffer, contents: VkSubpassContents): void {.stdcall.}
  vkCmdEndRenderPass*: proc(commandBuffer: VkCommandBuffer): void {.stdcall.}
  vkCmdExecuteCommands*: proc(commandBuffer: VkCommandBuffer, commandBufferCount: uint32, pCommandBuffers: ptr VkCommandBuffer): void {.stdcall.}
  vkCreateAndroidSurfaceKHR*: proc(instance: VkInstance, pCreateInfo: ptr VkAndroidSurfaceCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkCreateSurfaceOHOS*: proc(instance: VkInstance, pCreateInfo: ptr VkSurfaceCreateInfoOHOS, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceDisplayPropertiesKHR*: proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkDisplayPropertiesKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceDisplayPlanePropertiesKHR*: proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkDisplayPlanePropertiesKHR): VkResult {.stdcall.}
  vkGetDisplayPlaneSupportedDisplaysKHR*: proc(physicalDevice: VkPhysicalDevice, planeIndex: uint32, pDisplayCount: ptr uint32, pDisplays: ptr VkDisplayKHR): VkResult {.stdcall.}
  vkGetDisplayModePropertiesKHR*: proc(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pPropertyCount: ptr uint32, pProperties: ptr VkDisplayModePropertiesKHR): VkResult {.stdcall.}
  vkCreateDisplayModeKHR*: proc(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pCreateInfo: ptr VkDisplayModeCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pMode: ptr VkDisplayModeKHR): VkResult {.stdcall.}
  vkGetDisplayPlaneCapabilitiesKHR*: proc(physicalDevice: VkPhysicalDevice, mode: VkDisplayModeKHR, planeIndex: uint32, pCapabilities: ptr VkDisplayPlaneCapabilitiesKHR): VkResult {.stdcall.}
  vkCreateDisplayPlaneSurfaceKHR*: proc(instance: VkInstance, pCreateInfo: ptr VkDisplaySurfaceCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkCreateSharedSwapchainsKHR*: proc(device: VkDevice, swapchainCount: uint32, pCreateInfos: ptr VkSwapchainCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSwapchains: ptr VkSwapchainKHR): VkResult {.stdcall.}
  vkDestroySurfaceKHR*: proc(instance: VkInstance, surface: VkSurfaceKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetPhysicalDeviceSurfaceSupportKHR*: proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, surface: VkSurfaceKHR, pSupported: ptr VkBool32): VkResult {.stdcall.}
  vkGetPhysicalDeviceSurfaceCapabilitiesKHR*: proc(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceCapabilities: ptr VkSurfaceCapabilitiesKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceSurfaceFormatsKHR*: proc(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceFormatCount: ptr uint32, pSurfaceFormats: ptr VkSurfaceFormatKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceSurfacePresentModesKHR*: proc(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pPresentModeCount: ptr uint32, pPresentModes: ptr VkPresentModeKHR): VkResult {.stdcall.}
  vkCreateSwapchainKHR*: proc(device: VkDevice, pCreateInfo: ptr VkSwapchainCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSwapchain: ptr VkSwapchainKHR): VkResult {.stdcall.}
  vkDestroySwapchainKHR*: proc(device: VkDevice, swapchain: VkSwapchainKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetSwapchainImagesKHR*: proc(device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainImageCount: ptr uint32, pSwapchainImages: ptr VkImage): VkResult {.stdcall.}
  vkAcquireNextImageKHR*: proc(device: VkDevice, swapchain: VkSwapchainKHR, timeout: uint64, semaphore: VkSemaphore, fence: VkFence, pImageIndex: ptr uint32): VkResult {.stdcall.}
  vkQueuePresentKHR*: proc(queue: VkQueue, pPresentInfo: ptr VkPresentInfoKHR): VkResult {.stdcall.}
  vkCreateViSurfaceNN*: proc(instance: VkInstance, pCreateInfo: ptr VkViSurfaceCreateInfoNN, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkCreateWaylandSurfaceKHR*: proc(instance: VkInstance, pCreateInfo: ptr VkWaylandSurfaceCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceWaylandPresentationSupportKHR*: proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, display: pointer): VkBool32 {.stdcall.}
  vkCreateUbmSurfaceSEC*: proc(instance: VkInstance, pCreateInfo: ptr VkUbmSurfaceCreateInfoSEC, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceUbmPresentationSupportSEC*: proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, device: pointer): VkBool32 {.stdcall.}
  vkCreateWin32SurfaceKHR*: proc(instance: VkInstance, pCreateInfo: ptr VkWin32SurfaceCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceWin32PresentationSupportKHR*: proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32): VkBool32 {.stdcall.}
  vkCreateXlibSurfaceKHR*: proc(instance: VkInstance, pCreateInfo: ptr VkXlibSurfaceCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceXlibPresentationSupportKHR*: proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, dpy: pointer, visualID: uint32): VkBool32 {.stdcall.}
  vkCreateXcbSurfaceKHR*: proc(instance: VkInstance, pCreateInfo: ptr VkXcbSurfaceCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceXcbPresentationSupportKHR*: proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, connection: pointer, visual_id: uint32): VkBool32 {.stdcall.}
  vkCreateDirectFBSurfaceEXT*: proc(instance: VkInstance, pCreateInfo: ptr VkDirectFBSurfaceCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceDirectFBPresentationSupportEXT*: proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, dfb: pointer): VkBool32 {.stdcall.}
  vkCreateImagePipeSurfaceFUCHSIA*: proc(instance: VkInstance, pCreateInfo: ptr VkImagePipeSurfaceCreateInfoFUCHSIA, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkCreateStreamDescriptorSurfaceGGP*: proc(instance: VkInstance, pCreateInfo: ptr VkStreamDescriptorSurfaceCreateInfoGGP, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkCreateScreenSurfaceQNX*: proc(instance: VkInstance, pCreateInfo: ptr VkScreenSurfaceCreateInfoQNX, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceScreenPresentationSupportQNX*: proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, window: pointer): VkBool32 {.stdcall.}
  vkCreateDebugReportCallbackEXT*: proc(instance: VkInstance, pCreateInfo: ptr VkDebugReportCallbackCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pCallback: ptr VkDebugReportCallbackEXT): VkResult {.stdcall.}
  vkDestroyDebugReportCallbackEXT*: proc(instance: VkInstance, callback: VkDebugReportCallbackEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkDebugReportMessageEXT*: proc(instance: VkInstance, flags: VkDebugReportFlagsEXT, objectType: VkDebugReportObjectTypeEXT, `object`: uint64, location: csize_t, messageCode: int32, pLayerPrefix: cstring, pMessage: cstring): void {.stdcall.}
  vkDebugMarkerSetObjectNameEXT*: proc(device: VkDevice, pNameInfo: ptr VkDebugMarkerObjectNameInfoEXT): VkResult {.stdcall.}
  vkDebugMarkerSetObjectTagEXT*: proc(device: VkDevice, pTagInfo: ptr VkDebugMarkerObjectTagInfoEXT): VkResult {.stdcall.}
  vkCmdDebugMarkerBeginEXT*: proc(commandBuffer: VkCommandBuffer, pMarkerInfo: ptr VkDebugMarkerMarkerInfoEXT): void {.stdcall.}
  vkCmdDebugMarkerEndEXT*: proc(commandBuffer: VkCommandBuffer): void {.stdcall.}
  vkCmdDebugMarkerInsertEXT*: proc(commandBuffer: VkCommandBuffer, pMarkerInfo: ptr VkDebugMarkerMarkerInfoEXT): void {.stdcall.}
  vkGetPhysicalDeviceExternalImageFormatPropertiesNV*: proc(physicalDevice: VkPhysicalDevice, format: VkFormat, `type`: VkImageType, tiling: VkImageTiling, usage: VkImageUsageFlags, flags: VkImageCreateFlags, externalHandleType: VkExternalMemoryHandleTypeFlagsNV, pExternalImageFormatProperties: ptr VkExternalImageFormatPropertiesNV): VkResult {.stdcall.}
  vkGetMemoryWin32HandleNV*: proc(device: VkDevice, memory: VkDeviceMemory, handleType: VkExternalMemoryHandleTypeFlagsNV, pHandle: pointer): VkResult {.stdcall.}
  vkCmdExecuteGeneratedCommandsNV*: proc(commandBuffer: VkCommandBuffer, isPreprocessed: VkBool32, pGeneratedCommandsInfo: ptr VkGeneratedCommandsInfoNV): void {.stdcall.}
  vkCmdPreprocessGeneratedCommandsNV*: proc(commandBuffer: VkCommandBuffer, pGeneratedCommandsInfo: ptr VkGeneratedCommandsInfoNV): void {.stdcall.}
  vkCmdBindPipelineShaderGroupNV*: proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, pipeline: VkPipeline, groupIndex: uint32): void {.stdcall.}
  vkGetGeneratedCommandsMemoryRequirementsNV*: proc(device: VkDevice, pInfo: ptr VkGeneratedCommandsMemoryRequirementsInfoNV, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkCreateIndirectCommandsLayoutNV*: proc(device: VkDevice, pCreateInfo: ptr VkIndirectCommandsLayoutCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pIndirectCommandsLayout: ptr VkIndirectCommandsLayoutNV): VkResult {.stdcall.}
  vkDestroyIndirectCommandsLayoutNV*: proc(device: VkDevice, indirectCommandsLayout: VkIndirectCommandsLayoutNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCmdExecuteGeneratedCommandsEXT*: proc(commandBuffer: VkCommandBuffer, isPreprocessed: VkBool32, pGeneratedCommandsInfo: ptr VkGeneratedCommandsInfoEXT): void {.stdcall.}
  vkCmdPreprocessGeneratedCommandsEXT*: proc(commandBuffer: VkCommandBuffer, pGeneratedCommandsInfo: ptr VkGeneratedCommandsInfoEXT, stateCommandBuffer: VkCommandBuffer): void {.stdcall.}
  vkGetGeneratedCommandsMemoryRequirementsEXT*: proc(device: VkDevice, pInfo: ptr VkGeneratedCommandsMemoryRequirementsInfoEXT, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkCreateIndirectCommandsLayoutEXT*: proc(device: VkDevice, pCreateInfo: ptr VkIndirectCommandsLayoutCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pIndirectCommandsLayout: ptr VkIndirectCommandsLayoutEXT): VkResult {.stdcall.}
  vkDestroyIndirectCommandsLayoutEXT*: proc(device: VkDevice, indirectCommandsLayout: VkIndirectCommandsLayoutEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCreateIndirectExecutionSetEXT*: proc(device: VkDevice, pCreateInfo: ptr VkIndirectExecutionSetCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pIndirectExecutionSet: ptr VkIndirectExecutionSetEXT): VkResult {.stdcall.}
  vkDestroyIndirectExecutionSetEXT*: proc(device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkUpdateIndirectExecutionSetPipelineEXT*: proc(device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, executionSetWriteCount: uint32, pExecutionSetWrites: ptr VkWriteIndirectExecutionSetPipelineEXT): void {.stdcall.}
  vkUpdateIndirectExecutionSetShaderEXT*: proc(device: VkDevice, indirectExecutionSet: VkIndirectExecutionSetEXT, executionSetWriteCount: uint32, pExecutionSetWrites: ptr VkWriteIndirectExecutionSetShaderEXT): void {.stdcall.}
  vkGetPhysicalDeviceFeatures2*: proc(physicalDevice: VkPhysicalDevice, pFeatures: ptr VkPhysicalDeviceFeatures2): void {.stdcall.}
  vkGetPhysicalDeviceProperties2*: proc(physicalDevice: VkPhysicalDevice, pProperties: ptr VkPhysicalDeviceProperties2): void {.stdcall.}
  vkGetPhysicalDeviceFormatProperties2*: proc(physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: ptr VkFormatProperties2): void {.stdcall.}
  vkGetPhysicalDeviceImageFormatProperties2*: proc(physicalDevice: VkPhysicalDevice, pImageFormatInfo: ptr VkPhysicalDeviceImageFormatInfo2, pImageFormatProperties: ptr VkImageFormatProperties2): VkResult {.stdcall.}
  vkGetPhysicalDeviceQueueFamilyProperties2*: proc(physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: ptr uint32, pQueueFamilyProperties: ptr VkQueueFamilyProperties2): void {.stdcall.}
  vkGetPhysicalDeviceMemoryProperties2*: proc(physicalDevice: VkPhysicalDevice, pMemoryProperties: ptr VkPhysicalDeviceMemoryProperties2): void {.stdcall.}
  vkGetPhysicalDeviceSparseImageFormatProperties2*: proc(physicalDevice: VkPhysicalDevice, pFormatInfo: ptr VkPhysicalDeviceSparseImageFormatInfo2, pPropertyCount: ptr uint32, pProperties: ptr VkSparseImageFormatProperties2): void {.stdcall.}
  vkCmdPushDescriptorSet*: proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, set: uint32, descriptorWriteCount: uint32, pDescriptorWrites: ptr VkWriteDescriptorSet): void {.stdcall.}
  vkTrimCommandPool*: proc(device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolTrimFlags): void {.stdcall.}
  vkGetPhysicalDeviceExternalBufferProperties*: proc(physicalDevice: VkPhysicalDevice, pExternalBufferInfo: ptr VkPhysicalDeviceExternalBufferInfo, pExternalBufferProperties: ptr VkExternalBufferProperties): void {.stdcall.}
  vkGetMemoryWin32HandleKHR*: proc(device: VkDevice, pGetWin32HandleInfo: ptr VkMemoryGetWin32HandleInfoKHR, pHandle: pointer): VkResult {.stdcall.}
  vkGetMemoryWin32HandlePropertiesKHR*: proc(device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, handle: pointer, pMemoryWin32HandleProperties: ptr VkMemoryWin32HandlePropertiesKHR): VkResult {.stdcall.}
  vkGetMemoryFdKHR*: proc(device: VkDevice, pGetFdInfo: ptr VkMemoryGetFdInfoKHR, pFd: ptr int32): VkResult {.stdcall.}
  vkGetMemoryFdPropertiesKHR*: proc(device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, fd: int32, pMemoryFdProperties: ptr VkMemoryFdPropertiesKHR): VkResult {.stdcall.}
  vkGetMemoryZirconHandleFUCHSIA*: proc(device: VkDevice, pGetZirconHandleInfo: ptr VkMemoryGetZirconHandleInfoFUCHSIA, pZirconHandle: ptr uint32): VkResult {.stdcall.}
  vkGetMemoryZirconHandlePropertiesFUCHSIA*: proc(device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, zirconHandle: uint32, pMemoryZirconHandleProperties: ptr VkMemoryZirconHandlePropertiesFUCHSIA): VkResult {.stdcall.}
  vkGetMemoryRemoteAddressNV*: proc(device: VkDevice, pMemoryGetRemoteAddressInfo: ptr VkMemoryGetRemoteAddressInfoNV, pAddress: ptr VkRemoteAddressNV): VkResult {.stdcall.}
  vkGetMemorySciBufNV*: proc(device: VkDevice, pGetSciBufInfo: ptr VkMemoryGetSciBufInfoNV, pHandle: pointer): VkResult {.stdcall.}
  vkGetPhysicalDeviceExternalMemorySciBufPropertiesNV*: proc(physicalDevice: VkPhysicalDevice, handleType: VkExternalMemoryHandleTypeFlagBits, handle: pointer, pMemorySciBufProperties: ptr VkMemorySciBufPropertiesNV): VkResult {.stdcall.}
  vkGetPhysicalDeviceSciBufAttributesNV*: proc(physicalDevice: VkPhysicalDevice, pAttributes: pointer): VkResult {.stdcall.}
  vkGetPhysicalDeviceExternalSemaphoreProperties*: proc(physicalDevice: VkPhysicalDevice, pExternalSemaphoreInfo: ptr VkPhysicalDeviceExternalSemaphoreInfo, pExternalSemaphoreProperties: ptr VkExternalSemaphoreProperties): void {.stdcall.}
  vkGetSemaphoreWin32HandleKHR*: proc(device: VkDevice, pGetWin32HandleInfo: ptr VkSemaphoreGetWin32HandleInfoKHR, pHandle: pointer): VkResult {.stdcall.}
  vkImportSemaphoreWin32HandleKHR*: proc(device: VkDevice, pImportSemaphoreWin32HandleInfo: ptr VkImportSemaphoreWin32HandleInfoKHR): VkResult {.stdcall.}
  vkGetSemaphoreFdKHR*: proc(device: VkDevice, pGetFdInfo: ptr VkSemaphoreGetFdInfoKHR, pFd: ptr int32): VkResult {.stdcall.}
  vkImportSemaphoreFdKHR*: proc(device: VkDevice, pImportSemaphoreFdInfo: ptr VkImportSemaphoreFdInfoKHR): VkResult {.stdcall.}
  vkGetSemaphoreZirconHandleFUCHSIA*: proc(device: VkDevice, pGetZirconHandleInfo: ptr VkSemaphoreGetZirconHandleInfoFUCHSIA, pZirconHandle: ptr uint32): VkResult {.stdcall.}
  vkImportSemaphoreZirconHandleFUCHSIA*: proc(device: VkDevice, pImportSemaphoreZirconHandleInfo: ptr VkImportSemaphoreZirconHandleInfoFUCHSIA): VkResult {.stdcall.}
  vkGetPhysicalDeviceExternalFenceProperties*: proc(physicalDevice: VkPhysicalDevice, pExternalFenceInfo: ptr VkPhysicalDeviceExternalFenceInfo, pExternalFenceProperties: ptr VkExternalFenceProperties): void {.stdcall.}
  vkGetFenceWin32HandleKHR*: proc(device: VkDevice, pGetWin32HandleInfo: ptr VkFenceGetWin32HandleInfoKHR, pHandle: pointer): VkResult {.stdcall.}
  vkImportFenceWin32HandleKHR*: proc(device: VkDevice, pImportFenceWin32HandleInfo: ptr VkImportFenceWin32HandleInfoKHR): VkResult {.stdcall.}
  vkGetFenceFdKHR*: proc(device: VkDevice, pGetFdInfo: ptr VkFenceGetFdInfoKHR, pFd: ptr int32): VkResult {.stdcall.}
  vkImportFenceFdKHR*: proc(device: VkDevice, pImportFenceFdInfo: ptr VkImportFenceFdInfoKHR): VkResult {.stdcall.}
  vkGetFenceSciSyncFenceNV*: proc(device: VkDevice, pGetSciSyncHandleInfo: ptr VkFenceGetSciSyncInfoNV, pHandle: pointer): VkResult {.stdcall.}
  vkGetFenceSciSyncObjNV*: proc(device: VkDevice, pGetSciSyncHandleInfo: ptr VkFenceGetSciSyncInfoNV, pHandle: pointer): VkResult {.stdcall.}
  vkImportFenceSciSyncFenceNV*: proc(device: VkDevice, pImportFenceSciSyncInfo: ptr VkImportFenceSciSyncInfoNV): VkResult {.stdcall.}
  vkImportFenceSciSyncObjNV*: proc(device: VkDevice, pImportFenceSciSyncInfo: ptr VkImportFenceSciSyncInfoNV): VkResult {.stdcall.}
  vkGetSemaphoreSciSyncObjNV*: proc(device: VkDevice, pGetSciSyncInfo: ptr VkSemaphoreGetSciSyncInfoNV, pHandle: pointer): VkResult {.stdcall.}
  vkImportSemaphoreSciSyncObjNV*: proc(device: VkDevice, pImportSemaphoreSciSyncInfo: ptr VkImportSemaphoreSciSyncInfoNV): VkResult {.stdcall.}
  vkGetPhysicalDeviceSciSyncAttributesNV*: proc(physicalDevice: VkPhysicalDevice, pSciSyncAttributesInfo: ptr VkSciSyncAttributesInfoNV, pAttributes: pointer): VkResult {.stdcall.}
  vkCreateSemaphoreSciSyncPoolNV*: proc(device: VkDevice, pCreateInfo: ptr VkSemaphoreSciSyncPoolCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pSemaphorePool: ptr VkSemaphoreSciSyncPoolNV): VkResult {.stdcall.}
  vkDestroySemaphoreSciSyncPoolNV*: proc(device: VkDevice, semaphorePool: VkSemaphoreSciSyncPoolNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkReleaseDisplayEXT*: proc(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR): VkResult {.stdcall.}
  vkAcquireXlibDisplayEXT*: proc(physicalDevice: VkPhysicalDevice, dpy: pointer, display: VkDisplayKHR): VkResult {.stdcall.}
  vkGetRandROutputDisplayEXT*: proc(physicalDevice: VkPhysicalDevice, dpy: pointer, rrOutput: uint64, pDisplay: ptr VkDisplayKHR): VkResult {.stdcall.}
  vkAcquireWinrtDisplayNV*: proc(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR): VkResult {.stdcall.}
  vkGetWinrtDisplayNV*: proc(physicalDevice: VkPhysicalDevice, deviceRelativeId: uint32, pDisplay: ptr VkDisplayKHR): VkResult {.stdcall.}
  vkDisplayPowerControlEXT*: proc(device: VkDevice, display: VkDisplayKHR, pDisplayPowerInfo: ptr VkDisplayPowerInfoEXT): VkResult {.stdcall.}
  vkRegisterDeviceEventEXT*: proc(device: VkDevice, pDeviceEventInfo: ptr VkDeviceEventInfoEXT, pAllocator: ptr VkAllocationCallbacks, pFence: ptr VkFence): VkResult {.stdcall.}
  vkRegisterDisplayEventEXT*: proc(device: VkDevice, display: VkDisplayKHR, pDisplayEventInfo: ptr VkDisplayEventInfoEXT, pAllocator: ptr VkAllocationCallbacks, pFence: ptr VkFence): VkResult {.stdcall.}
  vkGetSwapchainCounterEXT*: proc(device: VkDevice, swapchain: VkSwapchainKHR, counter: VkSurfaceCounterFlagBitsEXT, pCounterValue: ptr uint64): VkResult {.stdcall.}
  vkGetPhysicalDeviceSurfaceCapabilities2EXT*: proc(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pSurfaceCapabilities: ptr VkSurfaceCapabilities2EXT): VkResult {.stdcall.}
  vkEnumeratePhysicalDeviceGroups*: proc(instance: VkInstance, pPhysicalDeviceGroupCount: ptr uint32, pPhysicalDeviceGroupProperties: ptr VkPhysicalDeviceGroupProperties): VkResult {.stdcall.}
  vkGetDeviceGroupPeerMemoryFeatures*: proc(device: VkDevice, heapIndex: uint32, localDeviceIndex: uint32, remoteDeviceIndex: uint32, pPeerMemoryFeatures: ptr VkPeerMemoryFeatureFlags): void {.stdcall.}
  vkBindBufferMemory2*: proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindBufferMemoryInfo): VkResult {.stdcall.}
  vkBindImageMemory2*: proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindImageMemoryInfo): VkResult {.stdcall.}
  vkCmdSetDeviceMask*: proc(commandBuffer: VkCommandBuffer, deviceMask: uint32): void {.stdcall.}
  vkGetDeviceGroupPresentCapabilitiesKHR*: proc(device: VkDevice, pDeviceGroupPresentCapabilities: ptr VkDeviceGroupPresentCapabilitiesKHR): VkResult {.stdcall.}
  vkGetDeviceGroupSurfacePresentModesKHR*: proc(device: VkDevice, surface: VkSurfaceKHR, pModes: ptr VkDeviceGroupPresentModeFlagsKHR): VkResult {.stdcall.}
  vkAcquireNextImage2KHR*: proc(device: VkDevice, pAcquireInfo: ptr VkAcquireNextImageInfoKHR, pImageIndex: ptr uint32): VkResult {.stdcall.}
  vkCmdDispatchBase*: proc(commandBuffer: VkCommandBuffer, baseGroupX: uint32, baseGroupY: uint32, baseGroupZ: uint32, groupCountX: uint32, groupCountY: uint32, groupCountZ: uint32): void {.stdcall.}
  vkGetPhysicalDevicePresentRectanglesKHR*: proc(physicalDevice: VkPhysicalDevice, surface: VkSurfaceKHR, pRectCount: ptr uint32, pRects: ptr VkRect2D): VkResult {.stdcall.}
  vkCreateDescriptorUpdateTemplate*: proc(device: VkDevice, pCreateInfo: ptr VkDescriptorUpdateTemplateCreateInfo, pAllocator: ptr VkAllocationCallbacks, pDescriptorUpdateTemplate: ptr VkDescriptorUpdateTemplate): VkResult {.stdcall.}
  vkDestroyDescriptorUpdateTemplate*: proc(device: VkDevice, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkUpdateDescriptorSetWithTemplate*: proc(device: VkDevice, descriptorSet: VkDescriptorSet, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pData: pointer): void {.stdcall.}
  vkCmdPushDescriptorSetWithTemplate*: proc(commandBuffer: VkCommandBuffer, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, layout: VkPipelineLayout, set: uint32, pData: pointer): void {.stdcall.}
  vkSetHdrMetadataEXT*: proc(device: VkDevice, swapchainCount: uint32, pSwapchains: ptr VkSwapchainKHR, pMetadata: ptr VkHdrMetadataEXT): void {.stdcall.}
  vkGetSwapchainStatusKHR*: proc(device: VkDevice, swapchain: VkSwapchainKHR): VkResult {.stdcall.}
  vkGetRefreshCycleDurationGOOGLE*: proc(device: VkDevice, swapchain: VkSwapchainKHR, pDisplayTimingProperties: ptr VkRefreshCycleDurationGOOGLE): VkResult {.stdcall.}
  vkGetPastPresentationTimingGOOGLE*: proc(device: VkDevice, swapchain: VkSwapchainKHR, pPresentationTimingCount: ptr uint32, pPresentationTimings: ptr VkPastPresentationTimingGOOGLE): VkResult {.stdcall.}
  vkCreateIOSSurfaceMVK*: proc(instance: VkInstance, pCreateInfo: ptr VkIOSSurfaceCreateInfoMVK, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkCreateMacOSSurfaceMVK*: proc(instance: VkInstance, pCreateInfo: ptr VkMacOSSurfaceCreateInfoMVK, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkCreateMetalSurfaceEXT*: proc(instance: VkInstance, pCreateInfo: ptr VkMetalSurfaceCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkCmdSetViewportWScalingNV*: proc(commandBuffer: VkCommandBuffer, firstViewport: uint32, viewportCount: uint32, pViewportWScalings: ptr VkViewportWScalingNV): void {.stdcall.}
  vkCmdSetDiscardRectangleEXT*: proc(commandBuffer: VkCommandBuffer, firstDiscardRectangle: uint32, discardRectangleCount: uint32, pDiscardRectangles: ptr VkRect2D): void {.stdcall.}
  vkCmdSetDiscardRectangleEnableEXT*: proc(commandBuffer: VkCommandBuffer, discardRectangleEnable: VkBool32): void {.stdcall.}
  vkCmdSetDiscardRectangleModeEXT*: proc(commandBuffer: VkCommandBuffer, discardRectangleMode: VkDiscardRectangleModeEXT): void {.stdcall.}
  vkCmdSetSampleLocationsEXT*: proc(commandBuffer: VkCommandBuffer, pSampleLocationsInfo: ptr VkSampleLocationsInfoEXT): void {.stdcall.}
  vkGetPhysicalDeviceMultisamplePropertiesEXT*: proc(physicalDevice: VkPhysicalDevice, samples: VkSampleCountFlagBits, pMultisampleProperties: ptr VkMultisamplePropertiesEXT): void {.stdcall.}
  vkGetPhysicalDeviceSurfaceCapabilities2KHR*: proc(physicalDevice: VkPhysicalDevice, pSurfaceInfo: ptr VkPhysicalDeviceSurfaceInfo2KHR, pSurfaceCapabilities: ptr VkSurfaceCapabilities2KHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceSurfaceFormats2KHR*: proc(physicalDevice: VkPhysicalDevice, pSurfaceInfo: ptr VkPhysicalDeviceSurfaceInfo2KHR, pSurfaceFormatCount: ptr uint32, pSurfaceFormats: ptr VkSurfaceFormat2KHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceDisplayProperties2KHR*: proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkDisplayProperties2KHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceDisplayPlaneProperties2KHR*: proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkDisplayPlaneProperties2KHR): VkResult {.stdcall.}
  vkGetDisplayModeProperties2KHR*: proc(physicalDevice: VkPhysicalDevice, display: VkDisplayKHR, pPropertyCount: ptr uint32, pProperties: ptr VkDisplayModeProperties2KHR): VkResult {.stdcall.}
  vkGetDisplayPlaneCapabilities2KHR*: proc(physicalDevice: VkPhysicalDevice, pDisplayPlaneInfo: ptr VkDisplayPlaneInfo2KHR, pCapabilities: ptr VkDisplayPlaneCapabilities2KHR): VkResult {.stdcall.}
  vkGetBufferMemoryRequirements2*: proc(device: VkDevice, pInfo: ptr VkBufferMemoryRequirementsInfo2, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkGetImageMemoryRequirements2*: proc(device: VkDevice, pInfo: ptr VkImageMemoryRequirementsInfo2, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkGetImageSparseMemoryRequirements2*: proc(device: VkDevice, pInfo: ptr VkImageSparseMemoryRequirementsInfo2, pSparseMemoryRequirementCount: ptr uint32, pSparseMemoryRequirements: ptr VkSparseImageMemoryRequirements2): void {.stdcall.}
  vkGetDeviceBufferMemoryRequirements*: proc(device: VkDevice, pInfo: ptr VkDeviceBufferMemoryRequirements, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkGetDeviceImageMemoryRequirements*: proc(device: VkDevice, pInfo: ptr VkDeviceImageMemoryRequirements, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkGetDeviceImageSparseMemoryRequirements*: proc(device: VkDevice, pInfo: ptr VkDeviceImageMemoryRequirements, pSparseMemoryRequirementCount: ptr uint32, pSparseMemoryRequirements: ptr VkSparseImageMemoryRequirements2): void {.stdcall.}
  vkCreateSamplerYcbcrConversion*: proc(device: VkDevice, pCreateInfo: ptr VkSamplerYcbcrConversionCreateInfo, pAllocator: ptr VkAllocationCallbacks, pYcbcrConversion: ptr VkSamplerYcbcrConversion): VkResult {.stdcall.}
  vkDestroySamplerYcbcrConversion*: proc(device: VkDevice, ycbcrConversion: VkSamplerYcbcrConversion, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetDeviceQueue2*: proc(device: VkDevice, pQueueInfo: ptr VkDeviceQueueInfo2, pQueue: ptr VkQueue): void {.stdcall.}
  vkCreateValidationCacheEXT*: proc(device: VkDevice, pCreateInfo: ptr VkValidationCacheCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pValidationCache: ptr VkValidationCacheEXT): VkResult {.stdcall.}
  vkDestroyValidationCacheEXT*: proc(device: VkDevice, validationCache: VkValidationCacheEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetValidationCacheDataEXT*: proc(device: VkDevice, validationCache: VkValidationCacheEXT, pDataSize: ptr csize_t, pData: pointer): VkResult {.stdcall.}
  vkMergeValidationCachesEXT*: proc(device: VkDevice, dstCache: VkValidationCacheEXT, srcCacheCount: uint32, pSrcCaches: ptr VkValidationCacheEXT): VkResult {.stdcall.}
  vkGetDescriptorSetLayoutSupport*: proc(device: VkDevice, pCreateInfo: ptr VkDescriptorSetLayoutCreateInfo, pSupport: ptr VkDescriptorSetLayoutSupport): void {.stdcall.}
  vkGetSwapchainGrallocUsageANDROID*: proc(device: VkDevice, format: VkFormat, imageUsage: VkImageUsageFlags, grallocUsage: ptr int32): VkResult {.stdcall.}
  vkGetSwapchainGrallocUsage2ANDROID*: proc(device: VkDevice, format: VkFormat, imageUsage: VkImageUsageFlags, swapchainImageUsage: VkSwapchainImageUsageFlagsANDROID, grallocConsumerUsage: ptr uint64, grallocProducerUsage: ptr uint64): VkResult {.stdcall.}
  vkAcquireImageANDROID*: proc(device: VkDevice, image: VkImage, nativeFenceFd: int32, semaphore: VkSemaphore, fence: VkFence): VkResult {.stdcall.}
  vkQueueSignalReleaseImageANDROID*: proc(queue: VkQueue, waitSemaphoreCount: uint32, pWaitSemaphores: ptr VkSemaphore, image: VkImage, pNativeFenceFd: ptr int32): VkResult {.stdcall.}
  vkGetShaderInfoAMD*: proc(device: VkDevice, pipeline: VkPipeline, shaderStage: VkShaderStageFlagBits, infoType: VkShaderInfoTypeAMD, pInfoSize: ptr csize_t, pInfo: pointer): VkResult {.stdcall.}
  vkSetLocalDimmingAMD*: proc(device: VkDevice, swapChain: VkSwapchainKHR, localDimmingEnable: VkBool32): void {.stdcall.}
  vkGetPhysicalDeviceCalibrateableTimeDomainsKHR*: proc(physicalDevice: VkPhysicalDevice, pTimeDomainCount: ptr uint32, pTimeDomains: ptr VkTimeDomainKHR): VkResult {.stdcall.}
  vkGetCalibratedTimestampsKHR*: proc(device: VkDevice, timestampCount: uint32, pTimestampInfos: ptr VkCalibratedTimestampInfoKHR, pTimestamps: ptr uint64, pMaxDeviation: ptr uint64): VkResult {.stdcall.}
  vkSetDebugUtilsObjectNameEXT*: proc(device: VkDevice, pNameInfo: ptr VkDebugUtilsObjectNameInfoEXT): VkResult {.stdcall.}
  vkSetDebugUtilsObjectTagEXT*: proc(device: VkDevice, pTagInfo: ptr VkDebugUtilsObjectTagInfoEXT): VkResult {.stdcall.}
  vkQueueBeginDebugUtilsLabelEXT*: proc(queue: VkQueue, pLabelInfo: ptr VkDebugUtilsLabelEXT): void {.stdcall.}
  vkQueueEndDebugUtilsLabelEXT*: proc(queue: VkQueue): void {.stdcall.}
  vkQueueInsertDebugUtilsLabelEXT*: proc(queue: VkQueue, pLabelInfo: ptr VkDebugUtilsLabelEXT): void {.stdcall.}
  vkCmdBeginDebugUtilsLabelEXT*: proc(commandBuffer: VkCommandBuffer, pLabelInfo: ptr VkDebugUtilsLabelEXT): void {.stdcall.}
  vkCmdEndDebugUtilsLabelEXT*: proc(commandBuffer: VkCommandBuffer): void {.stdcall.}
  vkCmdInsertDebugUtilsLabelEXT*: proc(commandBuffer: VkCommandBuffer, pLabelInfo: ptr VkDebugUtilsLabelEXT): void {.stdcall.}
  vkCreateDebugUtilsMessengerEXT*: proc(instance: VkInstance, pCreateInfo: ptr VkDebugUtilsMessengerCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pMessenger: ptr VkDebugUtilsMessengerEXT): VkResult {.stdcall.}
  vkDestroyDebugUtilsMessengerEXT*: proc(instance: VkInstance, messenger: VkDebugUtilsMessengerEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkSubmitDebugUtilsMessageEXT*: proc(instance: VkInstance, messageSeverity: VkDebugUtilsMessageSeverityFlagBitsEXT, messageTypes: VkDebugUtilsMessageTypeFlagsEXT, pCallbackData: ptr VkDebugUtilsMessengerCallbackDataEXT): void {.stdcall.}
  vkGetMemoryHostPointerPropertiesEXT*: proc(device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, pHostPointer: pointer, pMemoryHostPointerProperties: ptr VkMemoryHostPointerPropertiesEXT): VkResult {.stdcall.}
  vkCmdWriteBufferMarkerAMD*: proc(commandBuffer: VkCommandBuffer, pipelineStage: VkPipelineStageFlagBits, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, marker: uint32): void {.stdcall.}
  vkCreateRenderPass2*: proc(device: VkDevice, pCreateInfo: ptr VkRenderPassCreateInfo2, pAllocator: ptr VkAllocationCallbacks, pRenderPass: ptr VkRenderPass): VkResult {.stdcall.}
  vkCmdBeginRenderPass2*: proc(commandBuffer: VkCommandBuffer, pRenderPassBegin: ptr VkRenderPassBeginInfo, pSubpassBeginInfo: ptr VkSubpassBeginInfo): void {.stdcall.}
  vkCmdNextSubpass2*: proc(commandBuffer: VkCommandBuffer, pSubpassBeginInfo: ptr VkSubpassBeginInfo, pSubpassEndInfo: ptr VkSubpassEndInfo): void {.stdcall.}
  vkCmdEndRenderPass2*: proc(commandBuffer: VkCommandBuffer, pSubpassEndInfo: ptr VkSubpassEndInfo): void {.stdcall.}
  vkGetSemaphoreCounterValue*: proc(device: VkDevice, semaphore: VkSemaphore, pValue: ptr uint64): VkResult {.stdcall.}
  vkWaitSemaphores*: proc(device: VkDevice, pWaitInfo: ptr VkSemaphoreWaitInfo, timeout: uint64): VkResult {.stdcall.}
  vkSignalSemaphore*: proc(device: VkDevice, pSignalInfo: ptr VkSemaphoreSignalInfo): VkResult {.stdcall.}
  vkGetAndroidHardwareBufferPropertiesANDROID*: proc(device: VkDevice, buffer: pointer, pProperties: ptr VkAndroidHardwareBufferPropertiesANDROID): VkResult {.stdcall.}
  vkGetMemoryAndroidHardwareBufferANDROID*: proc(device: VkDevice, pInfo: ptr VkMemoryGetAndroidHardwareBufferInfoANDROID, pBuffer: ptr pointer): VkResult {.stdcall.}
  vkCmdDrawIndirectCount*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}
  vkCmdDrawIndexedIndirectCount*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}
  vkCmdSetCheckpointNV*: proc(commandBuffer: VkCommandBuffer, pCheckpointMarker: pointer): void {.stdcall.}
  vkGetQueueCheckpointDataNV*: proc(queue: VkQueue, pCheckpointDataCount: ptr uint32, pCheckpointData: ptr VkCheckpointDataNV): void {.stdcall.}
  vkCmdBindTransformFeedbackBuffersEXT*: proc(commandBuffer: VkCommandBuffer, firstBinding: uint32, bindingCount: uint32, pBuffers: ptr VkBuffer, pOffsets: ptr VkDeviceSize, pSizes: ptr VkDeviceSize): void {.stdcall.}
  vkCmdBeginTransformFeedbackEXT*: proc(commandBuffer: VkCommandBuffer, firstCounterBuffer: uint32, counterBufferCount: uint32, pCounterBuffers: ptr VkBuffer, pCounterBufferOffsets: ptr VkDeviceSize): void {.stdcall.}
  vkCmdEndTransformFeedbackEXT*: proc(commandBuffer: VkCommandBuffer, firstCounterBuffer: uint32, counterBufferCount: uint32, pCounterBuffers: ptr VkBuffer, pCounterBufferOffsets: ptr VkDeviceSize): void {.stdcall.}
  vkCmdBeginQueryIndexedEXT*: proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: uint32, flags: VkQueryControlFlags, index: uint32): void {.stdcall.}
  vkCmdEndQueryIndexedEXT*: proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, query: uint32, index: uint32): void {.stdcall.}
  vkCmdDrawIndirectByteCountEXT*: proc(commandBuffer: VkCommandBuffer, instanceCount: uint32, firstInstance: uint32, counterBuffer: VkBuffer, counterBufferOffset: VkDeviceSize, counterOffset: uint32, vertexStride: uint32): void {.stdcall.}
  vkCmdSetExclusiveScissorNV*: proc(commandBuffer: VkCommandBuffer, firstExclusiveScissor: uint32, exclusiveScissorCount: uint32, pExclusiveScissors: ptr VkRect2D): void {.stdcall.}
  vkCmdSetExclusiveScissorEnableNV*: proc(commandBuffer: VkCommandBuffer, firstExclusiveScissor: uint32, exclusiveScissorCount: uint32, pExclusiveScissorEnables: ptr VkBool32): void {.stdcall.}
  vkCmdBindShadingRateImageNV*: proc(commandBuffer: VkCommandBuffer, imageView: VkImageView, imageLayout: VkImageLayout): void {.stdcall.}
  vkCmdSetViewportShadingRatePaletteNV*: proc(commandBuffer: VkCommandBuffer, firstViewport: uint32, viewportCount: uint32, pShadingRatePalettes: ptr VkShadingRatePaletteNV): void {.stdcall.}
  vkCmdSetCoarseSampleOrderNV*: proc(commandBuffer: VkCommandBuffer, sampleOrderType: VkCoarseSampleOrderTypeNV, customSampleOrderCount: uint32, pCustomSampleOrders: ptr VkCoarseSampleOrderCustomNV): void {.stdcall.}
  vkCmdDrawMeshTasksNV*: proc(commandBuffer: VkCommandBuffer, taskCount: uint32, firstTask: uint32): void {.stdcall.}
  vkCmdDrawMeshTasksIndirectNV*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: uint32, stride: uint32): void {.stdcall.}
  vkCmdDrawMeshTasksIndirectCountNV*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}
  vkCmdDrawMeshTasksEXT*: proc(commandBuffer: VkCommandBuffer, groupCountX: uint32, groupCountY: uint32, groupCountZ: uint32): void {.stdcall.}
  vkCmdDrawMeshTasksIndirectEXT*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, drawCount: uint32, stride: uint32): void {.stdcall.}
  vkCmdDrawMeshTasksIndirectCountEXT*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}
  vkCompileDeferredNV*: proc(device: VkDevice, pipeline: VkPipeline, shader: uint32): VkResult {.stdcall.}
  vkCreateAccelerationStructureNV*: proc(device: VkDevice, pCreateInfo: ptr VkAccelerationStructureCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pAccelerationStructure: ptr VkAccelerationStructureNV): VkResult {.stdcall.}
  vkCmdBindInvocationMaskHUAWEI*: proc(commandBuffer: VkCommandBuffer, imageView: VkImageView, imageLayout: VkImageLayout): void {.stdcall.}
  vkDestroyAccelerationStructureKHR*: proc(device: VkDevice, accelerationStructure: VkAccelerationStructureKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkDestroyAccelerationStructureNV*: proc(device: VkDevice, accelerationStructure: VkAccelerationStructureNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetAccelerationStructureMemoryRequirementsNV*: proc(device: VkDevice, pInfo: ptr VkAccelerationStructureMemoryRequirementsInfoNV, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkBindAccelerationStructureMemoryNV*: proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindAccelerationStructureMemoryInfoNV): VkResult {.stdcall.}
  vkCmdCopyAccelerationStructureNV*: proc(commandBuffer: VkCommandBuffer, dst: VkAccelerationStructureNV, src: VkAccelerationStructureNV, mode: VkCopyAccelerationStructureModeKHR): void {.stdcall.}
  vkCmdCopyAccelerationStructureKHR*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkCopyAccelerationStructureInfoKHR): void {.stdcall.}
  vkCopyAccelerationStructureKHR*: proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: ptr VkCopyAccelerationStructureInfoKHR): VkResult {.stdcall.}
  vkCmdCopyAccelerationStructureToMemoryKHR*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkCopyAccelerationStructureToMemoryInfoKHR): void {.stdcall.}
  vkCopyAccelerationStructureToMemoryKHR*: proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: ptr VkCopyAccelerationStructureToMemoryInfoKHR): VkResult {.stdcall.}
  vkCmdCopyMemoryToAccelerationStructureKHR*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkCopyMemoryToAccelerationStructureInfoKHR): void {.stdcall.}
  vkCopyMemoryToAccelerationStructureKHR*: proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: ptr VkCopyMemoryToAccelerationStructureInfoKHR): VkResult {.stdcall.}
  vkCmdWriteAccelerationStructuresPropertiesKHR*: proc(commandBuffer: VkCommandBuffer, accelerationStructureCount: uint32, pAccelerationStructures: ptr VkAccelerationStructureKHR, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: uint32): void {.stdcall.}
  vkCmdWriteAccelerationStructuresPropertiesNV*: proc(commandBuffer: VkCommandBuffer, accelerationStructureCount: uint32, pAccelerationStructures: ptr VkAccelerationStructureNV, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: uint32): void {.stdcall.}
  vkCmdBuildAccelerationStructureNV*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkAccelerationStructureInfoNV, instanceData: VkBuffer, instanceOffset: VkDeviceSize, update: VkBool32, dst: VkAccelerationStructureNV, src: VkAccelerationStructureNV, scratch: VkBuffer, scratchOffset: VkDeviceSize): void {.stdcall.}
  vkWriteAccelerationStructuresPropertiesKHR*: proc(device: VkDevice, accelerationStructureCount: uint32, pAccelerationStructures: ptr VkAccelerationStructureKHR, queryType: VkQueryType, dataSize: csize_t, pData: pointer, stride: csize_t): VkResult {.stdcall.}
  vkCmdTraceRaysKHR*: proc(commandBuffer: VkCommandBuffer, pRaygenShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, pMissShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, pHitShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, pCallableShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, width: uint32, height: uint32, depth: uint32): void {.stdcall.}
  vkCmdTraceRaysNV*: proc(commandBuffer: VkCommandBuffer, raygenShaderBindingTableBuffer: VkBuffer, raygenShaderBindingOffset: VkDeviceSize, missShaderBindingTableBuffer: VkBuffer, missShaderBindingOffset: VkDeviceSize, missShaderBindingStride: VkDeviceSize, hitShaderBindingTableBuffer: VkBuffer, hitShaderBindingOffset: VkDeviceSize, hitShaderBindingStride: VkDeviceSize, callableShaderBindingTableBuffer: VkBuffer, callableShaderBindingOffset: VkDeviceSize, callableShaderBindingStride: VkDeviceSize, width: uint32, height: uint32, depth: uint32): void {.stdcall.}
  vkGetRayTracingShaderGroupHandlesKHR*: proc(device: VkDevice, pipeline: VkPipeline, firstGroup: uint32, groupCount: uint32, dataSize: csize_t, pData: pointer): VkResult {.stdcall.}
  vkGetRayTracingCaptureReplayShaderGroupHandlesKHR*: proc(device: VkDevice, pipeline: VkPipeline, firstGroup: uint32, groupCount: uint32, dataSize: csize_t, pData: pointer): VkResult {.stdcall.}
  vkGetAccelerationStructureHandleNV*: proc(device: VkDevice, accelerationStructure: VkAccelerationStructureNV, dataSize: csize_t, pData: pointer): VkResult {.stdcall.}
  vkCreateRayTracingPipelinesNV*: proc(device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: uint32, pCreateInfos: ptr VkRayTracingPipelineCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pPipelines: ptr VkPipeline): VkResult {.stdcall.}
  vkCreateRayTracingPipelinesKHR*: proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pipelineCache: VkPipelineCache, createInfoCount: uint32, pCreateInfos: ptr VkRayTracingPipelineCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pPipelines: ptr VkPipeline): VkResult {.stdcall.}
  vkGetPhysicalDeviceCooperativeMatrixPropertiesNV*: proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkCooperativeMatrixPropertiesNV): VkResult {.stdcall.}
  vkCmdTraceRaysIndirectKHR*: proc(commandBuffer: VkCommandBuffer, pRaygenShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, pMissShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, pHitShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, pCallableShaderBindingTable: ptr VkStridedDeviceAddressRegionKHR, indirectDeviceAddress: VkDeviceAddress): void {.stdcall.}
  vkCmdTraceRaysIndirect2KHR*: proc(commandBuffer: VkCommandBuffer, indirectDeviceAddress: VkDeviceAddress): void {.stdcall.}
  vkGetClusterAccelerationStructureBuildSizesNV*: proc(device: VkDevice, pInfo: ptr VkClusterAccelerationStructureInputInfoNV, pSizeInfo: ptr VkAccelerationStructureBuildSizesInfoKHR): void {.stdcall.}
  vkCmdBuildClusterAccelerationStructureIndirectNV*: proc(commandBuffer: VkCommandBuffer, pCommandInfos: ptr VkClusterAccelerationStructureCommandsInfoNV): void {.stdcall.}
  vkGetDeviceAccelerationStructureCompatibilityKHR*: proc(device: VkDevice, pVersionInfo: ptr VkAccelerationStructureVersionInfoKHR, pCompatibility: ptr VkAccelerationStructureCompatibilityKHR): void {.stdcall.}
  vkGetRayTracingShaderGroupStackSizeKHR*: proc(device: VkDevice, pipeline: VkPipeline, group: uint32, groupShader: VkShaderGroupShaderKHR): VkDeviceSize {.stdcall.}
  vkCmdSetRayTracingPipelineStackSizeKHR*: proc(commandBuffer: VkCommandBuffer, pipelineStackSize: uint32): void {.stdcall.}
  vkGetImageViewHandleNVX*: proc(device: VkDevice, pInfo: ptr VkImageViewHandleInfoNVX): uint32 {.stdcall.}
  vkGetImageViewHandle64NVX*: proc(device: VkDevice, pInfo: ptr VkImageViewHandleInfoNVX): uint64 {.stdcall.}
  vkGetImageViewAddressNVX*: proc(device: VkDevice, imageView: VkImageView, pProperties: ptr VkImageViewAddressPropertiesNVX): VkResult {.stdcall.}
  vkGetDeviceCombinedImageSamplerIndexNVX*: proc(device: VkDevice, imageViewIndex: uint64, samplerIndex: uint64): uint64 {.stdcall.}
  vkGetPhysicalDeviceSurfacePresentModes2EXT*: proc(physicalDevice: VkPhysicalDevice, pSurfaceInfo: ptr VkPhysicalDeviceSurfaceInfo2KHR, pPresentModeCount: ptr uint32, pPresentModes: ptr VkPresentModeKHR): VkResult {.stdcall.}
  vkGetDeviceGroupSurfacePresentModes2EXT*: proc(device: VkDevice, pSurfaceInfo: ptr VkPhysicalDeviceSurfaceInfo2KHR, pModes: ptr VkDeviceGroupPresentModeFlagsKHR): VkResult {.stdcall.}
  vkAcquireFullScreenExclusiveModeEXT*: proc(device: VkDevice, swapchain: VkSwapchainKHR): VkResult {.stdcall.}
  vkReleaseFullScreenExclusiveModeEXT*: proc(device: VkDevice, swapchain: VkSwapchainKHR): VkResult {.stdcall.}
  vkEnumeratePhysicalDeviceQueueFamilyPerformanceQueryCountersKHR*: proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, pCounterCount: ptr uint32, pCounters: ptr VkPerformanceCounterKHR, pCounterDescriptions: ptr VkPerformanceCounterDescriptionKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceQueueFamilyPerformanceQueryPassesKHR*: proc(physicalDevice: VkPhysicalDevice, pPerformanceQueryCreateInfo: ptr VkQueryPoolPerformanceCreateInfoKHR, pNumPasses: ptr uint32): void {.stdcall.}
  vkAcquireProfilingLockKHR*: proc(device: VkDevice, pInfo: ptr VkAcquireProfilingLockInfoKHR): VkResult {.stdcall.}
  vkReleaseProfilingLockKHR*: proc(device: VkDevice): void {.stdcall.}
  vkGetImageDrmFormatModifierPropertiesEXT*: proc(device: VkDevice, image: VkImage, pProperties: ptr VkImageDrmFormatModifierPropertiesEXT): VkResult {.stdcall.}
  vkGetBufferOpaqueCaptureAddress*: proc(device: VkDevice, pInfo: ptr VkBufferDeviceAddressInfo): uint64 {.stdcall.}
  vkGetBufferDeviceAddress*: proc(device: VkDevice, pInfo: ptr VkBufferDeviceAddressInfo): VkDeviceAddress {.stdcall.}
  vkCreateHeadlessSurfaceEXT*: proc(instance: VkInstance, pCreateInfo: ptr VkHeadlessSurfaceCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pSurface: ptr VkSurfaceKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceSupportedFramebufferMixedSamplesCombinationsNV*: proc(physicalDevice: VkPhysicalDevice, pCombinationCount: ptr uint32, pCombinations: ptr VkFramebufferMixedSamplesCombinationNV): VkResult {.stdcall.}
  vkInitializePerformanceApiINTEL*: proc(device: VkDevice, pInitializeInfo: ptr VkInitializePerformanceApiInfoINTEL): VkResult {.stdcall.}
  vkUninitializePerformanceApiINTEL*: proc(device: VkDevice): void {.stdcall.}
  vkCmdSetPerformanceMarkerINTEL*: proc(commandBuffer: VkCommandBuffer, pMarkerInfo: ptr VkPerformanceMarkerInfoINTEL): VkResult {.stdcall.}
  vkCmdSetPerformanceStreamMarkerINTEL*: proc(commandBuffer: VkCommandBuffer, pMarkerInfo: ptr VkPerformanceStreamMarkerInfoINTEL): VkResult {.stdcall.}
  vkCmdSetPerformanceOverrideINTEL*: proc(commandBuffer: VkCommandBuffer, pOverrideInfo: ptr VkPerformanceOverrideInfoINTEL): VkResult {.stdcall.}
  vkAcquirePerformanceConfigurationINTEL*: proc(device: VkDevice, pAcquireInfo: ptr VkPerformanceConfigurationAcquireInfoINTEL, pConfiguration: ptr VkPerformanceConfigurationINTEL): VkResult {.stdcall.}
  vkReleasePerformanceConfigurationINTEL*: proc(device: VkDevice, configuration: VkPerformanceConfigurationINTEL): VkResult {.stdcall.}
  vkQueueSetPerformanceConfigurationINTEL*: proc(queue: VkQueue, configuration: VkPerformanceConfigurationINTEL): VkResult {.stdcall.}
  vkGetPerformanceParameterINTEL*: proc(device: VkDevice, parameter: VkPerformanceParameterTypeINTEL, pValue: ptr VkPerformanceValueINTEL): VkResult {.stdcall.}
  vkGetDeviceMemoryOpaqueCaptureAddress*: proc(device: VkDevice, pInfo: ptr VkDeviceMemoryOpaqueCaptureAddressInfo): uint64 {.stdcall.}
  vkGetPipelineExecutablePropertiesKHR*: proc(device: VkDevice, pPipelineInfo: ptr VkPipelineInfoKHR, pExecutableCount: ptr uint32, pProperties: ptr VkPipelineExecutablePropertiesKHR): VkResult {.stdcall.}
  vkGetPipelineExecutableStatisticsKHR*: proc(device: VkDevice, pExecutableInfo: ptr VkPipelineExecutableInfoKHR, pStatisticCount: ptr uint32, pStatistics: ptr VkPipelineExecutableStatisticKHR): VkResult {.stdcall.}
  vkGetPipelineExecutableInternalRepresentationsKHR*: proc(device: VkDevice, pExecutableInfo: ptr VkPipelineExecutableInfoKHR, pInternalRepresentationCount: ptr uint32, pInternalRepresentations: ptr VkPipelineExecutableInternalRepresentationKHR): VkResult {.stdcall.}
  vkCmdSetLineStipple*: proc(commandBuffer: VkCommandBuffer, lineStippleFactor: uint32, lineStipplePattern: uint16): void {.stdcall.}
  vkGetFaultData*: proc(device: VkDevice, faultQueryBehavior: VkFaultQueryBehavior, pUnrecordedFaults: ptr VkBool32, pFaultCount: ptr uint32, pFaults: ptr VkFaultData): VkResult {.stdcall.}
  vkGetPhysicalDeviceToolProperties*: proc(physicalDevice: VkPhysicalDevice, pToolCount: ptr uint32, pToolProperties: ptr VkPhysicalDeviceToolProperties): VkResult {.stdcall.}
  vkCreateAccelerationStructureKHR*: proc(device: VkDevice, pCreateInfo: ptr VkAccelerationStructureCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pAccelerationStructure: ptr VkAccelerationStructureKHR): VkResult {.stdcall.}
  vkCmdBuildAccelerationStructuresKHR*: proc(commandBuffer: VkCommandBuffer, infoCount: uint32, pInfos: ptr VkAccelerationStructureBuildGeometryInfoKHR, ppBuildRangeInfos: ptr ptr VkAccelerationStructureBuildRangeInfoKHR): void {.stdcall.}
  vkCmdBuildAccelerationStructuresIndirectKHR*: proc(commandBuffer: VkCommandBuffer, infoCount: uint32, pInfos: ptr VkAccelerationStructureBuildGeometryInfoKHR, pIndirectDeviceAddresses: ptr VkDeviceAddress, pIndirectStrides: ptr uint32, ppMaxPrimitiveCounts: ptr ptr uint32): void {.stdcall.}
  vkBuildAccelerationStructuresKHR*: proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, infoCount: uint32, pInfos: ptr VkAccelerationStructureBuildGeometryInfoKHR, ppBuildRangeInfos: ptr ptr VkAccelerationStructureBuildRangeInfoKHR): VkResult {.stdcall.}
  vkGetAccelerationStructureDeviceAddressKHR*: proc(device: VkDevice, pInfo: ptr VkAccelerationStructureDeviceAddressInfoKHR): VkDeviceAddress {.stdcall.}
  vkCreateDeferredOperationKHR*: proc(device: VkDevice, pAllocator: ptr VkAllocationCallbacks, pDeferredOperation: ptr VkDeferredOperationKHR): VkResult {.stdcall.}
  vkDestroyDeferredOperationKHR*: proc(device: VkDevice, operation: VkDeferredOperationKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetDeferredOperationMaxConcurrencyKHR*: proc(device: VkDevice, operation: VkDeferredOperationKHR): uint32 {.stdcall.}
  vkGetDeferredOperationResultKHR*: proc(device: VkDevice, operation: VkDeferredOperationKHR): VkResult {.stdcall.}
  vkDeferredOperationJoinKHR*: proc(device: VkDevice, operation: VkDeferredOperationKHR): VkResult {.stdcall.}
  vkGetPipelineIndirectMemoryRequirementsNV*: proc(device: VkDevice, pCreateInfo: ptr VkComputePipelineCreateInfo, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkGetPipelineIndirectDeviceAddressNV*: proc(device: VkDevice, pInfo: ptr VkPipelineIndirectDeviceAddressInfoNV): VkDeviceAddress {.stdcall.}
  vkAntiLagUpdateAMD*: proc(device: VkDevice, pData: ptr VkAntiLagDataAMD): void {.stdcall.}
  vkCmdSetCullMode*: proc(commandBuffer: VkCommandBuffer, cullMode: VkCullModeFlags): void {.stdcall.}
  vkCmdSetFrontFace*: proc(commandBuffer: VkCommandBuffer, frontFace: VkFrontFace): void {.stdcall.}
  vkCmdSetPrimitiveTopology*: proc(commandBuffer: VkCommandBuffer, primitiveTopology: VkPrimitiveTopology): void {.stdcall.}
  vkCmdSetViewportWithCount*: proc(commandBuffer: VkCommandBuffer, viewportCount: uint32, pViewports: ptr VkViewport): void {.stdcall.}
  vkCmdSetScissorWithCount*: proc(commandBuffer: VkCommandBuffer, scissorCount: uint32, pScissors: ptr VkRect2D): void {.stdcall.}
  vkCmdBindIndexBuffer2*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, size: VkDeviceSize, indexType: VkIndexType): void {.stdcall.}
  vkCmdBindVertexBuffers2*: proc(commandBuffer: VkCommandBuffer, firstBinding: uint32, bindingCount: uint32, pBuffers: ptr VkBuffer, pOffsets: ptr VkDeviceSize, pSizes: ptr VkDeviceSize, pStrides: ptr VkDeviceSize): void {.stdcall.}
  vkCmdSetDepthTestEnable*: proc(commandBuffer: VkCommandBuffer, depthTestEnable: VkBool32): void {.stdcall.}
  vkCmdSetDepthWriteEnable*: proc(commandBuffer: VkCommandBuffer, depthWriteEnable: VkBool32): void {.stdcall.}
  vkCmdSetDepthCompareOp*: proc(commandBuffer: VkCommandBuffer, depthCompareOp: VkCompareOp): void {.stdcall.}
  vkCmdSetDepthBoundsTestEnable*: proc(commandBuffer: VkCommandBuffer, depthBoundsTestEnable: VkBool32): void {.stdcall.}
  vkCmdSetStencilTestEnable*: proc(commandBuffer: VkCommandBuffer, stencilTestEnable: VkBool32): void {.stdcall.}
  vkCmdSetStencilOp*: proc(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, failOp: VkStencilOp, passOp: VkStencilOp, depthFailOp: VkStencilOp, compareOp: VkCompareOp): void {.stdcall.}
  vkCmdSetPatchControlPointsEXT*: proc(commandBuffer: VkCommandBuffer, patchControlPoints: uint32): void {.stdcall.}
  vkCmdSetRasterizerDiscardEnable*: proc(commandBuffer: VkCommandBuffer, rasterizerDiscardEnable: VkBool32): void {.stdcall.}
  vkCmdSetDepthBiasEnable*: proc(commandBuffer: VkCommandBuffer, depthBiasEnable: VkBool32): void {.stdcall.}
  vkCmdSetLogicOpEXT*: proc(commandBuffer: VkCommandBuffer, logicOp: VkLogicOp): void {.stdcall.}
  vkCmdSetPrimitiveRestartEnable*: proc(commandBuffer: VkCommandBuffer, primitiveRestartEnable: VkBool32): void {.stdcall.}
  vkCmdSetTessellationDomainOriginEXT*: proc(commandBuffer: VkCommandBuffer, domainOrigin: VkTessellationDomainOrigin): void {.stdcall.}
  vkCmdSetDepthClampEnableEXT*: proc(commandBuffer: VkCommandBuffer, depthClampEnable: VkBool32): void {.stdcall.}
  vkCmdSetPolygonModeEXT*: proc(commandBuffer: VkCommandBuffer, polygonMode: VkPolygonMode): void {.stdcall.}
  vkCmdSetRasterizationSamplesEXT*: proc(commandBuffer: VkCommandBuffer, rasterizationSamples: VkSampleCountFlagBits): void {.stdcall.}
  vkCmdSetSampleMaskEXT*: proc(commandBuffer: VkCommandBuffer, samples: VkSampleCountFlagBits, pSampleMask: ptr VkSampleMask): void {.stdcall.}
  vkCmdSetAlphaToCoverageEnableEXT*: proc(commandBuffer: VkCommandBuffer, alphaToCoverageEnable: VkBool32): void {.stdcall.}
  vkCmdSetAlphaToOneEnableEXT*: proc(commandBuffer: VkCommandBuffer, alphaToOneEnable: VkBool32): void {.stdcall.}
  vkCmdSetLogicOpEnableEXT*: proc(commandBuffer: VkCommandBuffer, logicOpEnable: VkBool32): void {.stdcall.}
  vkCmdSetColorBlendEnableEXT*: proc(commandBuffer: VkCommandBuffer, firstAttachment: uint32, attachmentCount: uint32, pColorBlendEnables: ptr VkBool32): void {.stdcall.}
  vkCmdSetColorBlendEquationEXT*: proc(commandBuffer: VkCommandBuffer, firstAttachment: uint32, attachmentCount: uint32, pColorBlendEquations: ptr VkColorBlendEquationEXT): void {.stdcall.}
  vkCmdSetColorWriteMaskEXT*: proc(commandBuffer: VkCommandBuffer, firstAttachment: uint32, attachmentCount: uint32, pColorWriteMasks: ptr VkColorComponentFlags): void {.stdcall.}
  vkCmdSetRasterizationStreamEXT*: proc(commandBuffer: VkCommandBuffer, rasterizationStream: uint32): void {.stdcall.}
  vkCmdSetConservativeRasterizationModeEXT*: proc(commandBuffer: VkCommandBuffer, conservativeRasterizationMode: VkConservativeRasterizationModeEXT): void {.stdcall.}
  vkCmdSetExtraPrimitiveOverestimationSizeEXT*: proc(commandBuffer: VkCommandBuffer, extraPrimitiveOverestimationSize: float32): void {.stdcall.}
  vkCmdSetDepthClipEnableEXT*: proc(commandBuffer: VkCommandBuffer, depthClipEnable: VkBool32): void {.stdcall.}
  vkCmdSetSampleLocationsEnableEXT*: proc(commandBuffer: VkCommandBuffer, sampleLocationsEnable: VkBool32): void {.stdcall.}
  vkCmdSetColorBlendAdvancedEXT*: proc(commandBuffer: VkCommandBuffer, firstAttachment: uint32, attachmentCount: uint32, pColorBlendAdvanced: ptr VkColorBlendAdvancedEXT): void {.stdcall.}
  vkCmdSetProvokingVertexModeEXT*: proc(commandBuffer: VkCommandBuffer, provokingVertexMode: VkProvokingVertexModeEXT): void {.stdcall.}
  vkCmdSetLineRasterizationModeEXT*: proc(commandBuffer: VkCommandBuffer, lineRasterizationMode: VkLineRasterizationModeEXT): void {.stdcall.}
  vkCmdSetLineStippleEnableEXT*: proc(commandBuffer: VkCommandBuffer, stippledLineEnable: VkBool32): void {.stdcall.}
  vkCmdSetDepthClipNegativeOneToOneEXT*: proc(commandBuffer: VkCommandBuffer, negativeOneToOne: VkBool32): void {.stdcall.}
  vkCmdSetViewportWScalingEnableNV*: proc(commandBuffer: VkCommandBuffer, viewportWScalingEnable: VkBool32): void {.stdcall.}
  vkCmdSetViewportSwizzleNV*: proc(commandBuffer: VkCommandBuffer, firstViewport: uint32, viewportCount: uint32, pViewportSwizzles: ptr VkViewportSwizzleNV): void {.stdcall.}
  vkCmdSetCoverageToColorEnableNV*: proc(commandBuffer: VkCommandBuffer, coverageToColorEnable: VkBool32): void {.stdcall.}
  vkCmdSetCoverageToColorLocationNV*: proc(commandBuffer: VkCommandBuffer, coverageToColorLocation: uint32): void {.stdcall.}
  vkCmdSetCoverageModulationModeNV*: proc(commandBuffer: VkCommandBuffer, coverageModulationMode: VkCoverageModulationModeNV): void {.stdcall.}
  vkCmdSetCoverageModulationTableEnableNV*: proc(commandBuffer: VkCommandBuffer, coverageModulationTableEnable: VkBool32): void {.stdcall.}
  vkCmdSetCoverageModulationTableNV*: proc(commandBuffer: VkCommandBuffer, coverageModulationTableCount: uint32, pCoverageModulationTable: ptr float32): void {.stdcall.}
  vkCmdSetShadingRateImageEnableNV*: proc(commandBuffer: VkCommandBuffer, shadingRateImageEnable: VkBool32): void {.stdcall.}
  vkCmdSetCoverageReductionModeNV*: proc(commandBuffer: VkCommandBuffer, coverageReductionMode: VkCoverageReductionModeNV): void {.stdcall.}
  vkCmdSetRepresentativeFragmentTestEnableNV*: proc(commandBuffer: VkCommandBuffer, representativeFragmentTestEnable: VkBool32): void {.stdcall.}
  vkCreatePrivateDataSlot*: proc(device: VkDevice, pCreateInfo: ptr VkPrivateDataSlotCreateInfo, pAllocator: ptr VkAllocationCallbacks, pPrivateDataSlot: ptr VkPrivateDataSlot): VkResult {.stdcall.}
  vkDestroyPrivateDataSlot*: proc(device: VkDevice, privateDataSlot: VkPrivateDataSlot, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkSetPrivateData*: proc(device: VkDevice, objectType: VkObjectType, objectHandle: uint64, privateDataSlot: VkPrivateDataSlot, data: uint64): VkResult {.stdcall.}
  vkGetPrivateData*: proc(device: VkDevice, objectType: VkObjectType, objectHandle: uint64, privateDataSlot: VkPrivateDataSlot, pData: ptr uint64): void {.stdcall.}
  vkCmdCopyBuffer2*: proc(commandBuffer: VkCommandBuffer, pCopyBufferInfo: ptr VkCopyBufferInfo2): void {.stdcall.}
  vkCmdCopyImage2*: proc(commandBuffer: VkCommandBuffer, pCopyImageInfo: ptr VkCopyImageInfo2): void {.stdcall.}
  vkCmdBlitImage2*: proc(commandBuffer: VkCommandBuffer, pBlitImageInfo: ptr VkBlitImageInfo2): void {.stdcall.}
  vkCmdCopyBufferToImage2*: proc(commandBuffer: VkCommandBuffer, pCopyBufferToImageInfo: ptr VkCopyBufferToImageInfo2): void {.stdcall.}
  vkCmdCopyImageToBuffer2*: proc(commandBuffer: VkCommandBuffer, pCopyImageToBufferInfo: ptr VkCopyImageToBufferInfo2): void {.stdcall.}
  vkCmdResolveImage2*: proc(commandBuffer: VkCommandBuffer, pResolveImageInfo: ptr VkResolveImageInfo2): void {.stdcall.}
  vkCmdRefreshObjectsKHR*: proc(commandBuffer: VkCommandBuffer, pRefreshObjects: ptr VkRefreshObjectListKHR): void {.stdcall.}
  vkGetPhysicalDeviceRefreshableObjectTypesKHR*: proc(physicalDevice: VkPhysicalDevice, pRefreshableObjectTypeCount: ptr uint32, pRefreshableObjectTypes: ptr VkObjectType): VkResult {.stdcall.}
  vkCmdSetFragmentShadingRateKHR*: proc(commandBuffer: VkCommandBuffer, pFragmentSize: ptr VkExtent2D, combinerOps: array[2, VkFragmentShadingRateCombinerOpKHR]): void {.stdcall.}
  vkGetPhysicalDeviceFragmentShadingRatesKHR*: proc(physicalDevice: VkPhysicalDevice, pFragmentShadingRateCount: ptr uint32, pFragmentShadingRates: ptr VkPhysicalDeviceFragmentShadingRateKHR): VkResult {.stdcall.}
  vkCmdSetFragmentShadingRateEnumNV*: proc(commandBuffer: VkCommandBuffer, shadingRate: VkFragmentShadingRateNV, combinerOps: array[2, VkFragmentShadingRateCombinerOpKHR]): void {.stdcall.}
  vkGetAccelerationStructureBuildSizesKHR*: proc(device: VkDevice, buildType: VkAccelerationStructureBuildTypeKHR, pBuildInfo: ptr VkAccelerationStructureBuildGeometryInfoKHR, pMaxPrimitiveCounts: ptr uint32, pSizeInfo: ptr VkAccelerationStructureBuildSizesInfoKHR): void {.stdcall.}
  vkCmdSetVertexInputEXT*: proc(commandBuffer: VkCommandBuffer, vertexBindingDescriptionCount: uint32, pVertexBindingDescriptions: ptr VkVertexInputBindingDescription2EXT, vertexAttributeDescriptionCount: uint32, pVertexAttributeDescriptions: ptr VkVertexInputAttributeDescription2EXT): void {.stdcall.}
  vkCmdSetColorWriteEnableEXT*: proc(commandBuffer: VkCommandBuffer, attachmentCount: uint32, pColorWriteEnables: ptr VkBool32): void {.stdcall.}
  vkCmdSetEvent2*: proc(commandBuffer: VkCommandBuffer, event: VkEvent, pDependencyInfo: ptr VkDependencyInfo): void {.stdcall.}
  vkCmdResetEvent2*: proc(commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags2): void {.stdcall.}
  vkCmdWaitEvents2*: proc(commandBuffer: VkCommandBuffer, eventCount: uint32, pEvents: ptr VkEvent, pDependencyInfos: ptr VkDependencyInfo): void {.stdcall.}
  vkCmdPipelineBarrier2*: proc(commandBuffer: VkCommandBuffer, pDependencyInfo: ptr VkDependencyInfo): void {.stdcall.}
  vkQueueSubmit2*: proc(queue: VkQueue, submitCount: uint32, pSubmits: ptr VkSubmitInfo2, fence: VkFence): VkResult {.stdcall.}
  vkCmdWriteTimestamp2*: proc(commandBuffer: VkCommandBuffer, stage: VkPipelineStageFlags2, queryPool: VkQueryPool, query: uint32): void {.stdcall.}
  vkCmdWriteBufferMarker2AMD*: proc(commandBuffer: VkCommandBuffer, stage: VkPipelineStageFlags2, dstBuffer: VkBuffer, dstOffset: VkDeviceSize, marker: uint32): void {.stdcall.}
  vkGetQueueCheckpointData2NV*: proc(queue: VkQueue, pCheckpointDataCount: ptr uint32, pCheckpointData: ptr VkCheckpointData2NV): void {.stdcall.}
  vkCopyMemoryToImage*: proc(device: VkDevice, pCopyMemoryToImageInfo: ptr VkCopyMemoryToImageInfo): VkResult {.stdcall.}
  vkCopyImageToMemory*: proc(device: VkDevice, pCopyImageToMemoryInfo: ptr VkCopyImageToMemoryInfo): VkResult {.stdcall.}
  vkCopyImageToImage*: proc(device: VkDevice, pCopyImageToImageInfo: ptr VkCopyImageToImageInfo): VkResult {.stdcall.}
  vkTransitionImageLayout*: proc(device: VkDevice, transitionCount: uint32, pTransitions: ptr VkHostImageLayoutTransitionInfo): VkResult {.stdcall.}
  vkGetCommandPoolMemoryConsumption*: proc(device: VkDevice, commandPool: VkCommandPool, commandBuffer: VkCommandBuffer, pConsumption: ptr VkCommandPoolMemoryConsumption): void {.stdcall.}
  vkGetPhysicalDeviceVideoCapabilitiesKHR*: proc(physicalDevice: VkPhysicalDevice, pVideoProfile: ptr VkVideoProfileInfoKHR, pCapabilities: ptr VkVideoCapabilitiesKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceVideoFormatPropertiesKHR*: proc(physicalDevice: VkPhysicalDevice, pVideoFormatInfo: ptr VkPhysicalDeviceVideoFormatInfoKHR, pVideoFormatPropertyCount: ptr uint32, pVideoFormatProperties: ptr VkVideoFormatPropertiesKHR): VkResult {.stdcall.}
  vkGetPhysicalDeviceVideoEncodeQualityLevelPropertiesKHR*: proc(physicalDevice: VkPhysicalDevice, pQualityLevelInfo: ptr VkPhysicalDeviceVideoEncodeQualityLevelInfoKHR, pQualityLevelProperties: ptr VkVideoEncodeQualityLevelPropertiesKHR): VkResult {.stdcall.}
  vkCreateVideoSessionKHR*: proc(device: VkDevice, pCreateInfo: ptr VkVideoSessionCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pVideoSession: ptr VkVideoSessionKHR): VkResult {.stdcall.}
  vkDestroyVideoSessionKHR*: proc(device: VkDevice, videoSession: VkVideoSessionKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCreateVideoSessionParametersKHR*: proc(device: VkDevice, pCreateInfo: ptr VkVideoSessionParametersCreateInfoKHR, pAllocator: ptr VkAllocationCallbacks, pVideoSessionParameters: ptr VkVideoSessionParametersKHR): VkResult {.stdcall.}
  vkUpdateVideoSessionParametersKHR*: proc(device: VkDevice, videoSessionParameters: VkVideoSessionParametersKHR, pUpdateInfo: ptr VkVideoSessionParametersUpdateInfoKHR): VkResult {.stdcall.}
  vkGetEncodedVideoSessionParametersKHR*: proc(device: VkDevice, pVideoSessionParametersInfo: ptr VkVideoEncodeSessionParametersGetInfoKHR, pFeedbackInfo: ptr VkVideoEncodeSessionParametersFeedbackInfoKHR, pDataSize: ptr csize_t, pData: pointer): VkResult {.stdcall.}
  vkDestroyVideoSessionParametersKHR*: proc(device: VkDevice, videoSessionParameters: VkVideoSessionParametersKHR, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetVideoSessionMemoryRequirementsKHR*: proc(device: VkDevice, videoSession: VkVideoSessionKHR, pMemoryRequirementsCount: ptr uint32, pMemoryRequirements: ptr VkVideoSessionMemoryRequirementsKHR): VkResult {.stdcall.}
  vkBindVideoSessionMemoryKHR*: proc(device: VkDevice, videoSession: VkVideoSessionKHR, bindSessionMemoryInfoCount: uint32, pBindSessionMemoryInfos: ptr VkBindVideoSessionMemoryInfoKHR): VkResult {.stdcall.}
  vkCmdDecodeVideoKHR*: proc(commandBuffer: VkCommandBuffer, pDecodeInfo: ptr VkVideoDecodeInfoKHR): void {.stdcall.}
  vkCmdBeginVideoCodingKHR*: proc(commandBuffer: VkCommandBuffer, pBeginInfo: ptr VkVideoBeginCodingInfoKHR): void {.stdcall.}
  vkCmdControlVideoCodingKHR*: proc(commandBuffer: VkCommandBuffer, pCodingControlInfo: ptr VkVideoCodingControlInfoKHR): void {.stdcall.}
  vkCmdEndVideoCodingKHR*: proc(commandBuffer: VkCommandBuffer, pEndCodingInfo: ptr VkVideoEndCodingInfoKHR): void {.stdcall.}
  vkCmdEncodeVideoKHR*: proc(commandBuffer: VkCommandBuffer, pEncodeInfo: ptr VkVideoEncodeInfoKHR): void {.stdcall.}
  vkCmdDecompressMemoryNV*: proc(commandBuffer: VkCommandBuffer, decompressRegionCount: uint32, pDecompressMemoryRegions: ptr VkDecompressMemoryRegionNV): void {.stdcall.}
  vkCmdDecompressMemoryIndirectCountNV*: proc(commandBuffer: VkCommandBuffer, indirectCommandsAddress: VkDeviceAddress, indirectCommandsCountAddress: VkDeviceAddress, stride: uint32): void {.stdcall.}
  vkGetPartitionedAccelerationStructuresBuildSizesNV*: proc(device: VkDevice, pInfo: ptr VkPartitionedAccelerationStructureInstancesInputNV, pSizeInfo: ptr VkAccelerationStructureBuildSizesInfoKHR): void {.stdcall.}
  vkCmdBuildPartitionedAccelerationStructuresNV*: proc(commandBuffer: VkCommandBuffer, pBuildInfo: ptr VkBuildPartitionedAccelerationStructureInfoNV): void {.stdcall.}
  vkCmdDecompressMemoryEXT*: proc(commandBuffer: VkCommandBuffer, pDecompressMemoryInfoEXT: ptr VkDecompressMemoryInfoEXT): void {.stdcall.}
  vkCmdDecompressMemoryIndirectCountEXT*: proc(commandBuffer: VkCommandBuffer, decompressionMethod: VkMemoryDecompressionMethodFlagsEXT, indirectCommandsAddress: VkDeviceAddress, indirectCommandsCountAddress: VkDeviceAddress, maxDecompressionCount: uint32, stride: uint32): void {.stdcall.}
  vkCreateCuModuleNVX*: proc(device: VkDevice, pCreateInfo: ptr VkCuModuleCreateInfoNVX, pAllocator: ptr VkAllocationCallbacks, pModule: ptr VkCuModuleNVX): VkResult {.stdcall.}
  vkCreateCuFunctionNVX*: proc(device: VkDevice, pCreateInfo: ptr VkCuFunctionCreateInfoNVX, pAllocator: ptr VkAllocationCallbacks, pFunction: ptr VkCuFunctionNVX): VkResult {.stdcall.}
  vkDestroyCuModuleNVX*: proc(device: VkDevice, module: VkCuModuleNVX, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkDestroyCuFunctionNVX*: proc(device: VkDevice, function: VkCuFunctionNVX, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCmdCuLaunchKernelNVX*: proc(commandBuffer: VkCommandBuffer, pLaunchInfo: ptr VkCuLaunchInfoNVX): void {.stdcall.}
  vkGetDescriptorSetLayoutSizeEXT*: proc(device: VkDevice, layout: VkDescriptorSetLayout, pLayoutSizeInBytes: ptr VkDeviceSize): void {.stdcall.}
  vkGetDescriptorSetLayoutBindingOffsetEXT*: proc(device: VkDevice, layout: VkDescriptorSetLayout, binding: uint32, pOffset: ptr VkDeviceSize): void {.stdcall.}
  vkGetDescriptorEXT*: proc(device: VkDevice, pDescriptorInfo: ptr VkDescriptorGetInfoEXT, dataSize: csize_t, pDescriptor: pointer): void {.stdcall.}
  vkCmdBindDescriptorBuffersEXT*: proc(commandBuffer: VkCommandBuffer, bufferCount: uint32, pBindingInfos: ptr VkDescriptorBufferBindingInfoEXT): void {.stdcall.}
  vkCmdSetDescriptorBufferOffsetsEXT*: proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, firstSet: uint32, setCount: uint32, pBufferIndices: ptr uint32, pOffsets: ptr VkDeviceSize): void {.stdcall.}
  vkCmdBindDescriptorBufferEmbeddedSamplersEXT*: proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, set: uint32): void {.stdcall.}
  vkGetBufferOpaqueCaptureDescriptorDataEXT*: proc(device: VkDevice, pInfo: ptr VkBufferCaptureDescriptorDataInfoEXT, pData: pointer): VkResult {.stdcall.}
  vkGetImageOpaqueCaptureDescriptorDataEXT*: proc(device: VkDevice, pInfo: ptr VkImageCaptureDescriptorDataInfoEXT, pData: pointer): VkResult {.stdcall.}
  vkGetImageViewOpaqueCaptureDescriptorDataEXT*: proc(device: VkDevice, pInfo: ptr VkImageViewCaptureDescriptorDataInfoEXT, pData: pointer): VkResult {.stdcall.}
  vkGetSamplerOpaqueCaptureDescriptorDataEXT*: proc(device: VkDevice, pInfo: ptr VkSamplerCaptureDescriptorDataInfoEXT, pData: pointer): VkResult {.stdcall.}
  vkGetAccelerationStructureOpaqueCaptureDescriptorDataEXT*: proc(device: VkDevice, pInfo: ptr VkAccelerationStructureCaptureDescriptorDataInfoEXT, pData: pointer): VkResult {.stdcall.}
  vkSetDeviceMemoryPriorityEXT*: proc(device: VkDevice, memory: VkDeviceMemory, priority: float32): void {.stdcall.}
  vkAcquireDrmDisplayEXT*: proc(physicalDevice: VkPhysicalDevice, drmFd: int32, display: VkDisplayKHR): VkResult {.stdcall.}
  vkGetDrmDisplayEXT*: proc(physicalDevice: VkPhysicalDevice, drmFd: int32, connectorId: uint32, display: ptr VkDisplayKHR): VkResult {.stdcall.}
  vkWaitForPresent2KHR*: proc(device: VkDevice, swapchain: VkSwapchainKHR, pPresentWait2Info: ptr VkPresentWait2InfoKHR): VkResult {.stdcall.}
  vkWaitForPresentKHR*: proc(device: VkDevice, swapchain: VkSwapchainKHR, presentId: uint64, timeout: uint64): VkResult {.stdcall.}
  vkCreateBufferCollectionFUCHSIA*: proc(device: VkDevice, pCreateInfo: ptr VkBufferCollectionCreateInfoFUCHSIA, pAllocator: ptr VkAllocationCallbacks, pCollection: ptr VkBufferCollectionFUCHSIA): VkResult {.stdcall.}
  vkSetBufferCollectionBufferConstraintsFUCHSIA*: proc(device: VkDevice, collection: VkBufferCollectionFUCHSIA, pBufferConstraintsInfo: ptr VkBufferConstraintsInfoFUCHSIA): VkResult {.stdcall.}
  vkSetBufferCollectionImageConstraintsFUCHSIA*: proc(device: VkDevice, collection: VkBufferCollectionFUCHSIA, pImageConstraintsInfo: ptr VkImageConstraintsInfoFUCHSIA): VkResult {.stdcall.}
  vkDestroyBufferCollectionFUCHSIA*: proc(device: VkDevice, collection: VkBufferCollectionFUCHSIA, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetBufferCollectionPropertiesFUCHSIA*: proc(device: VkDevice, collection: VkBufferCollectionFUCHSIA, pProperties: ptr VkBufferCollectionPropertiesFUCHSIA): VkResult {.stdcall.}
  vkCreateCudaModuleNV*: proc(device: VkDevice, pCreateInfo: ptr VkCudaModuleCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pModule: ptr VkCudaModuleNV): VkResult {.stdcall.}
  vkGetCudaModuleCacheNV*: proc(device: VkDevice, module: VkCudaModuleNV, pCacheSize: ptr csize_t, pCacheData: pointer): VkResult {.stdcall.}
  vkCreateCudaFunctionNV*: proc(device: VkDevice, pCreateInfo: ptr VkCudaFunctionCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pFunction: ptr VkCudaFunctionNV): VkResult {.stdcall.}
  vkDestroyCudaModuleNV*: proc(device: VkDevice, module: VkCudaModuleNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkDestroyCudaFunctionNV*: proc(device: VkDevice, function: VkCudaFunctionNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCmdCudaLaunchKernelNV*: proc(commandBuffer: VkCommandBuffer, pLaunchInfo: ptr VkCudaLaunchInfoNV): void {.stdcall.}
  vkCmdBeginRendering*: proc(commandBuffer: VkCommandBuffer, pRenderingInfo: ptr VkRenderingInfo): void {.stdcall.}
  vkCmdEndRendering*: proc(commandBuffer: VkCommandBuffer): void {.stdcall.}
  vkCmdEndRendering2KHR*: proc(commandBuffer: VkCommandBuffer, pRenderingEndInfo: ptr VkRenderingEndInfoKHR): void {.stdcall.}
  vkGetDescriptorSetLayoutHostMappingInfoVALVE*: proc(device: VkDevice, pBindingReference: ptr VkDescriptorSetBindingReferenceVALVE, pHostMapping: ptr VkDescriptorSetLayoutHostMappingInfoVALVE): void {.stdcall.}
  vkGetDescriptorSetHostMappingVALVE*: proc(device: VkDevice, descriptorSet: VkDescriptorSet, ppData: ptr pointer): void {.stdcall.}
  vkCreateMicromapEXT*: proc(device: VkDevice, pCreateInfo: ptr VkMicromapCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pMicromap: ptr VkMicromapEXT): VkResult {.stdcall.}
  vkCmdBuildMicromapsEXT*: proc(commandBuffer: VkCommandBuffer, infoCount: uint32, pInfos: ptr VkMicromapBuildInfoEXT): void {.stdcall.}
  vkBuildMicromapsEXT*: proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, infoCount: uint32, pInfos: ptr VkMicromapBuildInfoEXT): VkResult {.stdcall.}
  vkDestroyMicromapEXT*: proc(device: VkDevice, micromap: VkMicromapEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCmdCopyMicromapEXT*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkCopyMicromapInfoEXT): void {.stdcall.}
  vkCopyMicromapEXT*: proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: ptr VkCopyMicromapInfoEXT): VkResult {.stdcall.}
  vkCmdCopyMicromapToMemoryEXT*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkCopyMicromapToMemoryInfoEXT): void {.stdcall.}
  vkCopyMicromapToMemoryEXT*: proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: ptr VkCopyMicromapToMemoryInfoEXT): VkResult {.stdcall.}
  vkCmdCopyMemoryToMicromapEXT*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkCopyMemoryToMicromapInfoEXT): void {.stdcall.}
  vkCopyMemoryToMicromapEXT*: proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pInfo: ptr VkCopyMemoryToMicromapInfoEXT): VkResult {.stdcall.}
  vkCmdWriteMicromapsPropertiesEXT*: proc(commandBuffer: VkCommandBuffer, micromapCount: uint32, pMicromaps: ptr VkMicromapEXT, queryType: VkQueryType, queryPool: VkQueryPool, firstQuery: uint32): void {.stdcall.}
  vkWriteMicromapsPropertiesEXT*: proc(device: VkDevice, micromapCount: uint32, pMicromaps: ptr VkMicromapEXT, queryType: VkQueryType, dataSize: csize_t, pData: pointer, stride: csize_t): VkResult {.stdcall.}
  vkGetDeviceMicromapCompatibilityEXT*: proc(device: VkDevice, pVersionInfo: ptr VkMicromapVersionInfoEXT, pCompatibility: ptr VkAccelerationStructureCompatibilityKHR): void {.stdcall.}
  vkGetMicromapBuildSizesEXT*: proc(device: VkDevice, buildType: VkAccelerationStructureBuildTypeKHR, pBuildInfo: ptr VkMicromapBuildInfoEXT, pSizeInfo: ptr VkMicromapBuildSizesInfoEXT): void {.stdcall.}
  vkGetShaderModuleIdentifierEXT*: proc(device: VkDevice, shaderModule: VkShaderModule, pIdentifier: ptr VkShaderModuleIdentifierEXT): void {.stdcall.}
  vkGetShaderModuleCreateInfoIdentifierEXT*: proc(device: VkDevice, pCreateInfo: ptr VkShaderModuleCreateInfo, pIdentifier: ptr VkShaderModuleIdentifierEXT): void {.stdcall.}
  vkGetImageSubresourceLayout2*: proc(device: VkDevice, image: VkImage, pSubresource: ptr VkImageSubresource2, pLayout: ptr VkSubresourceLayout2): void {.stdcall.}
  vkGetPipelinePropertiesEXT*: proc(device: VkDevice, pPipelineInfo: ptr VkPipelineInfoKHR, pPipelineProperties: ptr VkBaseOutStructure): VkResult {.stdcall.}
  vkExportMetalObjectsEXT*: proc(device: VkDevice, pMetalObjectsInfo: ptr VkExportMetalObjectsInfoEXT): void {.stdcall.}
  vkCmdBindTileMemoryQCOM*: proc(commandBuffer: VkCommandBuffer, pTileMemoryBindInfo: ptr VkTileMemoryBindInfoQCOM): void {.stdcall.}
  vkGetFramebufferTilePropertiesQCOM*: proc(device: VkDevice, framebuffer: VkFramebuffer, pPropertiesCount: ptr uint32, pProperties: ptr VkTilePropertiesQCOM): VkResult {.stdcall.}
  vkGetDynamicRenderingTilePropertiesQCOM*: proc(device: VkDevice, pRenderingInfo: ptr VkRenderingInfo, pProperties: ptr VkTilePropertiesQCOM): VkResult {.stdcall.}
  vkGetPhysicalDeviceOpticalFlowImageFormatsNV*: proc(physicalDevice: VkPhysicalDevice, pOpticalFlowImageFormatInfo: ptr VkOpticalFlowImageFormatInfoNV, pFormatCount: ptr uint32, pImageFormatProperties: ptr VkOpticalFlowImageFormatPropertiesNV): VkResult {.stdcall.}
  vkCreateOpticalFlowSessionNV*: proc(device: VkDevice, pCreateInfo: ptr VkOpticalFlowSessionCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pSession: ptr VkOpticalFlowSessionNV): VkResult {.stdcall.}
  vkDestroyOpticalFlowSessionNV*: proc(device: VkDevice, session: VkOpticalFlowSessionNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkBindOpticalFlowSessionImageNV*: proc(device: VkDevice, session: VkOpticalFlowSessionNV, bindingPoint: VkOpticalFlowSessionBindingPointNV, view: VkImageView, layout: VkImageLayout): VkResult {.stdcall.}
  vkCmdOpticalFlowExecuteNV*: proc(commandBuffer: VkCommandBuffer, session: VkOpticalFlowSessionNV, pExecuteInfo: ptr VkOpticalFlowExecuteInfoNV): void {.stdcall.}
  vkGetDeviceFaultInfoEXT*: proc(device: VkDevice, pFaultCounts: ptr VkDeviceFaultCountsEXT, pFaultInfo: ptr VkDeviceFaultInfoEXT): VkResult {.stdcall.}
  vkCmdSetDepthBias2EXT*: proc(commandBuffer: VkCommandBuffer, pDepthBiasInfo: ptr VkDepthBiasInfoEXT): void {.stdcall.}
  vkReleaseSwapchainImagesKHR*: proc(device: VkDevice, pReleaseInfo: ptr VkReleaseSwapchainImagesInfoKHR): VkResult {.stdcall.}
  vkGetDeviceImageSubresourceLayout*: proc(device: VkDevice, pInfo: ptr VkDeviceImageSubresourceInfo, pLayout: ptr VkSubresourceLayout2): void {.stdcall.}
  vkMapMemory2*: proc(device: VkDevice, pMemoryMapInfo: ptr VkMemoryMapInfo, ppData: ptr pointer): VkResult {.stdcall.}
  vkUnmapMemory2*: proc(device: VkDevice, pMemoryUnmapInfo: ptr VkMemoryUnmapInfo): VkResult {.stdcall.}
  vkCreateShadersEXT*: proc(device: VkDevice, createInfoCount: uint32, pCreateInfos: ptr VkShaderCreateInfoEXT, pAllocator: ptr VkAllocationCallbacks, pShaders: ptr VkShaderEXT): VkResult {.stdcall.}
  vkDestroyShaderEXT*: proc(device: VkDevice, shader: VkShaderEXT, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetShaderBinaryDataEXT*: proc(device: VkDevice, shader: VkShaderEXT, pDataSize: ptr csize_t, pData: pointer): VkResult {.stdcall.}
  vkCmdBindShadersEXT*: proc(commandBuffer: VkCommandBuffer, stageCount: uint32, pStages: ptr VkShaderStageFlagBits, pShaders: ptr VkShaderEXT): void {.stdcall.}
  vkSetSwapchainPresentTimingQueueSizeEXT*: proc(device: VkDevice, swapchain: VkSwapchainKHR, size: uint32): VkResult {.stdcall.}
  vkGetSwapchainTimingPropertiesEXT*: proc(device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainTimingProperties: ptr VkSwapchainTimingPropertiesEXT, pSwapchainTimingPropertiesCounter: ptr uint64): VkResult {.stdcall.}
  vkGetSwapchainTimeDomainPropertiesEXT*: proc(device: VkDevice, swapchain: VkSwapchainKHR, pSwapchainTimeDomainProperties: ptr VkSwapchainTimeDomainPropertiesEXT, pTimeDomainsCounter: ptr uint64): VkResult {.stdcall.}
  vkGetPastPresentationTimingEXT*: proc(device: VkDevice, pPastPresentationTimingInfo: ptr VkPastPresentationTimingInfoEXT, pPastPresentationTimingProperties: ptr VkPastPresentationTimingPropertiesEXT): VkResult {.stdcall.}
  vkGetScreenBufferPropertiesQNX*: proc(device: VkDevice, buffer: pointer, pProperties: ptr VkScreenBufferPropertiesQNX): VkResult {.stdcall.}
  vkGetPhysicalDeviceCooperativeMatrixPropertiesKHR*: proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkCooperativeMatrixPropertiesKHR): VkResult {.stdcall.}
  vkGetExecutionGraphPipelineScratchSizeAMDX*: proc(device: VkDevice, executionGraph: VkPipeline, pSizeInfo: ptr VkExecutionGraphPipelineScratchSizeAMDX): VkResult {.stdcall.}
  vkGetExecutionGraphPipelineNodeIndexAMDX*: proc(device: VkDevice, executionGraph: VkPipeline, pNodeInfo: ptr VkPipelineShaderStageNodeCreateInfoAMDX, pNodeIndex: ptr uint32): VkResult {.stdcall.}
  vkCreateExecutionGraphPipelinesAMDX*: proc(device: VkDevice, pipelineCache: VkPipelineCache, createInfoCount: uint32, pCreateInfos: ptr VkExecutionGraphPipelineCreateInfoAMDX, pAllocator: ptr VkAllocationCallbacks, pPipelines: ptr VkPipeline): VkResult {.stdcall.}
  vkCmdInitializeGraphScratchMemoryAMDX*: proc(commandBuffer: VkCommandBuffer, executionGraph: VkPipeline, scratch: VkDeviceAddress, scratchSize: VkDeviceSize): void {.stdcall.}
  vkCmdDispatchGraphAMDX*: proc(commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, pCountInfo: ptr VkDispatchGraphCountInfoAMDX): void {.stdcall.}
  vkCmdDispatchGraphIndirectAMDX*: proc(commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, pCountInfo: ptr VkDispatchGraphCountInfoAMDX): void {.stdcall.}
  vkCmdDispatchGraphIndirectCountAMDX*: proc(commandBuffer: VkCommandBuffer, scratch: VkDeviceAddress, scratchSize: VkDeviceSize, countInfo: VkDeviceAddress): void {.stdcall.}
  vkCmdBindDescriptorSets2*: proc(commandBuffer: VkCommandBuffer, pBindDescriptorSetsInfo: ptr VkBindDescriptorSetsInfo): void {.stdcall.}
  vkCmdPushConstants2*: proc(commandBuffer: VkCommandBuffer, pPushConstantsInfo: ptr VkPushConstantsInfo): void {.stdcall.}
  vkCmdPushDescriptorSet2*: proc(commandBuffer: VkCommandBuffer, pPushDescriptorSetInfo: ptr VkPushDescriptorSetInfo): void {.stdcall.}
  vkCmdPushDescriptorSetWithTemplate2*: proc(commandBuffer: VkCommandBuffer, pPushDescriptorSetWithTemplateInfo: ptr VkPushDescriptorSetWithTemplateInfo): void {.stdcall.}
  vkCmdSetDescriptorBufferOffsets2EXT*: proc(commandBuffer: VkCommandBuffer, pSetDescriptorBufferOffsetsInfo: ptr VkSetDescriptorBufferOffsetsInfoEXT): void {.stdcall.}
  vkCmdBindDescriptorBufferEmbeddedSamplers2EXT*: proc(commandBuffer: VkCommandBuffer, pBindDescriptorBufferEmbeddedSamplersInfo: ptr VkBindDescriptorBufferEmbeddedSamplersInfoEXT): void {.stdcall.}
  vkSetLatencySleepModeNV*: proc(device: VkDevice, swapchain: VkSwapchainKHR, pSleepModeInfo: ptr VkLatencySleepModeInfoNV): VkResult {.stdcall.}
  vkLatencySleepNV*: proc(device: VkDevice, swapchain: VkSwapchainKHR, pSleepInfo: ptr VkLatencySleepInfoNV): VkResult {.stdcall.}
  vkSetLatencyMarkerNV*: proc(device: VkDevice, swapchain: VkSwapchainKHR, pLatencyMarkerInfo: ptr VkSetLatencyMarkerInfoNV): void {.stdcall.}
  vkGetLatencyTimingsNV*: proc(device: VkDevice, swapchain: VkSwapchainKHR, pLatencyMarkerInfo: ptr VkGetLatencyMarkerInfoNV): void {.stdcall.}
  vkQueueNotifyOutOfBandNV*: proc(queue: VkQueue, pQueueTypeInfo: ptr VkOutOfBandQueueTypeInfoNV): void {.stdcall.}
  vkCmdSetRenderingAttachmentLocations*: proc(commandBuffer: VkCommandBuffer, pLocationInfo: ptr VkRenderingAttachmentLocationInfo): void {.stdcall.}
  vkCmdSetRenderingInputAttachmentIndices*: proc(commandBuffer: VkCommandBuffer, pInputAttachmentIndexInfo: ptr VkRenderingInputAttachmentIndexInfo): void {.stdcall.}
  vkCmdSetDepthClampRangeEXT*: proc(commandBuffer: VkCommandBuffer, depthClampMode: VkDepthClampModeEXT, pDepthClampRange: ptr VkDepthClampRangeEXT): void {.stdcall.}
  vkGetPhysicalDeviceCooperativeMatrixFlexibleDimensionsPropertiesNV*: proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkCooperativeMatrixFlexibleDimensionsPropertiesNV): VkResult {.stdcall.}
  vkGetMemoryMetalHandleEXT*: proc(device: VkDevice, pGetMetalHandleInfo: ptr VkMemoryGetMetalHandleInfoEXT, pHandle: ptr pointer): VkResult {.stdcall.}
  vkGetMemoryMetalHandlePropertiesEXT*: proc(device: VkDevice, handleType: VkExternalMemoryHandleTypeFlagBits, pHandle: pointer, pMemoryMetalHandleProperties: ptr VkMemoryMetalHandlePropertiesEXT): VkResult {.stdcall.}
  vkGetPhysicalDeviceCooperativeVectorPropertiesNV*: proc(physicalDevice: VkPhysicalDevice, pPropertyCount: ptr uint32, pProperties: ptr VkCooperativeVectorPropertiesNV): VkResult {.stdcall.}
  vkConvertCooperativeVectorMatrixNV*: proc(device: VkDevice, pInfo: ptr VkConvertCooperativeVectorMatrixInfoNV): VkResult {.stdcall.}
  vkCmdConvertCooperativeVectorMatrixNV*: proc(commandBuffer: VkCommandBuffer, infoCount: uint32, pInfos: ptr VkConvertCooperativeVectorMatrixInfoNV): void {.stdcall.}
  vkCmdDispatchTileQCOM*: proc(commandBuffer: VkCommandBuffer, pDispatchTileInfo: ptr VkDispatchTileInfoQCOM): void {.stdcall.}
  vkCmdBeginPerTileExecutionQCOM*: proc(commandBuffer: VkCommandBuffer, pPerTileBeginInfo: ptr VkPerTileBeginInfoQCOM): void {.stdcall.}
  vkCmdEndPerTileExecutionQCOM*: proc(commandBuffer: VkCommandBuffer, pPerTileEndInfo: ptr VkPerTileEndInfoQCOM): void {.stdcall.}
  vkCreateExternalComputeQueueNV*: proc(device: VkDevice, pCreateInfo: ptr VkExternalComputeQueueCreateInfoNV, pAllocator: ptr VkAllocationCallbacks, pExternalQueue: ptr VkExternalComputeQueueNV): VkResult {.stdcall.}
  vkDestroyExternalComputeQueueNV*: proc(device: VkDevice, externalQueue: VkExternalComputeQueueNV, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetExternalComputeQueueDataNV*: proc(externalQueue: VkExternalComputeQueueNV, params: ptr VkExternalComputeQueueDataParamsNV, pData: pointer): void {.stdcall.}
  vkEnumeratePhysicalDeviceShaderInstrumentationMetricsARM*: proc(physicalDevice: VkPhysicalDevice, pDescriptionCount: ptr uint32, pDescriptions: ptr VkShaderInstrumentationMetricDescriptionARM): VkResult {.stdcall.}
  vkCreateShaderInstrumentationARM*: proc(device: VkDevice, pCreateInfo: ptr VkShaderInstrumentationCreateInfoARM, pAllocator: ptr VkAllocationCallbacks, pInstrumentation: ptr VkShaderInstrumentationARM): VkResult {.stdcall.}
  vkDestroyShaderInstrumentationARM*: proc(device: VkDevice, instrumentation: VkShaderInstrumentationARM, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCmdBeginShaderInstrumentationARM*: proc(commandBuffer: VkCommandBuffer, instrumentation: VkShaderInstrumentationARM): void {.stdcall.}
  vkCmdEndShaderInstrumentationARM*: proc(commandBuffer: VkCommandBuffer): void {.stdcall.}
  vkGetShaderInstrumentationValuesARM*: proc(device: VkDevice, instrumentation: VkShaderInstrumentationARM, pMetricBlockCount: ptr uint32, pMetricValues: pointer, flags: VkShaderInstrumentationValuesFlagsARM): VkResult {.stdcall.}
  vkClearShaderInstrumentationMetricsARM*: proc(device: VkDevice, instrumentation: VkShaderInstrumentationARM): void {.stdcall.}
  vkCreateTensorARM*: proc(device: VkDevice, pCreateInfo: ptr VkTensorCreateInfoARM, pAllocator: ptr VkAllocationCallbacks, pTensor: ptr VkTensorARM): VkResult {.stdcall.}
  vkDestroyTensorARM*: proc(device: VkDevice, tensor: VkTensorARM, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCreateTensorViewARM*: proc(device: VkDevice, pCreateInfo: ptr VkTensorViewCreateInfoARM, pAllocator: ptr VkAllocationCallbacks, pView: ptr VkTensorViewARM): VkResult {.stdcall.}
  vkDestroyTensorViewARM*: proc(device: VkDevice, tensorView: VkTensorViewARM, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetTensorMemoryRequirementsARM*: proc(device: VkDevice, pInfo: ptr VkTensorMemoryRequirementsInfoARM, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkBindTensorMemoryARM*: proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindTensorMemoryInfoARM): VkResult {.stdcall.}
  vkGetDeviceTensorMemoryRequirementsARM*: proc(device: VkDevice, pInfo: ptr VkDeviceTensorMemoryRequirementsARM, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkCmdCopyTensorARM*: proc(commandBuffer: VkCommandBuffer, pCopyTensorInfo: ptr VkCopyTensorInfoARM): void {.stdcall.}
  vkGetTensorOpaqueCaptureDescriptorDataARM*: proc(device: VkDevice, pInfo: ptr VkTensorCaptureDescriptorDataInfoARM, pData: pointer): VkResult {.stdcall.}
  vkGetTensorViewOpaqueCaptureDescriptorDataARM*: proc(device: VkDevice, pInfo: ptr VkTensorViewCaptureDescriptorDataInfoARM, pData: pointer): VkResult {.stdcall.}
  vkGetPhysicalDeviceExternalTensorPropertiesARM*: proc(physicalDevice: VkPhysicalDevice, pExternalTensorInfo: ptr VkPhysicalDeviceExternalTensorInfoARM, pExternalTensorProperties: ptr VkExternalTensorPropertiesARM): void {.stdcall.}
  vkCreateDataGraphPipelinesARM*: proc(device: VkDevice, deferredOperation: VkDeferredOperationKHR, pipelineCache: VkPipelineCache, createInfoCount: uint32, pCreateInfos: ptr VkDataGraphPipelineCreateInfoARM, pAllocator: ptr VkAllocationCallbacks, pPipelines: ptr VkPipeline): VkResult {.stdcall.}
  vkCreateDataGraphPipelineSessionARM*: proc(device: VkDevice, pCreateInfo: ptr VkDataGraphPipelineSessionCreateInfoARM, pAllocator: ptr VkAllocationCallbacks, pSession: ptr VkDataGraphPipelineSessionARM): VkResult {.stdcall.}
  vkGetDataGraphPipelineSessionBindPointRequirementsARM*: proc(device: VkDevice, pInfo: ptr VkDataGraphPipelineSessionBindPointRequirementsInfoARM, pBindPointRequirementCount: ptr uint32, pBindPointRequirements: ptr VkDataGraphPipelineSessionBindPointRequirementARM): VkResult {.stdcall.}
  vkGetDataGraphPipelineSessionMemoryRequirementsARM*: proc(device: VkDevice, pInfo: ptr VkDataGraphPipelineSessionMemoryRequirementsInfoARM, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkBindDataGraphPipelineSessionMemoryARM*: proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindDataGraphPipelineSessionMemoryInfoARM): VkResult {.stdcall.}
  vkDestroyDataGraphPipelineSessionARM*: proc(device: VkDevice, session: VkDataGraphPipelineSessionARM, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkCmdDispatchDataGraphARM*: proc(commandBuffer: VkCommandBuffer, session: VkDataGraphPipelineSessionARM, pInfo: ptr VkDataGraphPipelineDispatchInfoARM): void {.stdcall.}
  vkGetDataGraphPipelineAvailablePropertiesARM*: proc(device: VkDevice, pPipelineInfo: ptr VkDataGraphPipelineInfoARM, pPropertiesCount: ptr uint32, pProperties: ptr VkDataGraphPipelinePropertyARM): VkResult {.stdcall.}
  vkGetDataGraphPipelinePropertiesARM*: proc(device: VkDevice, pPipelineInfo: ptr VkDataGraphPipelineInfoARM, propertiesCount: uint32, pProperties: ptr VkDataGraphPipelinePropertyQueryResultARM): VkResult {.stdcall.}
  vkGetPhysicalDeviceQueueFamilyDataGraphPropertiesARM*: proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, pQueueFamilyDataGraphPropertyCount: ptr uint32, pQueueFamilyDataGraphProperties: ptr VkQueueFamilyDataGraphPropertiesARM): VkResult {.stdcall.}
  vkGetPhysicalDeviceQueueFamilyDataGraphProcessingEnginePropertiesARM*: proc(physicalDevice: VkPhysicalDevice, pQueueFamilyDataGraphProcessingEngineInfo: ptr VkPhysicalDeviceQueueFamilyDataGraphProcessingEngineInfoARM, pQueueFamilyDataGraphProcessingEngineProperties: ptr VkQueueFamilyDataGraphProcessingEnginePropertiesARM): void {.stdcall.}
  vkGetNativeBufferPropertiesOHOS*: proc(device: VkDevice, buffer: pointer, pProperties: ptr VkNativeBufferPropertiesOHOS): VkResult {.stdcall.}
  vkGetMemoryNativeBufferOHOS*: proc(device: VkDevice, pInfo: ptr VkMemoryGetNativeBufferInfoOHOS, pBuffer: ptr pointer): VkResult {.stdcall.}
  vkGetSwapchainGrallocUsageOHOS*: proc(device: VkDevice, format: VkFormat, imageUsage: VkImageUsageFlags, grallocUsage: ptr uint64): VkResult {.stdcall.}
  vkAcquireImageOHOS*: proc(device: VkDevice, image: VkImage, nativeFenceFd: int32, semaphore: VkSemaphore, fence: VkFence): VkResult {.stdcall.}
  vkQueueSignalReleaseImageOHOS*: proc(queue: VkQueue, waitSemaphoreCount: uint32, pWaitSemaphores: ptr VkSemaphore, image: VkImage, pNativeFenceFd: ptr int32): VkResult {.stdcall.}
  vkEnumeratePhysicalDeviceQueueFamilyPerformanceCountersByRegionARM*: proc(physicalDevice: VkPhysicalDevice, queueFamilyIndex: uint32, pCounterCount: ptr uint32, pCounters: ptr VkPerformanceCounterARM, pCounterDescriptions: ptr VkPerformanceCounterDescriptionARM): VkResult {.stdcall.}
  vkCmdSetComputeOccupancyPriorityNV*: proc(commandBuffer: VkCommandBuffer, pParameters: ptr VkComputeOccupancyPriorityParametersNV): void {.stdcall.}
  vkWriteSamplerDescriptorsEXT*: proc(device: VkDevice, samplerCount: uint32, pSamplers: ptr VkSamplerCreateInfo, pDescriptors: ptr VkHostAddressRangeEXT): VkResult {.stdcall.}
  vkWriteResourceDescriptorsEXT*: proc(device: VkDevice, resourceCount: uint32, pResources: ptr VkResourceDescriptorInfoEXT, pDescriptors: ptr VkHostAddressRangeEXT): VkResult {.stdcall.}
  vkCmdBindSamplerHeapEXT*: proc(commandBuffer: VkCommandBuffer, pBindInfo: ptr VkBindHeapInfoEXT): void {.stdcall.}
  vkCmdBindResourceHeapEXT*: proc(commandBuffer: VkCommandBuffer, pBindInfo: ptr VkBindHeapInfoEXT): void {.stdcall.}
  vkCmdPushDataEXT*: proc(commandBuffer: VkCommandBuffer, pPushDataInfo: ptr VkPushDataInfoEXT): void {.stdcall.}
  vkRegisterCustomBorderColorEXT*: proc(device: VkDevice, pBorderColor: ptr VkSamplerCustomBorderColorCreateInfoEXT, requestIndex: VkBool32, pIndex: ptr uint32): VkResult {.stdcall.}
  vkUnregisterCustomBorderColorEXT*: proc(device: VkDevice, index: uint32): void {.stdcall.}
  vkGetImageOpaqueCaptureDataEXT*: proc(device: VkDevice, imageCount: uint32, pImages: ptr VkImage, pDatas: ptr VkHostAddressRangeEXT): VkResult {.stdcall.}
  vkGetPhysicalDeviceDescriptorSizeEXT*: proc(physicalDevice: VkPhysicalDevice, descriptorType: VkDescriptorType): VkDeviceSize {.stdcall.}
  vkGetTensorOpaqueCaptureDataARM*: proc(device: VkDevice, tensorCount: uint32, pTensors: ptr VkTensorARM, pDatas: ptr VkHostAddressRangeEXT): VkResult {.stdcall.}
  vkCmdCopyMemoryKHR*: proc(commandBuffer: VkCommandBuffer, pCopyMemoryInfo: ptr VkCopyDeviceMemoryInfoKHR): void {.stdcall.}
  vkCmdCopyMemoryToImageKHR*: proc(commandBuffer: VkCommandBuffer, pCopyMemoryInfo: ptr VkCopyDeviceMemoryImageInfoKHR): void {.stdcall.}
  vkCmdCopyImageToMemoryKHR*: proc(commandBuffer: VkCommandBuffer, pCopyMemoryInfo: ptr VkCopyDeviceMemoryImageInfoKHR): void {.stdcall.}
  vkCmdUpdateMemoryKHR*: proc(commandBuffer: VkCommandBuffer, pDstRange: ptr VkDeviceAddressRangeKHR, dstFlags: VkAddressCommandFlagsKHR, dataSize: VkDeviceSize, pData: pointer): void {.stdcall.}
  vkCmdFillMemoryKHR*: proc(commandBuffer: VkCommandBuffer, pDstRange: ptr VkDeviceAddressRangeKHR, dstFlags: VkAddressCommandFlagsKHR, data: uint32): void {.stdcall.}
  vkCmdCopyQueryPoolResultsToMemoryKHR*: proc(commandBuffer: VkCommandBuffer, queryPool: VkQueryPool, firstQuery: uint32, queryCount: uint32, pDstRange: ptr VkStridedDeviceAddressRangeKHR, dstFlags: VkAddressCommandFlagsKHR, queryResultFlags: VkQueryResultFlags): void {.stdcall.}
  vkCmdBeginConditionalRendering2EXT*: proc(commandBuffer: VkCommandBuffer, pConditionalRenderingBegin: ptr VkConditionalRenderingBeginInfo2EXT): void {.stdcall.}
  vkCmdBindTransformFeedbackBuffers2EXT*: proc(commandBuffer: VkCommandBuffer, firstBinding: uint32, bindingCount: uint32, pBindingInfos: ptr VkBindTransformFeedbackBuffer2InfoEXT): void {.stdcall.}
  vkCmdBeginTransformFeedback2EXT*: proc(commandBuffer: VkCommandBuffer, firstCounterRange: uint32, counterRangeCount: uint32, pCounterInfos: ptr VkBindTransformFeedbackBuffer2InfoEXT): void {.stdcall.}
  vkCmdEndTransformFeedback2EXT*: proc(commandBuffer: VkCommandBuffer, firstCounterRange: uint32, counterRangeCount: uint32, pCounterInfos: ptr VkBindTransformFeedbackBuffer2InfoEXT): void {.stdcall.}
  vkCmdDrawIndirectByteCount2EXT*: proc(commandBuffer: VkCommandBuffer, instanceCount: uint32, firstInstance: uint32, pCounterInfo: ptr VkBindTransformFeedbackBuffer2InfoEXT, counterOffset: uint32, vertexStride: uint32): void {.stdcall.}
  vkCmdWriteMarkerToMemoryAMD*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkMemoryMarkerInfoAMD): void {.stdcall.}
  vkCmdBindIndexBuffer3KHR*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkBindIndexBuffer3InfoKHR): void {.stdcall.}
  vkCmdBindVertexBuffers3KHR*: proc(commandBuffer: VkCommandBuffer, firstBinding: uint32, bindingCount: uint32, pBindingInfos: ptr VkBindVertexBuffer3InfoKHR): void {.stdcall.}
  vkCmdDrawIndirect2KHR*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDrawIndirect2InfoKHR): void {.stdcall.}
  vkCmdDrawIndexedIndirect2KHR*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDrawIndirect2InfoKHR): void {.stdcall.}
  vkCmdDrawIndirectCount2KHR*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDrawIndirectCount2InfoKHR): void {.stdcall.}
  vkCmdDrawIndexedIndirectCount2KHR*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDrawIndirectCount2InfoKHR): void {.stdcall.}
  vkCmdDrawMeshTasksIndirect2EXT*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDrawIndirect2InfoKHR): void {.stdcall.}
  vkCmdDrawMeshTasksIndirectCount2EXT*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDrawIndirectCount2InfoKHR): void {.stdcall.}
  vkCmdDispatchIndirect2KHR*: proc(commandBuffer: VkCommandBuffer, pInfo: ptr VkDispatchIndirect2InfoKHR): void {.stdcall.}
  vkCreateAccelerationStructure2KHR*: proc(device: VkDevice, pCreateInfo: ptr VkAccelerationStructureCreateInfo2KHR, pAllocator: ptr VkAllocationCallbacks, pAccelerationStructure: ptr VkAccelerationStructureKHR): VkResult {.stdcall.}
  vkResetQueryPoolEXT*: proc(device: VkDevice, queryPool: VkQueryPool, firstQuery: uint32, queryCount: uint32): void {.stdcall.}
  vkGetRenderingAreaGranularityKHR*: proc(device: VkDevice, pRenderingAreaInfo: ptr VkRenderingAreaInfo, pGranularity: ptr VkExtent2D): void {.stdcall.}
  vkGetPhysicalDeviceFeatures2KHR*: proc(physicalDevice: VkPhysicalDevice, pFeatures: ptr VkPhysicalDeviceFeatures2): void {.stdcall.}
  vkGetPhysicalDeviceProperties2KHR*: proc(physicalDevice: VkPhysicalDevice, pProperties: ptr VkPhysicalDeviceProperties2): void {.stdcall.}
  vkGetPhysicalDeviceFormatProperties2KHR*: proc(physicalDevice: VkPhysicalDevice, format: VkFormat, pFormatProperties: ptr VkFormatProperties2): void {.stdcall.}
  vkGetPhysicalDeviceImageFormatProperties2KHR*: proc(physicalDevice: VkPhysicalDevice, pImageFormatInfo: ptr VkPhysicalDeviceImageFormatInfo2, pImageFormatProperties: ptr VkImageFormatProperties2): VkResult {.stdcall.}
  vkGetPhysicalDeviceQueueFamilyProperties2KHR*: proc(physicalDevice: VkPhysicalDevice, pQueueFamilyPropertyCount: ptr uint32, pQueueFamilyProperties: ptr VkQueueFamilyProperties2): void {.stdcall.}
  vkGetPhysicalDeviceMemoryProperties2KHR*: proc(physicalDevice: VkPhysicalDevice, pMemoryProperties: ptr VkPhysicalDeviceMemoryProperties2): void {.stdcall.}
  vkGetPhysicalDeviceSparseImageFormatProperties2KHR*: proc(physicalDevice: VkPhysicalDevice, pFormatInfo: ptr VkPhysicalDeviceSparseImageFormatInfo2, pPropertyCount: ptr uint32, pProperties: ptr VkSparseImageFormatProperties2): void {.stdcall.}
  vkCmdPushDescriptorSetKHR*: proc(commandBuffer: VkCommandBuffer, pipelineBindPoint: VkPipelineBindPoint, layout: VkPipelineLayout, set: uint32, descriptorWriteCount: uint32, pDescriptorWrites: ptr VkWriteDescriptorSet): void {.stdcall.}
  vkTrimCommandPoolKHR*: proc(device: VkDevice, commandPool: VkCommandPool, flags: VkCommandPoolTrimFlags): void {.stdcall.}
  vkGetPhysicalDeviceExternalBufferPropertiesKHR*: proc(physicalDevice: VkPhysicalDevice, pExternalBufferInfo: ptr VkPhysicalDeviceExternalBufferInfo, pExternalBufferProperties: ptr VkExternalBufferProperties): void {.stdcall.}
  vkGetPhysicalDeviceExternalSemaphorePropertiesKHR*: proc(physicalDevice: VkPhysicalDevice, pExternalSemaphoreInfo: ptr VkPhysicalDeviceExternalSemaphoreInfo, pExternalSemaphoreProperties: ptr VkExternalSemaphoreProperties): void {.stdcall.}
  vkGetPhysicalDeviceExternalFencePropertiesKHR*: proc(physicalDevice: VkPhysicalDevice, pExternalFenceInfo: ptr VkPhysicalDeviceExternalFenceInfo, pExternalFenceProperties: ptr VkExternalFenceProperties): void {.stdcall.}
  vkEnumeratePhysicalDeviceGroupsKHR*: proc(instance: VkInstance, pPhysicalDeviceGroupCount: ptr uint32, pPhysicalDeviceGroupProperties: ptr VkPhysicalDeviceGroupProperties): VkResult {.stdcall.}
  vkGetDeviceGroupPeerMemoryFeaturesKHR*: proc(device: VkDevice, heapIndex: uint32, localDeviceIndex: uint32, remoteDeviceIndex: uint32, pPeerMemoryFeatures: ptr VkPeerMemoryFeatureFlags): void {.stdcall.}
  vkBindBufferMemory2KHR*: proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindBufferMemoryInfo): VkResult {.stdcall.}
  vkBindImageMemory2KHR*: proc(device: VkDevice, bindInfoCount: uint32, pBindInfos: ptr VkBindImageMemoryInfo): VkResult {.stdcall.}
  vkCmdSetDeviceMaskKHR*: proc(commandBuffer: VkCommandBuffer, deviceMask: uint32): void {.stdcall.}
  vkCmdDispatchBaseKHR*: proc(commandBuffer: VkCommandBuffer, baseGroupX: uint32, baseGroupY: uint32, baseGroupZ: uint32, groupCountX: uint32, groupCountY: uint32, groupCountZ: uint32): void {.stdcall.}
  vkCreateDescriptorUpdateTemplateKHR*: proc(device: VkDevice, pCreateInfo: ptr VkDescriptorUpdateTemplateCreateInfo, pAllocator: ptr VkAllocationCallbacks, pDescriptorUpdateTemplate: ptr VkDescriptorUpdateTemplate): VkResult {.stdcall.}
  vkDestroyDescriptorUpdateTemplateKHR*: proc(device: VkDevice, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkUpdateDescriptorSetWithTemplateKHR*: proc(device: VkDevice, descriptorSet: VkDescriptorSet, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, pData: pointer): void {.stdcall.}
  vkCmdPushDescriptorSetWithTemplateKHR*: proc(commandBuffer: VkCommandBuffer, descriptorUpdateTemplate: VkDescriptorUpdateTemplate, layout: VkPipelineLayout, set: uint32, pData: pointer): void {.stdcall.}
  vkGetBufferMemoryRequirements2KHR*: proc(device: VkDevice, pInfo: ptr VkBufferMemoryRequirementsInfo2, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkGetImageMemoryRequirements2KHR*: proc(device: VkDevice, pInfo: ptr VkImageMemoryRequirementsInfo2, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkGetImageSparseMemoryRequirements2KHR*: proc(device: VkDevice, pInfo: ptr VkImageSparseMemoryRequirementsInfo2, pSparseMemoryRequirementCount: ptr uint32, pSparseMemoryRequirements: ptr VkSparseImageMemoryRequirements2): void {.stdcall.}
  vkGetDeviceBufferMemoryRequirementsKHR*: proc(device: VkDevice, pInfo: ptr VkDeviceBufferMemoryRequirements, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkGetDeviceImageMemoryRequirementsKHR*: proc(device: VkDevice, pInfo: ptr VkDeviceImageMemoryRequirements, pMemoryRequirements: ptr VkMemoryRequirements2): void {.stdcall.}
  vkGetDeviceImageSparseMemoryRequirementsKHR*: proc(device: VkDevice, pInfo: ptr VkDeviceImageMemoryRequirements, pSparseMemoryRequirementCount: ptr uint32, pSparseMemoryRequirements: ptr VkSparseImageMemoryRequirements2): void {.stdcall.}
  vkCreateSamplerYcbcrConversionKHR*: proc(device: VkDevice, pCreateInfo: ptr VkSamplerYcbcrConversionCreateInfo, pAllocator: ptr VkAllocationCallbacks, pYcbcrConversion: ptr VkSamplerYcbcrConversion): VkResult {.stdcall.}
  vkDestroySamplerYcbcrConversionKHR*: proc(device: VkDevice, ycbcrConversion: VkSamplerYcbcrConversion, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkGetDescriptorSetLayoutSupportKHR*: proc(device: VkDevice, pCreateInfo: ptr VkDescriptorSetLayoutCreateInfo, pSupport: ptr VkDescriptorSetLayoutSupport): void {.stdcall.}
  vkGetPhysicalDeviceCalibrateableTimeDomainsEXT*: proc(physicalDevice: VkPhysicalDevice, pTimeDomainCount: ptr uint32, pTimeDomains: ptr VkTimeDomainKHR): VkResult {.stdcall.}
  vkGetCalibratedTimestampsEXT*: proc(device: VkDevice, timestampCount: uint32, pTimestampInfos: ptr VkCalibratedTimestampInfoKHR, pTimestamps: ptr uint64, pMaxDeviation: ptr uint64): VkResult {.stdcall.}
  vkCreateRenderPass2KHR*: proc(device: VkDevice, pCreateInfo: ptr VkRenderPassCreateInfo2, pAllocator: ptr VkAllocationCallbacks, pRenderPass: ptr VkRenderPass): VkResult {.stdcall.}
  vkCmdBeginRenderPass2KHR*: proc(commandBuffer: VkCommandBuffer, pRenderPassBegin: ptr VkRenderPassBeginInfo, pSubpassBeginInfo: ptr VkSubpassBeginInfo): void {.stdcall.}
  vkCmdNextSubpass2KHR*: proc(commandBuffer: VkCommandBuffer, pSubpassBeginInfo: ptr VkSubpassBeginInfo, pSubpassEndInfo: ptr VkSubpassEndInfo): void {.stdcall.}
  vkCmdEndRenderPass2KHR*: proc(commandBuffer: VkCommandBuffer, pSubpassEndInfo: ptr VkSubpassEndInfo): void {.stdcall.}
  vkGetSemaphoreCounterValueKHR*: proc(device: VkDevice, semaphore: VkSemaphore, pValue: ptr uint64): VkResult {.stdcall.}
  vkWaitSemaphoresKHR*: proc(device: VkDevice, pWaitInfo: ptr VkSemaphoreWaitInfo, timeout: uint64): VkResult {.stdcall.}
  vkSignalSemaphoreKHR*: proc(device: VkDevice, pSignalInfo: ptr VkSemaphoreSignalInfo): VkResult {.stdcall.}
  vkCmdDrawIndirectCountKHR*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}
  vkCmdDrawIndirectCountAMD*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}
  vkCmdDrawIndexedIndirectCountKHR*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}
  vkCmdDrawIndexedIndirectCountAMD*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, countBuffer: VkBuffer, countBufferOffset: VkDeviceSize, maxDrawCount: uint32, stride: uint32): void {.stdcall.}
  vkGetRayTracingShaderGroupHandlesNV*: proc(device: VkDevice, pipeline: VkPipeline, firstGroup: uint32, groupCount: uint32, dataSize: csize_t, pData: pointer): VkResult {.stdcall.}
  vkGetBufferOpaqueCaptureAddressKHR*: proc(device: VkDevice, pInfo: ptr VkBufferDeviceAddressInfo): uint64 {.stdcall.}
  vkGetBufferDeviceAddressKHR*: proc(device: VkDevice, pInfo: ptr VkBufferDeviceAddressInfo): VkDeviceAddress {.stdcall.}
  vkGetBufferDeviceAddressEXT*: proc(device: VkDevice, pInfo: ptr VkBufferDeviceAddressInfo): VkDeviceAddress {.stdcall.}
  vkGetDeviceMemoryOpaqueCaptureAddressKHR*: proc(device: VkDevice, pInfo: ptr VkDeviceMemoryOpaqueCaptureAddressInfo): uint64 {.stdcall.}
  vkCmdSetLineStippleKHR*: proc(commandBuffer: VkCommandBuffer, lineStippleFactor: uint32, lineStipplePattern: uint16): void {.stdcall.}
  vkCmdSetLineStippleEXT*: proc(commandBuffer: VkCommandBuffer, lineStippleFactor: uint32, lineStipplePattern: uint16): void {.stdcall.}
  vkGetPhysicalDeviceToolPropertiesEXT*: proc(physicalDevice: VkPhysicalDevice, pToolCount: ptr uint32, pToolProperties: ptr VkPhysicalDeviceToolProperties): VkResult {.stdcall.}
  vkCmdSetCullModeEXT*: proc(commandBuffer: VkCommandBuffer, cullMode: VkCullModeFlags): void {.stdcall.}
  vkCmdSetFrontFaceEXT*: proc(commandBuffer: VkCommandBuffer, frontFace: VkFrontFace): void {.stdcall.}
  vkCmdSetPrimitiveTopologyEXT*: proc(commandBuffer: VkCommandBuffer, primitiveTopology: VkPrimitiveTopology): void {.stdcall.}
  vkCmdSetViewportWithCountEXT*: proc(commandBuffer: VkCommandBuffer, viewportCount: uint32, pViewports: ptr VkViewport): void {.stdcall.}
  vkCmdSetScissorWithCountEXT*: proc(commandBuffer: VkCommandBuffer, scissorCount: uint32, pScissors: ptr VkRect2D): void {.stdcall.}
  vkCmdBindIndexBuffer2KHR*: proc(commandBuffer: VkCommandBuffer, buffer: VkBuffer, offset: VkDeviceSize, size: VkDeviceSize, indexType: VkIndexType): void {.stdcall.}
  vkCmdBindVertexBuffers2EXT*: proc(commandBuffer: VkCommandBuffer, firstBinding: uint32, bindingCount: uint32, pBuffers: ptr VkBuffer, pOffsets: ptr VkDeviceSize, pSizes: ptr VkDeviceSize, pStrides: ptr VkDeviceSize): void {.stdcall.}
  vkCmdSetDepthTestEnableEXT*: proc(commandBuffer: VkCommandBuffer, depthTestEnable: VkBool32): void {.stdcall.}
  vkCmdSetDepthWriteEnableEXT*: proc(commandBuffer: VkCommandBuffer, depthWriteEnable: VkBool32): void {.stdcall.}
  vkCmdSetDepthCompareOpEXT*: proc(commandBuffer: VkCommandBuffer, depthCompareOp: VkCompareOp): void {.stdcall.}
  vkCmdSetDepthBoundsTestEnableEXT*: proc(commandBuffer: VkCommandBuffer, depthBoundsTestEnable: VkBool32): void {.stdcall.}
  vkCmdSetStencilTestEnableEXT*: proc(commandBuffer: VkCommandBuffer, stencilTestEnable: VkBool32): void {.stdcall.}
  vkCmdSetStencilOpEXT*: proc(commandBuffer: VkCommandBuffer, faceMask: VkStencilFaceFlags, failOp: VkStencilOp, passOp: VkStencilOp, depthFailOp: VkStencilOp, compareOp: VkCompareOp): void {.stdcall.}
  vkCmdSetRasterizerDiscardEnableEXT*: proc(commandBuffer: VkCommandBuffer, rasterizerDiscardEnable: VkBool32): void {.stdcall.}
  vkCmdSetDepthBiasEnableEXT*: proc(commandBuffer: VkCommandBuffer, depthBiasEnable: VkBool32): void {.stdcall.}
  vkCmdSetPrimitiveRestartEnableEXT*: proc(commandBuffer: VkCommandBuffer, primitiveRestartEnable: VkBool32): void {.stdcall.}
  vkCreatePrivateDataSlotEXT*: proc(device: VkDevice, pCreateInfo: ptr VkPrivateDataSlotCreateInfo, pAllocator: ptr VkAllocationCallbacks, pPrivateDataSlot: ptr VkPrivateDataSlot): VkResult {.stdcall.}
  vkDestroyPrivateDataSlotEXT*: proc(device: VkDevice, privateDataSlot: VkPrivateDataSlot, pAllocator: ptr VkAllocationCallbacks): void {.stdcall.}
  vkSetPrivateDataEXT*: proc(device: VkDevice, objectType: VkObjectType, objectHandle: uint64, privateDataSlot: VkPrivateDataSlot, data: uint64): VkResult {.stdcall.}
  vkGetPrivateDataEXT*: proc(device: VkDevice, objectType: VkObjectType, objectHandle: uint64, privateDataSlot: VkPrivateDataSlot, pData: ptr uint64): void {.stdcall.}
  vkCmdCopyBuffer2KHR*: proc(commandBuffer: VkCommandBuffer, pCopyBufferInfo: ptr VkCopyBufferInfo2): void {.stdcall.}
  vkCmdCopyImage2KHR*: proc(commandBuffer: VkCommandBuffer, pCopyImageInfo: ptr VkCopyImageInfo2): void {.stdcall.}
  vkCmdBlitImage2KHR*: proc(commandBuffer: VkCommandBuffer, pBlitImageInfo: ptr VkBlitImageInfo2): void {.stdcall.}
  vkCmdCopyBufferToImage2KHR*: proc(commandBuffer: VkCommandBuffer, pCopyBufferToImageInfo: ptr VkCopyBufferToImageInfo2): void {.stdcall.}
  vkCmdCopyImageToBuffer2KHR*: proc(commandBuffer: VkCommandBuffer, pCopyImageToBufferInfo: ptr VkCopyImageToBufferInfo2): void {.stdcall.}
  vkCmdResolveImage2KHR*: proc(commandBuffer: VkCommandBuffer, pResolveImageInfo: ptr VkResolveImageInfo2): void {.stdcall.}
  vkCmdSetEvent2KHR*: proc(commandBuffer: VkCommandBuffer, event: VkEvent, pDependencyInfo: ptr VkDependencyInfo): void {.stdcall.}
  vkCmdResetEvent2KHR*: proc(commandBuffer: VkCommandBuffer, event: VkEvent, stageMask: VkPipelineStageFlags2): void {.stdcall.}
  vkCmdWaitEvents2KHR*: proc(commandBuffer: VkCommandBuffer, eventCount: uint32, pEvents: ptr VkEvent, pDependencyInfos: ptr VkDependencyInfo): void {.stdcall.}
  vkCmdPipelineBarrier2KHR*: proc(commandBuffer: VkCommandBuffer, pDependencyInfo: ptr VkDependencyInfo): void {.stdcall.}
  vkQueueSubmit2KHR*: proc(queue: VkQueue, submitCount: uint32, pSubmits: ptr VkSubmitInfo2, fence: VkFence): VkResult {.stdcall.}
  vkCmdWriteTimestamp2KHR*: proc(commandBuffer: VkCommandBuffer, stage: VkPipelineStageFlags2, queryPool: VkQueryPool, query: uint32): void {.stdcall.}
  vkCopyMemoryToImageEXT*: proc(device: VkDevice, pCopyMemoryToImageInfo: ptr VkCopyMemoryToImageInfo): VkResult {.stdcall.}
  vkCopyImageToMemoryEXT*: proc(device: VkDevice, pCopyImageToMemoryInfo: ptr VkCopyImageToMemoryInfo): VkResult {.stdcall.}
  vkCopyImageToImageEXT*: proc(device: VkDevice, pCopyImageToImageInfo: ptr VkCopyImageToImageInfo): VkResult {.stdcall.}
  vkTransitionImageLayoutEXT*: proc(device: VkDevice, transitionCount: uint32, pTransitions: ptr VkHostImageLayoutTransitionInfo): VkResult {.stdcall.}
  vkCmdBeginRenderingKHR*: proc(commandBuffer: VkCommandBuffer, pRenderingInfo: ptr VkRenderingInfo): void {.stdcall.}
  vkCmdEndRendering2EXT*: proc(commandBuffer: VkCommandBuffer, pRenderingEndInfo: ptr VkRenderingEndInfoKHR): void {.stdcall.}
  vkCmdEndRenderingKHR*: proc(commandBuffer: VkCommandBuffer): void {.stdcall.}
  vkGetImageSubresourceLayout2KHR*: proc(device: VkDevice, image: VkImage, pSubresource: ptr VkImageSubresource2, pLayout: ptr VkSubresourceLayout2): void {.stdcall.}
  vkGetImageSubresourceLayout2EXT*: proc(device: VkDevice, image: VkImage, pSubresource: ptr VkImageSubresource2, pLayout: ptr VkSubresourceLayout2): void {.stdcall.}
  vkReleaseSwapchainImagesEXT*: proc(device: VkDevice, pReleaseInfo: ptr VkReleaseSwapchainImagesInfoKHR): VkResult {.stdcall.}
  vkGetDeviceImageSubresourceLayoutKHR*: proc(device: VkDevice, pInfo: ptr VkDeviceImageSubresourceInfo, pLayout: ptr VkSubresourceLayout2): void {.stdcall.}
  vkMapMemory2KHR*: proc(device: VkDevice, pMemoryMapInfo: ptr VkMemoryMapInfo, ppData: ptr pointer): VkResult {.stdcall.}
  vkUnmapMemory2KHR*: proc(device: VkDevice, pMemoryUnmapInfo: ptr VkMemoryUnmapInfo): VkResult {.stdcall.}
  vkCmdBindDescriptorSets2KHR*: proc(commandBuffer: VkCommandBuffer, pBindDescriptorSetsInfo: ptr VkBindDescriptorSetsInfo): void {.stdcall.}
  vkCmdPushConstants2KHR*: proc(commandBuffer: VkCommandBuffer, pPushConstantsInfo: ptr VkPushConstantsInfo): void {.stdcall.}
  vkCmdPushDescriptorSet2KHR*: proc(commandBuffer: VkCommandBuffer, pPushDescriptorSetInfo: ptr VkPushDescriptorSetInfo): void {.stdcall.}
  vkCmdPushDescriptorSetWithTemplate2KHR*: proc(commandBuffer: VkCommandBuffer, pPushDescriptorSetWithTemplateInfo: ptr VkPushDescriptorSetWithTemplateInfo): void {.stdcall.}
  vkCmdSetRenderingAttachmentLocationsKHR*: proc(commandBuffer: VkCommandBuffer, pLocationInfo: ptr VkRenderingAttachmentLocationInfo): void {.stdcall.}
  vkCmdSetRenderingInputAttachmentIndicesKHR*: proc(commandBuffer: VkCommandBuffer, pInputAttachmentIndexInfo: ptr VkRenderingInputAttachmentIndexInfo): void {.stdcall.}

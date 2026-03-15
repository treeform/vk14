## Vulkan textured quad example using auto-generated vk14 bindings.

import
  std/os,
  pixie,
  windy,
  vk14

type
  QuadVertex = object
    position: array[3, float32]
    color: array[3, float32]
    uv: array[2, float32]

  QuadRenderer = object
    renderPass: VkRenderPass
    descriptorSetLayout: VkDescriptorSetLayout
    pipelineLayout: VkPipelineLayout
    pipeline: VkPipeline
    imageViews: seq[VkImageView]
    framebuffers: seq[VkFramebuffer]
    commandBuffers: seq[VkCommandBuffer]
    vertexBuffer: VkBuffer
    vertexBufferMemory: VkDeviceMemory
    textureImage: VkImage
    textureImageMemory: VkDeviceMemory
    textureImageView: VkImageView
    textureSampler: VkSampler
    descriptorPool: VkDescriptorPool
    descriptorSet: VkDescriptorSet

const
  Width = 1280
  Height = 800
  TexturePath = currentSourcePath().parentDir / "testTexture.png"
  ClearColor = [0.05'f32, 0.05'f32, 0.1'f32, 1.0'f32]
  QuadVertices = [
    QuadVertex(position: [-0.5'f32, 0.5, 0.0], color: [1.0'f32, 0.0, 0.0], uv: [0.0'f32, 0.0]),
    QuadVertex(position: [0.5'f32, 0.5, 0.0], color: [0.0'f32, 1.0, 0.0], uv: [1.0'f32, 0.0]),
    QuadVertex(position: [0.5'f32, -0.5, 0.0], color: [0.0'f32, 0.0, 1.0], uv: [1.0'f32, 1.0]),
    QuadVertex(position: [-0.5'f32, 0.5, 0.0], color: [1.0'f32, 0.0, 0.0], uv: [0.0'f32, 0.0]),
    QuadVertex(position: [0.5'f32, -0.5, 0.0], color: [0.0'f32, 0.0, 1.0], uv: [1.0'f32, 1.0]),
    QuadVertex(position: [-0.5'f32, -0.5, 0.0], color: [1.0'f32, 1.0, 0.0], uv: [0.0'f32, 1.0]),
  ]

proc requiresSwapChainRecreate(vkResult: VkResult): bool =
  ## Returns true if the result indicates the swapchain is out of date.
  let code = vkResult.int32
  code == VK_SUBOPTIMAL_KHR.int32 or code == VK_ERROR_OUT_OF_DATE_KHR.int32

proc findMemoryType(ctx: VulkanContext, typeFilter, properties: uint32): uint32 =
  ## Finds a memory type matching the filter and property flags.
  var memProps: VkPhysicalDeviceMemoryProperties
  vkGetPhysicalDeviceMemoryProperties(ctx.physicalDevice, memProps.addr)
  for i in 0'u32 ..< memProps.memoryTypeCount:
    if ((typeFilter shr i) and 1) == 1 and (memProps.memoryTypes[i].propertyFlags.uint32 and properties) == properties:
      return i
  raise newException(Exception, "No suitable memory type")

proc createShaderModule(device: VkDevice, code: string): VkShaderModule =
  ## Creates a shader module from SPIR-V bytecode.
  var ci = VkShaderModuleCreateInfo(sType: VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO, codeSize: code.len.uint32, pCode: cast[ptr uint32](code[0].unsafeAddr))
  checkVk(vkCreateShaderModule(device, ci.addr, nil, result.addr), "createShaderModule")

proc createBuffer(ctx: VulkanContext, size: VkDeviceSize, usage, properties: uint32, buffer: var VkBuffer, memory: var VkDeviceMemory) =
  ## Creates a buffer with dedicated memory.
  var bi = VkBufferCreateInfo(sType: VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO, size: size, usage: VkBufferUsageFlags(usage), sharingMode: VK_SHARING_MODE_EXCLUSIVE)
  checkVk(vkCreateBuffer(ctx.device, bi.addr, nil, buffer.addr), "createBuffer")
  var mr: VkMemoryRequirements
  vkGetBufferMemoryRequirements(ctx.device, buffer, mr.addr)
  var ai = VkMemoryAllocateInfo(sType: VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO, allocationSize: mr.size, memoryTypeIndex: findMemoryType(ctx, mr.memoryTypeBits, properties))
  checkVk(vkAllocateMemory(ctx.device, ai.addr, nil, memory.addr), "allocBufferMem")
  checkVk(vkBindBufferMemory(ctx.device, buffer, memory, VkDeviceSize(0)), "bindBufferMem")

proc beginSingleTimeCommands(ctx: VulkanContext): VkCommandBuffer =
  ## Allocates and begins a one-shot command buffer.
  var ai = VkCommandBufferAllocateInfo(sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO, commandPool: ctx.commandPool, level: VK_COMMAND_BUFFER_LEVEL_PRIMARY, commandBufferCount: 1)
  checkVk(vkAllocateCommandBuffers(ctx.device, ai.addr, result.addr), "allocSingleCB")
  var bi = VkCommandBufferBeginInfo(sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO, flags: VkCommandBufferUsageFlags(VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT))
  checkVk(vkBeginCommandBuffer(result, bi.addr), "beginSingleCB")

proc endSingleTimeCommands(ctx: VulkanContext, cb: VkCommandBuffer) =
  ## Ends, submits, and waits for a one-shot command buffer.
  checkVk(vkEndCommandBuffer(cb), "endSingleCB")
  var si = VkSubmitInfo(sType: VK_STRUCTURE_TYPE_SUBMIT_INFO, commandBufferCount: 1, pCommandBuffers: unsafeAddr cb)
  checkVk(vkQueueSubmit(ctx.graphicsQueue, 1, si.addr, VkFence(0)), "submitSingleCB")
  checkVk(vkQueueWaitIdle(ctx.graphicsQueue), "waitIdle")
  vkFreeCommandBuffers(ctx.device, ctx.commandPool, 1, unsafeAddr cb)

proc createImage(ctx: VulkanContext, w, h: int, format: VkFormat, tiling: VkImageTiling, usage, properties: uint32, image: var VkImage, memory: var VkDeviceMemory) =
  ## Creates a 2D image with dedicated memory.
  var ii = VkImageCreateInfo(sType: VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO, imageType: VK_IMAGE_TYPE_2D, format: format, extent: VkExtent3D(width: w.uint32, height: h.uint32, depth: 1), mipLevels: 1, arrayLayers: 1, samples: VK_SAMPLE_COUNT_1_BIT, tiling: tiling, usage: VkImageUsageFlags(usage), sharingMode: VK_SHARING_MODE_EXCLUSIVE, initialLayout: VK_IMAGE_LAYOUT_UNDEFINED)
  checkVk(vkCreateImage(ctx.device, ii.addr, nil, image.addr), "createImage")
  var mr: VkMemoryRequirements
  vkGetImageMemoryRequirements(ctx.device, image, mr.addr)
  var ai = VkMemoryAllocateInfo(sType: VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO, allocationSize: mr.size, memoryTypeIndex: findMemoryType(ctx, mr.memoryTypeBits, properties))
  checkVk(vkAllocateMemory(ctx.device, ai.addr, nil, memory.addr), "allocImageMem")
  checkVk(vkBindImageMemory(ctx.device, image, memory, VkDeviceSize(0)), "bindImageMem")

proc transitionImageLayout(ctx: VulkanContext, image: VkImage, oldLayout, newLayout: VkImageLayout) =
  ## Transitions an image between layouts using a pipeline barrier.
  let cb = beginSingleTimeCommands(ctx)
  var barrier = VkImageMemoryBarrier(sType: VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER, oldLayout: oldLayout, newLayout: newLayout, srcQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED, dstQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED, image: image, subresourceRange: VkImageSubresourceRange(aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT), baseMipLevel: 0, levelCount: 1, baseArrayLayer: 0, layerCount: 1))
  var srcStage, dstStage: VkPipelineStageFlags
  if oldLayout == VK_IMAGE_LAYOUT_UNDEFINED and newLayout == VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL:
    barrier.srcAccessMask = VkAccessFlags(0)
    barrier.dstAccessMask = VkAccessFlags(VK_ACCESS_TRANSFER_WRITE_BIT)
    srcStage = VkPipelineStageFlags(VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT)
    dstStage = VkPipelineStageFlags(VK_PIPELINE_STAGE_TRANSFER_BIT)
  elif oldLayout == VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL and newLayout == VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL:
    barrier.srcAccessMask = VkAccessFlags(VK_ACCESS_TRANSFER_WRITE_BIT)
    barrier.dstAccessMask = VkAccessFlags(VK_ACCESS_SHADER_READ_BIT)
    srcStage = VkPipelineStageFlags(VK_PIPELINE_STAGE_TRANSFER_BIT)
    dstStage = VkPipelineStageFlags(VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT)
  else:
    raise newException(Exception, "Unsupported layout transition")
  vkCmdPipelineBarrier(cb, srcStage, dstStage, VkDependencyFlags(0), 0, nil, 0, nil, 1, barrier.addr)
  endSingleTimeCommands(ctx, cb)

proc copyBufferToImage(ctx: VulkanContext, buffer: VkBuffer, image: VkImage, w, h: int) =
  ## Copies pixel data from a staging buffer into an image.
  let cb = beginSingleTimeCommands(ctx)
  var region = VkBufferImageCopy(bufferOffset: VkDeviceSize(0), imageSubresource: VkImageSubresourceLayers(aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT), mipLevel: 0, baseArrayLayer: 0, layerCount: 1), imageOffset: VkOffset3D(x: 0, y: 0, z: 0), imageExtent: VkExtent3D(width: w.uint32, height: h.uint32, depth: 1))
  vkCmdCopyBufferToImage(cb, buffer, image, VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, 1, region.addr)
  endSingleTimeCommands(ctx, cb)

proc createTextureImage(ctx: VulkanContext, r: var QuadRenderer) =
  ## Loads a PNG texture into a device-local Vulkan image.
  let img = readImage(TexturePath)
  let imageSize = VkDeviceSize(img.width * img.height * 4)
  var px = newSeq[uint8](int(imageSize))
  for y in 0 ..< img.height:
    copyMem(addr px[y * img.width * 4], cast[ptr uint8](img.data[img.dataIndex(0, y)].addr), img.width * 4)
  var sb: VkBuffer; var sbm: VkDeviceMemory
  createBuffer(ctx, imageSize, VK_BUFFER_USAGE_TRANSFER_SRC_BIT, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT or VK_MEMORY_PROPERTY_HOST_COHERENT_BIT, sb, sbm)
  var mapped: pointer
  checkVk(vkMapMemory(ctx.device, sbm, VkDeviceSize(0), imageSize, VkMemoryMapFlags(0), mapped.addr), "mapStaging")
  copyMem(mapped, addr px[0], px.len)
  vkUnmapMemory(ctx.device, sbm)
  createImage(ctx, img.width, img.height, VK_FORMAT_R8G8B8A8_SRGB, VK_IMAGE_TILING_OPTIMAL, VK_IMAGE_USAGE_TRANSFER_DST_BIT or VK_IMAGE_USAGE_SAMPLED_BIT, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT, r.textureImage, r.textureImageMemory)
  transitionImageLayout(ctx, r.textureImage, VK_IMAGE_LAYOUT_UNDEFINED, VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL)
  copyBufferToImage(ctx, sb, r.textureImage, img.width, img.height)
  transitionImageLayout(ctx, r.textureImage, VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL)
  vkDestroyBuffer(ctx.device, sb, nil)
  vkFreeMemory(ctx.device, sbm, nil)

proc createTextureImageView(ctx: VulkanContext, r: var QuadRenderer) =
  ## Creates an image view for the texture.
  var ci = VkImageViewCreateInfo(sType: VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO, image: r.textureImage, viewType: VK_IMAGE_VIEW_TYPE_2D, format: VK_FORMAT_R8G8B8A8_SRGB, subresourceRange: VkImageSubresourceRange(aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT), baseMipLevel: 0, levelCount: 1, baseArrayLayer: 0, layerCount: 1))
  checkVk(vkCreateImageView(ctx.device, ci.addr, nil, r.textureImageView.addr), "createTexView")

proc createTextureSampler(ctx: VulkanContext, r: var QuadRenderer) =
  ## Creates a linear sampler for the texture.
  var si = VkSamplerCreateInfo(sType: VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO, magFilter: VK_FILTER_LINEAR, minFilter: VK_FILTER_LINEAR, mipmapMode: VK_SAMPLER_MIPMAP_MODE_LINEAR, addressModeU: VK_SAMPLER_ADDRESS_MODE_REPEAT, addressModeV: VK_SAMPLER_ADDRESS_MODE_REPEAT, addressModeW: VK_SAMPLER_ADDRESS_MODE_REPEAT, anisotropyEnable: VkBool32(VK_FALSE), maxAnisotropy: 1, compareEnable: VkBool32(VK_FALSE), compareOp: VK_COMPARE_OP_ALWAYS, borderColor: VK_BORDER_COLOR_INT_OPAQUE_BLACK, unnormalizedCoordinates: VkBool32(VK_FALSE))
  checkVk(vkCreateSampler(ctx.device, si.addr, nil, r.textureSampler.addr), "createSampler")

proc createDescriptorSetLayout(ctx: VulkanContext, r: var QuadRenderer) =
  ## Creates the descriptor set layout for the combined image sampler.
  var lb = VkDescriptorSetLayoutBinding(binding: 0, descriptorType: VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, descriptorCount: 1, stageFlags: VkShaderStageFlags(VK_SHADER_STAGE_FRAGMENT_BIT))
  var li = VkDescriptorSetLayoutCreateInfo(sType: VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO, bindingCount: 1, pBindings: lb.addr)
  checkVk(vkCreateDescriptorSetLayout(ctx.device, li.addr, nil, r.descriptorSetLayout.addr), "createDSLayout")

proc createImageViews(ctx: VulkanContext, r: var QuadRenderer) =
  ## Creates swapchain image views.
  r.imageViews.setLen(ctx.swapChainImages.len)
  for i, image in ctx.swapChainImages:
    var ci = VkImageViewCreateInfo(sType: VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO, image: image, viewType: VK_IMAGE_VIEW_TYPE_2D, format: ctx.swapChainImageFormat, subresourceRange: VkImageSubresourceRange(aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT), baseMipLevel: 0, levelCount: 1, baseArrayLayer: 0, layerCount: 1))
    checkVk(vkCreateImageView(ctx.device, ci.addr, nil, r.imageViews[i].addr), "createSwapImgView")

proc createRenderPass(ctx: VulkanContext, r: var QuadRenderer) =
  ## Creates a render pass with a single color attachment.
  var
    ca = VkAttachmentDescription(format: ctx.swapChainImageFormat, samples: VK_SAMPLE_COUNT_1_BIT, loadOp: VK_ATTACHMENT_LOAD_OP_CLEAR, storeOp: VK_ATTACHMENT_STORE_OP_STORE, stencilLoadOp: VK_ATTACHMENT_LOAD_OP_DONT_CARE, stencilStoreOp: VK_ATTACHMENT_STORE_OP_DONT_CARE, initialLayout: VK_IMAGE_LAYOUT_UNDEFINED, finalLayout: VK_IMAGE_LAYOUT_PRESENT_SRC_KHR)
    car = VkAttachmentReference(attachment: 0, layout: VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
    sp = VkSubpassDescription(pipelineBindPoint: VK_PIPELINE_BIND_POINT_GRAPHICS, colorAttachmentCount: 1, pColorAttachments: car.addr)
    dep = VkSubpassDependency(srcSubpass: VK_SUBPASS_EXTERNAL, dstSubpass: 0, srcStageMask: VkPipelineStageFlags(VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT), srcAccessMask: VkAccessFlags(0), dstStageMask: VkPipelineStageFlags(VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT), dstAccessMask: VkAccessFlags(VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT))
    rpi = VkRenderPassCreateInfo(sType: VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO, attachmentCount: 1, pAttachments: ca.addr, subpassCount: 1, pSubpasses: sp.addr, dependencyCount: 1, pDependencies: dep.addr)
  checkVk(vkCreateRenderPass(ctx.device, rpi.addr, nil, r.renderPass.addr), "createRenderPass")

proc createGraphicsPipeline(ctx: VulkanContext, r: var QuadRenderer) =
  ## Creates the textured quad graphics pipeline.
  const
    vertCode = staticRead("shaders/basic_quad.vert.spv")
    fragCode = staticRead("shaders/basic_quad.frag.spv")
  let vertMod = createShaderModule(ctx.device, vertCode)
  let fragMod = createShaderModule(ctx.device, fragCode)
  try:
    var
      stages = [
        VkPipelineShaderStageCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO, stage: VK_SHADER_STAGE_VERTEX_BIT, module: vertMod, pName: "main"),
        VkPipelineShaderStageCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO, stage: VK_SHADER_STAGE_FRAGMENT_BIT, module: fragMod, pName: "main"),
      ]
      bd = VkVertexInputBindingDescription(binding: 0, stride: uint32(sizeof(QuadVertex)), inputRate: VK_VERTEX_INPUT_RATE_VERTEX)
      ad = [
        VkVertexInputAttributeDescription(location: 0, binding: 0, format: VK_FORMAT_R32G32B32_SFLOAT, offset: 0),
        VkVertexInputAttributeDescription(location: 1, binding: 0, format: VK_FORMAT_R32G32B32_SFLOAT, offset: uint32(sizeof(array[3, float32]))),
        VkVertexInputAttributeDescription(location: 2, binding: 0, format: VK_FORMAT_R32G32_SFLOAT, offset: uint32(sizeof(array[3, float32]) * 2)),
      ]
      vi = VkPipelineVertexInputStateCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO, vertexBindingDescriptionCount: 1, pVertexBindingDescriptions: bd.addr, vertexAttributeDescriptionCount: uint32(ad.len), pVertexAttributeDescriptions: ad[0].addr)
      ia = VkPipelineInputAssemblyStateCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO, topology: VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST, primitiveRestartEnable: VkBool32(VK_FALSE))
      vp = VkViewport(x: 0, y: ctx.swapChainExtent.height.float32, width: ctx.swapChainExtent.width.float32, height: -ctx.swapChainExtent.height.float32, minDepth: 0, maxDepth: 1)
      sc = VkRect2D(offset: VkOffset2D(x: 0, y: 0), extent: ctx.swapChainExtent)
      vs = VkPipelineViewportStateCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO, viewportCount: 1, pViewports: vp.addr, scissorCount: 1, pScissors: sc.addr)
      rs = VkPipelineRasterizationStateCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO, polygonMode: VK_POLYGON_MODE_FILL, lineWidth: 1.0, cullMode: VkCullModeFlags(VK_CULL_MODE_BACK_BIT), frontFace: VK_FRONT_FACE_CLOCKWISE)
      ms = VkPipelineMultisampleStateCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO, rasterizationSamples: VK_SAMPLE_COUNT_1_BIT)
      cba = VkPipelineColorBlendAttachmentState(colorWriteMask: VkColorComponentFlags(0xF), blendEnable: VkBool32(VK_FALSE), srcColorBlendFactor: VK_BLEND_FACTOR_ONE, dstColorBlendFactor: VK_BLEND_FACTOR_ZERO, colorBlendOp: VK_BLEND_OP_ADD, srcAlphaBlendFactor: VK_BLEND_FACTOR_ONE, dstAlphaBlendFactor: VK_BLEND_FACTOR_ZERO, alphaBlendOp: VK_BLEND_OP_ADD)
      cb = VkPipelineColorBlendStateCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO, logicOp: VK_LOGIC_OP_COPY, attachmentCount: 1, pAttachments: cba.addr)
      pli = VkPipelineLayoutCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO, setLayoutCount: 1, pSetLayouts: r.descriptorSetLayout.addr)
    checkVk(vkCreatePipelineLayout(ctx.device, pli.addr, nil, r.pipelineLayout.addr), "createPipelineLayout")
    var pi = VkGraphicsPipelineCreateInfo(sType: VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO, stageCount: 2, pStages: stages[0].addr, pVertexInputState: vi.addr, pInputAssemblyState: ia.addr, pViewportState: vs.addr, pRasterizationState: rs.addr, pMultisampleState: ms.addr, pColorBlendState: cb.addr, layout: r.pipelineLayout, renderPass: r.renderPass, subpass: 0)
    checkVk(vkCreateGraphicsPipelines(ctx.device, VkPipelineCache(0), 1, pi.addr, nil, r.pipeline.addr), "createPipeline")
  finally:
    vkDestroyShaderModule(ctx.device, vertMod, nil)
    vkDestroyShaderModule(ctx.device, fragMod, nil)

proc createFramebuffers(ctx: VulkanContext, r: var QuadRenderer) =
  ## Creates framebuffers for each swapchain image view.
  r.framebuffers.setLen(r.imageViews.len)
  for i, iv in r.imageViews:
    var att = [iv]
    var fi = VkFramebufferCreateInfo(sType: VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO, renderPass: r.renderPass, attachmentCount: 1, pAttachments: att[0].addr, width: ctx.swapChainExtent.width, height: ctx.swapChainExtent.height, layers: 1)
    checkVk(vkCreateFramebuffer(ctx.device, fi.addr, nil, r.framebuffers[i].addr), "createFB")

proc createVertexBuffer(ctx: VulkanContext, r: var QuadRenderer) =
  ## Creates and fills the vertex buffer.
  let sz = VkDeviceSize(sizeof(QuadVertices))
  createBuffer(ctx, sz, VK_BUFFER_USAGE_VERTEX_BUFFER_BIT, VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT or VK_MEMORY_PROPERTY_HOST_COHERENT_BIT, r.vertexBuffer, r.vertexBufferMemory)
  var mapped: pointer
  checkVk(vkMapMemory(ctx.device, r.vertexBufferMemory, VkDeviceSize(0), sz, VkMemoryMapFlags(0), mapped.addr), "mapVB")
  copyMem(mapped, unsafeAddr QuadVertices[0], sizeof(QuadVertices))
  vkUnmapMemory(ctx.device, r.vertexBufferMemory)

proc createDescriptorResources(ctx: VulkanContext, r: var QuadRenderer) =
  ## Creates descriptor pool, allocates descriptor set, and binds the texture.
  var ps = VkDescriptorPoolSize(`type`: VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, descriptorCount: 1)
  var pi = VkDescriptorPoolCreateInfo(sType: VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO, maxSets: 1, poolSizeCount: 1, pPoolSizes: ps.addr)
  checkVk(vkCreateDescriptorPool(ctx.device, pi.addr, nil, r.descriptorPool.addr), "createDSPool")
  var sl = r.descriptorSetLayout
  var ai = VkDescriptorSetAllocateInfo(sType: VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO, descriptorPool: r.descriptorPool, descriptorSetCount: 1, pSetLayouts: sl.addr)
  checkVk(vkAllocateDescriptorSets(ctx.device, ai.addr, r.descriptorSet.addr), "allocDS")
  var ii = VkDescriptorImageInfo(sampler: r.textureSampler, imageView: r.textureImageView, imageLayout: VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL)
  var dw = VkWriteDescriptorSet(sType: VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET, dstSet: r.descriptorSet, dstBinding: 0, descriptorCount: 1, descriptorType: VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, pImageInfo: ii.addr)
  vkUpdateDescriptorSets(ctx.device, 1, dw.addr, 0, nil)

proc recordCommandBuffers(ctx: VulkanContext, r: var QuadRenderer)

proc destroySwapChainResources(ctx: VulkanContext, r: var QuadRenderer) =
  ## Destroys swapchain-dependent resources before recreation.
  if r.commandBuffers.len > 0:
    vkFreeCommandBuffers(ctx.device, ctx.commandPool, uint32(r.commandBuffers.len), r.commandBuffers[0].addr)
    r.commandBuffers.setLen(0)
  for fb in r.framebuffers: vkDestroyFramebuffer(ctx.device, fb, nil)
  r.framebuffers.setLen(0)
  for iv in r.imageViews: vkDestroyImageView(ctx.device, iv, nil)
  r.imageViews.setLen(0)
  if r.pipeline.int64 != 0: vkDestroyPipeline(ctx.device, r.pipeline, nil); r.pipeline = VkPipeline(0)
  if r.pipelineLayout.int64 != 0: vkDestroyPipelineLayout(ctx.device, r.pipelineLayout, nil); r.pipelineLayout = VkPipelineLayout(0)
  if r.renderPass.int64 != 0: vkDestroyRenderPass(ctx.device, r.renderPass, nil); r.renderPass = VkRenderPass(0)

proc recreateRenderer(ctx: var VulkanContext, r: var QuadRenderer, w, h: int) =
  ## Recreates swapchain-dependent resources after a resize.
  discard vkDeviceWaitIdle(ctx.device)
  destroySwapChainResources(ctx, r)
  recreateSwapChain(ctx, w, h)
  createImageViews(ctx, r)
  createRenderPass(ctx, r)
  createGraphicsPipeline(ctx, r)
  createFramebuffers(ctx, r)
  recordCommandBuffers(ctx, r)

proc recordCommandBuffers(ctx: VulkanContext, r: var QuadRenderer) =
  ## Pre-records command buffers for each framebuffer.
  r.commandBuffers.setLen(r.framebuffers.len)
  var ai = VkCommandBufferAllocateInfo(sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO, commandPool: ctx.commandPool, level: VK_COMMAND_BUFFER_LEVEL_PRIMARY, commandBufferCount: uint32(r.commandBuffers.len))
  checkVk(vkAllocateCommandBuffers(ctx.device, ai.addr, r.commandBuffers[0].addr), "allocCBs")
  for i in 0 ..< r.commandBuffers.len:
    var bi = VkCommandBufferBeginInfo(sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO)
    checkVk(vkBeginCommandBuffer(r.commandBuffers[i], bi.addr), "beginCB")
    var
      cv = VkClearValue(color: VkClearColorValue(float32: ClearColor))
      rpi = VkRenderPassBeginInfo(sType: VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO, renderPass: r.renderPass, framebuffer: r.framebuffers[i], renderArea: VkRect2D(offset: VkOffset2D(x: 0, y: 0), extent: ctx.swapChainExtent), clearValueCount: 1, pClearValues: cv.addr)
      vbs = [r.vertexBuffer]
      ofs = [VkDeviceSize(0)]
      ds = r.descriptorSet
    vkCmdBeginRenderPass(r.commandBuffers[i], rpi.addr, VK_SUBPASS_CONTENTS_INLINE)
    vkCmdBindPipeline(r.commandBuffers[i], VK_PIPELINE_BIND_POINT_GRAPHICS, r.pipeline)
    vkCmdBindDescriptorSets(r.commandBuffers[i], VK_PIPELINE_BIND_POINT_GRAPHICS, r.pipelineLayout, 0, 1, ds.addr, 0, nil)
    vkCmdBindVertexBuffers(r.commandBuffers[i], 0, 1, vbs[0].addr, ofs[0].addr)
    vkCmdDraw(r.commandBuffers[i], uint32(QuadVertices.len), 1, 0, 0)
    vkCmdEndRenderPass(r.commandBuffers[i])
    checkVk(vkEndCommandBuffer(r.commandBuffers[i]), "endCB")

proc initRenderer(ctx: VulkanContext, r: var QuadRenderer) =
  ## Initializes all rendering resources.
  createDescriptorSetLayout(ctx, r)
  createImageViews(ctx, r)
  createRenderPass(ctx, r)
  createGraphicsPipeline(ctx, r)
  createFramebuffers(ctx, r)
  createVertexBuffer(ctx, r)
  createTextureImage(ctx, r)
  createTextureImageView(ctx, r)
  createTextureSampler(ctx, r)
  createDescriptorResources(ctx, r)
  recordCommandBuffers(ctx, r)

proc drawFrame(ctx: var VulkanContext, r: QuadRenderer): bool =
  ## Draws a frame, returns true if swapchain needs recreation.
  let frame = ctx.currentFrame
  let fence = ctx.inFlightFences[frame]
  discard vkWaitForFences(ctx.device, 1, unsafeAddr fence, VkBool32(VK_TRUE), uint64.high)
  discard vkResetFences(ctx.device, 1, unsafeAddr fence)
  var imageIndex: uint32
  let acqResult = vkAcquireNextImageKHR(ctx.device, ctx.swapChain, uint64.high, ctx.imageAvailableSemaphores[frame], VkFence(0), imageIndex.addr)
  if requiresSwapChainRecreate(acqResult): return true
  checkVk(acqResult, "acquireImage")
  var
    waitSem = [ctx.imageAvailableSemaphores[frame]]
    waitStages: array[1, VkPipelineStageFlags] = [VkPipelineStageFlags(VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT)]
    sigSem = [ctx.renderFinishedSemaphores[frame]]
    cmdBuf = r.commandBuffers[imageIndex]
    si = VkSubmitInfo(sType: VK_STRUCTURE_TYPE_SUBMIT_INFO, waitSemaphoreCount: 1, pWaitSemaphores: waitSem[0].addr, pWaitDstStageMask: waitStages[0].addr, commandBufferCount: 1, pCommandBuffers: cmdBuf.addr, signalSemaphoreCount: 1, pSignalSemaphores: sigSem[0].addr)
  checkVk(vkQueueSubmit(ctx.graphicsQueue, 1, si.addr, fence), "submitCB")
  var
    scs = [ctx.swapChain]
    pi = VkPresentInfoKHR(sType: VK_STRUCTURE_TYPE_PRESENT_INFO_KHR, waitSemaphoreCount: 1, pWaitSemaphores: sigSem[0].addr, swapchainCount: 1, pSwapchains: scs[0].addr, pImageIndices: imageIndex.addr)
  let presResult = vkQueuePresentKHR(ctx.presentQueue, pi.addr)
  let needsRecreate = requiresSwapChainRecreate(presResult)
  if not needsRecreate: checkVk(presResult, "present")
  ctx.currentFrame = (ctx.currentFrame + 1) mod FRAME_COUNT
  needsRecreate

proc shutdown(ctx: VulkanContext, r: var QuadRenderer) =
  ## Releases all rendering resources.
  for fb in r.framebuffers: vkDestroyFramebuffer(ctx.device, fb, nil)
  for iv in r.imageViews: vkDestroyImageView(ctx.device, iv, nil)
  if r.descriptorPool.int64 != 0: vkDestroyDescriptorPool(ctx.device, r.descriptorPool, nil)
  if r.textureSampler.int64 != 0: vkDestroySampler(ctx.device, r.textureSampler, nil)
  if r.textureImageView.int64 != 0: vkDestroyImageView(ctx.device, r.textureImageView, nil)
  if r.textureImage.int64 != 0: vkDestroyImage(ctx.device, r.textureImage, nil)
  if r.textureImageMemory.int64 != 0: vkFreeMemory(ctx.device, r.textureImageMemory, nil)
  if r.vertexBuffer.int64 != 0: vkDestroyBuffer(ctx.device, r.vertexBuffer, nil)
  if r.vertexBufferMemory.int64 != 0: vkFreeMemory(ctx.device, r.vertexBufferMemory, nil)
  if r.pipeline.int64 != 0: vkDestroyPipeline(ctx.device, r.pipeline, nil)
  if r.pipelineLayout.int64 != 0: vkDestroyPipelineLayout(ctx.device, r.pipelineLayout, nil)
  if r.renderPass.int64 != 0: vkDestroyRenderPass(ctx.device, r.renderPass, nil)
  if r.descriptorSetLayout.int64 != 0: vkDestroyDescriptorSetLayout(ctx.device, r.descriptorSetLayout, nil)

when isMainModule:
  let window = newWindow("Vulkan 1.4 - Textured Quad", ivec2(Width.int32, Height.int32))
  let hwnd = window.getHWND()
  if hwnd == 0: raise newException(Exception, "Failed to acquire HWND")
  var ctx: VulkanContext
  ctx.initDevice(hwnd, Width, Height)
  var renderer: QuadRenderer
  initRenderer(ctx, renderer)
  var needsResize = false
  var frameInProgress = false
  window.onResize = proc() = needsResize = true
  window.onFrame = proc() =
    if frameInProgress: return
    frameInProgress = true
    try:
      if needsResize:
        let sz = window.size
        if sz.x > 0 and sz.y > 0:
          recreateRenderer(ctx, renderer, sz.x.int, sz.y.int)
          needsResize = false
        else: return
      if drawFrame(ctx, renderer):
        let sz = window.size
        if sz.x > 0 and sz.y > 0:
          recreateRenderer(ctx, renderer, sz.x.int, sz.y.int)
        else: needsResize = true
    finally: frameInProgress = false
  try:
    while not window.closeRequested: pollEvents()
  finally:
    shutdown(ctx, renderer)
    ctx.cleanup()

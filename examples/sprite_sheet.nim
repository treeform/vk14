import
  std/os,
  pixie,
  vmath,
  windy,
  vk14

const
  InitialWidth = 1280
  InitialHeight = 800
  SheetCells = 8
  SpriteDrawSize = 24.0'f32
  SpriteDensity = 850.0'f32
  MinSpriteCount = 96

type
  SpriteSheetError = object of CatchableError

  SpriteVertex = object
    position: array[2, float32]
    uv: array[2, float32]

  SpriteRenderer = object
    descriptorSetLayout: VkDescriptorSetLayout
    pipelineLayout: VkPipelineLayout
    renderPass: VkRenderPass
    pipeline: VkPipeline
    imageViews: seq[VkImageView]
    framebuffers: seq[VkFramebuffer]
    commandBuffers: seq[VkCommandBuffer]
    textureImage: VkImage
    textureImageMemory: VkDeviceMemory
    textureImageView: VkImageView
    textureSampler: VkSampler
    textureMipLevels: uint32
    descriptorPool: VkDescriptorPool
    descriptorSet: VkDescriptorSet
    vertexBuffer: VkBuffer
    vertexBufferMemory: VkDeviceMemory
    vertexBufferPtr: pointer
    maxVertexCount: int

  SpriteDrawer = object
    vertices: seq[SpriteVertex]
    viewportSize: IVec2

proc texturePath(): string =
  currentSourcePath().parentDir / "testSpriteSheet.png"

proc clampWindowSize(size: IVec2): IVec2 =
  ivec2(max(1'i32, size.x), max(1'i32, size.y))

proc spriteCountForSize(size: IVec2): int =
  let area = size.x.float32 * size.y.float32
  max(MinSpriteCount, int(area / SpriteDensity))

proc maxVertexCountForSize(size: IVec2): int =
  spriteCountForSize(size) * 6

proc hash32(value: uint32): uint32 =
  result = value
  result = result xor (result shr 16)
  result *= 0x7feb352d'u32
  result = result xor (result shr 15)
  result *= 0x846ca68b'u32
  result = result xor (result shr 16)

proc random01(seed: uint32): float32 =
  (hash32(seed) and 0x00ff_ffff'u32).float32 / 16_777_215.0'f32

proc randomInt(seed: uint32, limit: int): int =
  if limit <= 0:
    return 0
  int(hash32(seed) mod uint32(limit + 1))

proc uvArray(v: Vec2): array[2, float32] =
  [v.x, v.y]

proc clipArray(p: Vec2): array[2, float32] =
  [p.x, p.y]

proc screenToClip(drawer: SpriteDrawer, pos: Vec2): Vec2 =
  let
    width = max(1.0'f32, drawer.viewportSize.x.float32)
    height = max(1.0'f32, drawer.viewportSize.y.float32)
  vec2(
    (pos.x / width) * 2.0'f32 - 1.0'f32,
    1.0'f32 - (pos.y / height) * 2.0'f32
  )

proc beginDraw(drawer: var SpriteDrawer, viewportSize: IVec2) =
  drawer.viewportSize = clampWindowSize(viewportSize)
  drawer.vertices.setLen(0)

proc pushVertex(drawer: var SpriteDrawer, position, uv: Vec2) =
  drawer.vertices.add(
    SpriteVertex(
      position: clipArray(position),
      uv: uvArray(uv)
    )
  )

proc drawQuad(
    drawer: var SpriteDrawer,
    positions: array[4, Vec2],
    uvs: array[4, Vec2]
  ) =
  let clipPositions = [
    drawer.screenToClip(positions[0]),
    drawer.screenToClip(positions[1]),
    drawer.screenToClip(positions[2]),
    drawer.screenToClip(positions[3])
  ]
  drawer.pushVertex(clipPositions[0], uvs[0])
  drawer.pushVertex(clipPositions[1], uvs[1])
  drawer.pushVertex(clipPositions[2], uvs[2])
  drawer.pushVertex(clipPositions[0], uvs[0])
  drawer.pushVertex(clipPositions[2], uvs[2])
  drawer.pushVertex(clipPositions[3], uvs[3])

proc drawIcon(drawer: var SpriteDrawer, icon: IVec2, pos: Vec2) =
  let
    iconSize = vec2(SpriteDrawSize, SpriteDrawSize)
    cellSize = 1.0'f32 / SheetCells.float32
    uvMin = vec2(
      icon.x.float32 * cellSize,
      icon.y.float32 * cellSize
    )
    uvMax = uvMin + vec2(cellSize, cellSize)
    positions = [
      pos,
      pos + vec2(iconSize.x, 0.0'f32),
      pos + iconSize,
      pos + vec2(0.0'f32, iconSize.y)
    ]
    uvs = [
      uvMin,
      vec2(uvMax.x, uvMin.y),
      uvMax,
      vec2(uvMin.x, uvMax.y)
    ]
  drawer.drawQuad(positions, uvs)

proc checkVk(result: VkResult, action: string) =
  if result != VK_SUCCESS:
    raise newException(Exception, action & " failed with VkResult " & $result.int32)

proc requiresSwapChainRecreate(vkResult: VkResult): bool =
  let code = vkResult.int32
  code == VK_SUBOPTIMAL_KHR.int32 or code == VK_ERROR_OUT_OF_DATE_KHR.int32

proc findMemoryType(ctx: VulkanContext, typeFilter: uint32, properties: uint32): uint32 =
  var memProperties: VkPhysicalDeviceMemoryProperties
  vkGetPhysicalDeviceMemoryProperties(ctx.physicalDevice, memProperties.addr)
  for i in 0'u32 ..< memProperties.memoryTypeCount:
    let flags = memProperties.memoryTypes[i].propertyFlags.uint32
    if ((typeFilter shr i) and 1'u32) == 1'u32 and (flags and properties) == properties:
      return i
  raise newException(Exception, "Failed to find suitable Vulkan memory type")

proc createShaderModule(device: VkDevice, code: string): VkShaderModule =
  var createInfo = VkShaderModuleCreateInfo(
    sType: VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,
    codeSize: code.len.uint32,
    pCode: cast[ptr uint32](code[0].unsafeAddr)
  )
  checkVk(vkCreateShaderModule(device, createInfo.addr, nil, result.addr), "Creating shader module")

proc createBuffer(
  ctx: VulkanContext,
  size: VkDeviceSize,
  usage: uint32,
  properties: uint32,
  buffer: var VkBuffer,
  memory: var VkDeviceMemory
) =
  var bufferInfo = VkBufferCreateInfo(
    sType: VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
    size: size,
    usage: VkBufferUsageFlags(usage),
    sharingMode: VK_SHARING_MODE_EXCLUSIVE,
    queueFamilyIndexCount: 0,
    pQueueFamilyIndices: nil
  )
  checkVk(vkCreateBuffer(ctx.device, bufferInfo.addr, nil, buffer.addr), "Creating buffer")

  var memRequirements: VkMemoryRequirements
  vkGetBufferMemoryRequirements(ctx.device, buffer, memRequirements.addr)

  var allocInfo = VkMemoryAllocateInfo(
    sType: VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
    allocationSize: memRequirements.size,
    memoryTypeIndex: findMemoryType(ctx, memRequirements.memoryTypeBits, properties)
  )
  checkVk(vkAllocateMemory(ctx.device, allocInfo.addr, nil, memory.addr), "Allocating buffer memory")
  checkVk(vkBindBufferMemory(ctx.device, buffer, memory, VkDeviceSize(0)), "Binding buffer memory")

proc beginSingleTimeCommands(ctx: VulkanContext): VkCommandBuffer =
  var allocInfo = VkCommandBufferAllocateInfo(
    sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
    commandPool: ctx.commandPool,
    level: VK_COMMAND_BUFFER_LEVEL_PRIMARY,
    commandBufferCount: 1
  )
  checkVk(vkAllocateCommandBuffers(ctx.device, allocInfo.addr, result.addr), "Allocating single-use command buffer")
  var beginInfo = VkCommandBufferBeginInfo(
    sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
    flags: VkCommandBufferUsageFlags(VK_COMMAND_BUFFER_USAGE_ONE_TIME_SUBMIT_BIT)
  )
  checkVk(vkBeginCommandBuffer(result, beginInfo.addr), "Beginning single-use command buffer")

proc endSingleTimeCommands(ctx: VulkanContext, commandBuffer: VkCommandBuffer) =
  checkVk(vkEndCommandBuffer(commandBuffer), "Ending single-use command buffer")
  var submitInfo = VkSubmitInfo(
    sType: VK_STRUCTURE_TYPE_SUBMIT_INFO,
    commandBufferCount: 1,
    pCommandBuffers: unsafeAddr commandBuffer
  )
  checkVk(vkQueueSubmit(ctx.graphicsQueue, 1, submitInfo.addr, VkFence(0)), "Submitting single-use command buffer")
  checkVk(vkQueueWaitIdle(ctx.graphicsQueue), "Waiting for graphics queue idle")
  vkFreeCommandBuffers(ctx.device, ctx.commandPool, 1, unsafeAddr commandBuffer)

proc createImage(
  ctx: VulkanContext,
  width, height: int,
  format: VkFormat,
  mipLevels: uint32,
  usage: uint32,
  image: var VkImage,
  memory: var VkDeviceMemory
) =
  var imageInfo = VkImageCreateInfo(
    sType: VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO,
    imageType: VK_IMAGE_TYPE_2D,
    format: format,
    extent: VkExtent3D(width: uint32(width), height: uint32(height), depth: 1),
    mipLevels: mipLevels,
    arrayLayers: 1,
    samples: VK_SAMPLE_COUNT_1_BIT,
    tiling: VK_IMAGE_TILING_OPTIMAL,
    usage: VkImageUsageFlags(usage),
    sharingMode: VK_SHARING_MODE_EXCLUSIVE,
    initialLayout: VK_IMAGE_LAYOUT_UNDEFINED
  )
  checkVk(vkCreateImage(ctx.device, imageInfo.addr, nil, image.addr), "Creating image")

  var memRequirements: VkMemoryRequirements
  vkGetImageMemoryRequirements(ctx.device, image, memRequirements.addr)

  var allocInfo = VkMemoryAllocateInfo(
    sType: VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
    allocationSize: memRequirements.size,
    memoryTypeIndex: findMemoryType(ctx, memRequirements.memoryTypeBits, VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT.uint32)
  )
  checkVk(vkAllocateMemory(ctx.device, allocInfo.addr, nil, memory.addr), "Allocating image memory")
  checkVk(vkBindImageMemory(ctx.device, image, memory, VkDeviceSize(0)), "Binding image memory")

proc transitionImageLayout(
  ctx: VulkanContext,
  image: VkImage,
  oldLayout, newLayout: VkImageLayout,
  mipLevels: uint32
) =
  let commandBuffer = beginSingleTimeCommands(ctx)
  var barrier = VkImageMemoryBarrier(
    sType: VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
    oldLayout: oldLayout,
    newLayout: newLayout,
    srcQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    dstQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    image: image,
    subresourceRange: VkImageSubresourceRange(
      aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT),
      baseMipLevel: 0,
      levelCount: mipLevels,
      baseArrayLayer: 0,
      layerCount: 1
    )
  )

  var sourceStage, destinationStage: VkPipelineStageFlags
  if oldLayout == VK_IMAGE_LAYOUT_UNDEFINED and newLayout == VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL:
    barrier.srcAccessMask = VkAccessFlags(0)
    barrier.dstAccessMask = VkAccessFlags(VK_ACCESS_TRANSFER_WRITE_BIT)
    sourceStage = VkPipelineStageFlags(VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT)
    destinationStage = VkPipelineStageFlags(VK_PIPELINE_STAGE_TRANSFER_BIT)
  elif oldLayout == VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL and newLayout == VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL:
    barrier.srcAccessMask = VkAccessFlags(VK_ACCESS_TRANSFER_WRITE_BIT)
    barrier.dstAccessMask = VkAccessFlags(VK_ACCESS_SHADER_READ_BIT)
    sourceStage = VkPipelineStageFlags(VK_PIPELINE_STAGE_TRANSFER_BIT)
    destinationStage = VkPipelineStageFlags(VK_PIPELINE_STAGE_FRAGMENT_SHADER_BIT)
  else:
    raise newException(Exception, "Unsupported layout transition")

  vkCmdPipelineBarrier(commandBuffer, sourceStage, destinationStage, VkDependencyFlags(0), 0, nil, 0, nil, 1, barrier.addr)
  endSingleTimeCommands(ctx, commandBuffer)

proc buildMipChain(image: Image): seq[Image] =
  result.add(image)
  var current = image
  while current.width > 1 or current.height > 1:
    current = current.minifyBy2()
    result.add(current)

proc uploadTexture(ctx: VulkanContext, renderer: var SpriteRenderer) =
  if not fileExists(texturePath()):
    raise newException(SpriteSheetError, "Sprite sheet not found: " & texturePath())

  let image = readImage(texturePath())
  let
    mipImages = buildMipChain(image)
    texWidth = mipImages[0].width
    texHeight = mipImages[0].height
  renderer.textureMipLevels = uint32(mipImages.len)

  var
    imageSize = VkDeviceSize(0)
    mipOffsets = newSeq[VkDeviceSize](mipImages.len)
  for i, mipImage in mipImages:
    mipOffsets[i] = imageSize
    imageSize = VkDeviceSize(imageSize.uint64 + uint64(mipImage.width * mipImage.height * 4))

  var stagingBuffer: VkBuffer
  var stagingBufferMemory: VkDeviceMemory
  createBuffer(ctx, imageSize, VK_BUFFER_USAGE_TRANSFER_SRC_BIT.uint32,
    VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT.uint32 or VK_MEMORY_PROPERTY_HOST_COHERENT_BIT.uint32,
    stagingBuffer, stagingBufferMemory)

  var mapped: pointer
  checkVk(vkMapMemory(ctx.device, stagingBufferMemory, VkDeviceSize(0), imageSize, VkMemoryMapFlags(0), mapped.addr), "Mapping staging buffer")
  for i, mipImage in mipImages:
    let dst = cast[pointer](cast[uint](mapped) + uint(mipOffsets[i]))
    for y in 0 ..< mipImage.height:
      let srcIdx = mipImage.dataIndex(0, y)
      let srcPtr = cast[ptr uint8](mipImage.data[srcIdx].addr)
      copyMem(cast[pointer](cast[uint](dst) + uint(y * mipImage.width * 4)), srcPtr, mipImage.width * 4)
  vkUnmapMemory(ctx.device, stagingBufferMemory)

  createImage(ctx, texWidth, texHeight, VK_FORMAT_R8G8B8A8_SRGB, renderer.textureMipLevels,
    VK_IMAGE_USAGE_TRANSFER_DST_BIT.uint32 or VK_IMAGE_USAGE_SAMPLED_BIT.uint32,
    renderer.textureImage, renderer.textureImageMemory)

  transitionImageLayout(ctx, renderer.textureImage, VK_IMAGE_LAYOUT_UNDEFINED, VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, renderer.textureMipLevels)

  let commandBuffer = beginSingleTimeCommands(ctx)
  var regions = newSeq[VkBufferImageCopy](mipImages.len)
  for i, mipImage in mipImages:
    regions[i] = VkBufferImageCopy(
      bufferOffset: mipOffsets[i],
      bufferRowLength: 0,
      bufferImageHeight: 0,
      imageSubresource: VkImageSubresourceLayers(
        aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT),
        mipLevel: uint32(i),
        baseArrayLayer: 0,
        layerCount: 1
      ),
      imageOffset: VkOffset3D(x: 0, y: 0, z: 0),
      imageExtent: VkExtent3D(width: uint32(mipImage.width), height: uint32(mipImage.height), depth: 1)
    )
  vkCmdCopyBufferToImage(commandBuffer, stagingBuffer, renderer.textureImage,
    VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, uint32(regions.len), regions[0].addr)
  endSingleTimeCommands(ctx, commandBuffer)

  transitionImageLayout(ctx, renderer.textureImage, VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL, VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL, renderer.textureMipLevels)

  vkDestroyBuffer(ctx.device, stagingBuffer, nil)
  vkFreeMemory(ctx.device, stagingBufferMemory, nil)

  var imageViewInfo = VkImageViewCreateInfo(
    sType: VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
    image: renderer.textureImage,
    viewType: VK_IMAGE_VIEW_TYPE_2D,
    format: VK_FORMAT_R8G8B8A8_SRGB,
    components: VkComponentMapping(r: VK_COMPONENT_SWIZZLE_IDENTITY, g: VK_COMPONENT_SWIZZLE_IDENTITY, b: VK_COMPONENT_SWIZZLE_IDENTITY, a: VK_COMPONENT_SWIZZLE_IDENTITY),
    subresourceRange: VkImageSubresourceRange(aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT), baseMipLevel: 0, levelCount: renderer.textureMipLevels, baseArrayLayer: 0, layerCount: 1)
  )
  checkVk(vkCreateImageView(ctx.device, imageViewInfo.addr, nil, renderer.textureImageView.addr), "Creating texture image view")

  var samplerInfo = VkSamplerCreateInfo(
    sType: VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO,
    magFilter: VK_FILTER_LINEAR,
    minFilter: VK_FILTER_LINEAR,
    mipmapMode: VK_SAMPLER_MIPMAP_MODE_LINEAR,
    addressModeU: VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE,
    addressModeV: VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE,
    addressModeW: VK_SAMPLER_ADDRESS_MODE_CLAMP_TO_EDGE,
    mipLodBias: 0,
    anisotropyEnable: VkBool32(VK_FALSE),
    maxAnisotropy: 1,
    compareEnable: VkBool32(VK_FALSE),
    compareOp: VK_COMPARE_OP_ALWAYS,
    minLod: 0,
    maxLod: float32(renderer.textureMipLevels - 1),
    borderColor: VK_BORDER_COLOR_INT_OPAQUE_BLACK,
    unnormalizedCoordinates: VkBool32(VK_FALSE)
  )
  checkVk(vkCreateSampler(ctx.device, samplerInfo.addr, nil, renderer.textureSampler.addr), "Creating texture sampler")

proc createDescriptorResources(ctx: VulkanContext, renderer: var SpriteRenderer) =
  var layoutBinding = VkDescriptorSetLayoutBinding(
    binding: 0,
    descriptorType: VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER,
    descriptorCount: 1,
    stageFlags: VkShaderStageFlags(VK_SHADER_STAGE_FRAGMENT_BIT),
    pImmutableSamplers: nil
  )
  var layoutInfo = VkDescriptorSetLayoutCreateInfo(
    sType: VK_STRUCTURE_TYPE_DESCRIPTOR_SET_LAYOUT_CREATE_INFO,
    bindingCount: 1,
    pBindings: layoutBinding.addr
  )
  checkVk(vkCreateDescriptorSetLayout(ctx.device, layoutInfo.addr, nil, renderer.descriptorSetLayout.addr), "Creating descriptor set layout")

  var poolSize = VkDescriptorPoolSize(`type`: VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER, descriptorCount: 1)
  var poolInfo = VkDescriptorPoolCreateInfo(
    sType: VK_STRUCTURE_TYPE_DESCRIPTOR_POOL_CREATE_INFO,
    maxSets: 1,
    poolSizeCount: 1,
    pPoolSizes: poolSize.addr
  )
  checkVk(vkCreateDescriptorPool(ctx.device, poolInfo.addr, nil, renderer.descriptorPool.addr), "Creating descriptor pool")

  var setLayout = renderer.descriptorSetLayout
  var allocInfo = VkDescriptorSetAllocateInfo(
    sType: VK_STRUCTURE_TYPE_DESCRIPTOR_SET_ALLOCATE_INFO,
    descriptorPool: renderer.descriptorPool,
    descriptorSetCount: 1,
    pSetLayouts: setLayout.addr
  )
  checkVk(vkAllocateDescriptorSets(ctx.device, allocInfo.addr, renderer.descriptorSet.addr), "Allocating descriptor set")

  var imageInfo = VkDescriptorImageInfo(
    sampler: renderer.textureSampler,
    imageView: renderer.textureImageView,
    imageLayout: VK_IMAGE_LAYOUT_SHADER_READ_ONLY_OPTIMAL
  )
  var descriptorWrite = VkWriteDescriptorSet(
    sType: VK_STRUCTURE_TYPE_WRITE_DESCRIPTOR_SET,
    dstSet: renderer.descriptorSet,
    dstBinding: 0,
    dstArrayElement: 0,
    descriptorCount: 1,
    descriptorType: VK_DESCRIPTOR_TYPE_COMBINED_IMAGE_SAMPLER,
    pImageInfo: imageInfo.addr,
    pBufferInfo: nil,
    pTexelBufferView: nil
  )
  vkUpdateDescriptorSets(ctx.device, 1, descriptorWrite.addr, 0, nil)

proc createSwapChainImageViews(ctx: VulkanContext, renderer: var SpriteRenderer) =
  renderer.imageViews.setLen(ctx.swapChainImages.len)
  for i, image in ctx.swapChainImages:
    var createInfo = VkImageViewCreateInfo(
      sType: VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
      image: image,
      viewType: VK_IMAGE_VIEW_TYPE_2D,
      format: ctx.swapChainImageFormat,
      components: VkComponentMapping(r: VK_COMPONENT_SWIZZLE_IDENTITY, g: VK_COMPONENT_SWIZZLE_IDENTITY, b: VK_COMPONENT_SWIZZLE_IDENTITY, a: VK_COMPONENT_SWIZZLE_IDENTITY),
      subresourceRange: VkImageSubresourceRange(aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT), baseMipLevel: 0, levelCount: 1, baseArrayLayer: 0, layerCount: 1)
    )
    checkVk(vkCreateImageView(ctx.device, createInfo.addr, nil, renderer.imageViews[i].addr), "Creating swapchain image view")

proc createRenderPass(ctx: VulkanContext, renderer: var SpriteRenderer) =
  var
    colorAttachment = VkAttachmentDescription(
      format: ctx.swapChainImageFormat,
      samples: VK_SAMPLE_COUNT_1_BIT,
      loadOp: VK_ATTACHMENT_LOAD_OP_CLEAR,
      storeOp: VK_ATTACHMENT_STORE_OP_STORE,
      stencilLoadOp: VK_ATTACHMENT_LOAD_OP_DONT_CARE,
      stencilStoreOp: VK_ATTACHMENT_STORE_OP_DONT_CARE,
      initialLayout: VK_IMAGE_LAYOUT_UNDEFINED,
      finalLayout: VK_IMAGE_LAYOUT_PRESENT_SRC_KHR
    )
    colorAttachmentRef = VkAttachmentReference(attachment: 0, layout: VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
    subpass = VkSubpassDescription(
      pipelineBindPoint: VK_PIPELINE_BIND_POINT_GRAPHICS,
      colorAttachmentCount: 1,
      pColorAttachments: colorAttachmentRef.addr
    )
    dependency = VkSubpassDependency(
      srcSubpass: VK_SUBPASS_EXTERNAL,
      dstSubpass: 0,
      srcStageMask: VkPipelineStageFlags(VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT),
      srcAccessMask: VkAccessFlags(0),
      dstStageMask: VkPipelineStageFlags(VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT),
      dstAccessMask: VkAccessFlags(VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT)
    )
    renderPassInfo = VkRenderPassCreateInfo(
      sType: VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO,
      attachmentCount: 1,
      pAttachments: colorAttachment.addr,
      subpassCount: 1,
      pSubpasses: subpass.addr,
      dependencyCount: 1,
      pDependencies: dependency.addr
    )
  checkVk(vkCreateRenderPass(ctx.device, renderPassInfo.addr, nil, renderer.renderPass.addr), "Creating render pass")

proc createGraphicsPipeline(ctx: VulkanContext, renderer: var SpriteRenderer) =
  const
    vertShaderCode = staticRead("shaders/sprite_sheet.vert.spv")
    fragShaderCode = staticRead("shaders/sprite_sheet.frag.spv")
  let
    vertShaderModule = createShaderModule(ctx.device, vertShaderCode)
    fragShaderModule = createShaderModule(ctx.device, fragShaderCode)
  try:
    var
      vertShaderStageInfo = VkPipelineShaderStageCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO, stage: VK_SHADER_STAGE_VERTEX_BIT, module: vertShaderModule, pName: "main")
      fragShaderStageInfo = VkPipelineShaderStageCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO, stage: VK_SHADER_STAGE_FRAGMENT_BIT, module: fragShaderModule, pName: "main")
      shaderStages = [vertShaderStageInfo, fragShaderStageInfo]
      bindingDescription = VkVertexInputBindingDescription(binding: 0, stride: uint32(sizeof(SpriteVertex)), inputRate: VK_VERTEX_INPUT_RATE_VERTEX)
      attributeDescriptions = [
        VkVertexInputAttributeDescription(location: 0, binding: 0, format: VK_FORMAT_R32G32_SFLOAT, offset: 0),
        VkVertexInputAttributeDescription(location: 1, binding: 0, format: VK_FORMAT_R32G32_SFLOAT, offset: uint32(sizeof(array[2, float32])))
      ]
      vertexInputInfo = VkPipelineVertexInputStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO,
        vertexBindingDescriptionCount: 1,
        pVertexBindingDescriptions: bindingDescription.addr,
        vertexAttributeDescriptionCount: uint32(attributeDescriptions.len),
        pVertexAttributeDescriptions: attributeDescriptions[0].addr
      )
      inputAssembly = VkPipelineInputAssemblyStateCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO, topology: VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST, primitiveRestartEnable: VkBool32(VK_FALSE))
      viewport = VkViewport(x: 0, y: 0, width: ctx.swapChainExtent.width.float32, height: ctx.swapChainExtent.height.float32, minDepth: 0, maxDepth: 1)
      scissor = VkRect2D(offset: VkOffset2D(x: 0, y: 0), extent: ctx.swapChainExtent)
      viewportState = VkPipelineViewportStateCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO, viewportCount: 1, pViewports: viewport.addr, scissorCount: 1, pScissors: scissor.addr)
      rasterizer = VkPipelineRasterizationStateCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO, depthClampEnable: VkBool32(VK_FALSE), rasterizerDiscardEnable: VkBool32(VK_FALSE), polygonMode: VK_POLYGON_MODE_FILL, lineWidth: 1.0, cullMode: VkCullModeFlags(VK_CULL_MODE_NONE), frontFace: VK_FRONT_FACE_CLOCKWISE, depthBiasEnable: VkBool32(VK_FALSE))
      multisampling = VkPipelineMultisampleStateCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO, sampleShadingEnable: VkBool32(VK_FALSE), rasterizationSamples: VK_SAMPLE_COUNT_1_BIT)
      colorBlendAttachment = VkPipelineColorBlendAttachmentState(
        colorWriteMask: VkColorComponentFlags(0x0000000F),
        blendEnable: VkBool32(VK_TRUE),
        srcColorBlendFactor: VK_BLEND_FACTOR_SRC_ALPHA,
        dstColorBlendFactor: VK_BLEND_FACTOR_ONE_MINUS_SRC_ALPHA,
        colorBlendOp: VK_BLEND_OP_ADD,
        srcAlphaBlendFactor: VK_BLEND_FACTOR_ONE,
        dstAlphaBlendFactor: VK_BLEND_FACTOR_ZERO,
        alphaBlendOp: VK_BLEND_OP_ADD
      )
      colorBlending = VkPipelineColorBlendStateCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO, logicOpEnable: VkBool32(VK_FALSE), logicOp: VK_LOGIC_OP_COPY, attachmentCount: 1, pAttachments: colorBlendAttachment.addr, blendConstants: [0.0'f32, 0.0'f32, 0.0'f32, 0.0'f32])
      pipelineLayoutInfo = VkPipelineLayoutCreateInfo(sType: VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO, setLayoutCount: 1, pSetLayouts: renderer.descriptorSetLayout.addr, pushConstantRangeCount: 0, pPushConstantRanges: nil)

    checkVk(vkCreatePipelineLayout(ctx.device, pipelineLayoutInfo.addr, nil, renderer.pipelineLayout.addr), "Creating pipeline layout")

    var pipelineInfo = VkGraphicsPipelineCreateInfo(
      sType: VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO,
      stageCount: uint32(shaderStages.len),
      pStages: shaderStages[0].addr,
      pVertexInputState: vertexInputInfo.addr,
      pInputAssemblyState: inputAssembly.addr,
      pViewportState: viewportState.addr,
      pRasterizationState: rasterizer.addr,
      pMultisampleState: multisampling.addr,
      pDepthStencilState: nil,
      pColorBlendState: colorBlending.addr,
      pDynamicState: nil,
      layout: renderer.pipelineLayout,
      renderPass: renderer.renderPass,
      subpass: 0
    )
    checkVk(vkCreateGraphicsPipelines(ctx.device, VkPipelineCache(0), 1, pipelineInfo.addr, nil, renderer.pipeline.addr), "Creating graphics pipeline")
  finally:
    vkDestroyShaderModule(ctx.device, vertShaderModule, nil)
    vkDestroyShaderModule(ctx.device, fragShaderModule, nil)

proc createFramebuffers(ctx: VulkanContext, renderer: var SpriteRenderer) =
  renderer.framebuffers.setLen(renderer.imageViews.len)
  for i, imageView in renderer.imageViews:
    var attachments = [imageView]
    var framebufferInfo = VkFramebufferCreateInfo(
      sType: VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO,
      renderPass: renderer.renderPass,
      attachmentCount: 1,
      pAttachments: attachments[0].addr,
      width: ctx.swapChainExtent.width,
      height: ctx.swapChainExtent.height,
      layers: 1
    )
    checkVk(vkCreateFramebuffer(ctx.device, framebufferInfo.addr, nil, renderer.framebuffers[i].addr), "Creating framebuffer")

proc createVertexBuffer(ctx: VulkanContext, renderer: var SpriteRenderer, maxVertexCount: int) =
  if renderer.vertexBuffer.int64 != 0:
    if renderer.vertexBufferPtr != nil:
      vkUnmapMemory(ctx.device, renderer.vertexBufferMemory)
      renderer.vertexBufferPtr = nil
    vkDestroyBuffer(ctx.device, renderer.vertexBuffer, nil)
    vkFreeMemory(ctx.device, renderer.vertexBufferMemory, nil)
    renderer.vertexBuffer = VkBuffer(0)
    renderer.vertexBufferMemory = VkDeviceMemory(0)

  let bufferSize = VkDeviceSize(maxVertexCount * sizeof(SpriteVertex))
  createBuffer(ctx, bufferSize, VK_BUFFER_USAGE_VERTEX_BUFFER_BIT.uint32,
    VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT.uint32 or VK_MEMORY_PROPERTY_HOST_COHERENT_BIT.uint32,
    renderer.vertexBuffer, renderer.vertexBufferMemory)

  checkVk(vkMapMemory(ctx.device, renderer.vertexBufferMemory, VkDeviceSize(0), bufferSize, VkMemoryMapFlags(0), renderer.vertexBufferPtr.addr), "Mapping dynamic vertex buffer")
  renderer.maxVertexCount = maxVertexCount

proc allocateCommandBuffers(ctx: VulkanContext, renderer: var SpriteRenderer) =
  renderer.commandBuffers.setLen(ctx.swapChainImages.len)
  var allocInfo = VkCommandBufferAllocateInfo(
    sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
    commandPool: ctx.commandPool,
    level: VK_COMMAND_BUFFER_LEVEL_PRIMARY,
    commandBufferCount: uint32(renderer.commandBuffers.len)
  )
  checkVk(vkAllocateCommandBuffers(ctx.device, allocInfo.addr, renderer.commandBuffers[0].addr), "Allocating sprite command buffers")

proc destroySwapChainResources(ctx: VulkanContext, renderer: var SpriteRenderer) =
  if renderer.commandBuffers.len > 0:
    vkFreeCommandBuffers(ctx.device, ctx.commandPool, uint32(renderer.commandBuffers.len), renderer.commandBuffers[0].addr)
    renderer.commandBuffers.setLen(0)
  for framebuffer in renderer.framebuffers:
    vkDestroyFramebuffer(ctx.device, framebuffer, nil)
  renderer.framebuffers.setLen(0)
  for imageView in renderer.imageViews:
    vkDestroyImageView(ctx.device, imageView, nil)
  renderer.imageViews.setLen(0)
  if renderer.pipeline.int64 != 0:
    vkDestroyPipeline(ctx.device, renderer.pipeline, nil)
    renderer.pipeline = VkPipeline(0)
  if renderer.pipelineLayout.int64 != 0:
    vkDestroyPipelineLayout(ctx.device, renderer.pipelineLayout, nil)
    renderer.pipelineLayout = VkPipelineLayout(0)
  if renderer.renderPass.int64 != 0:
    vkDestroyRenderPass(ctx.device, renderer.renderPass, nil)
    renderer.renderPass = VkRenderPass(0)

proc recreateSwapChainResources(ctx: var VulkanContext, renderer: var SpriteRenderer, width, height: int) =
  discard vkDeviceWaitIdle(ctx.device)
  destroySwapChainResources(ctx, renderer)
  recreateSwapChain(ctx, width, height)
  createSwapChainImageViews(ctx, renderer)
  createRenderPass(ctx, renderer)
  createGraphicsPipeline(ctx, renderer)
  createFramebuffers(ctx, renderer)
  allocateCommandBuffers(ctx, renderer)

proc initRenderer(ctx: VulkanContext, renderer: var SpriteRenderer, maxVertexCount: int) =
  uploadTexture(ctx, renderer)
  createDescriptorResources(ctx, renderer)
  createSwapChainImageViews(ctx, renderer)
  createRenderPass(ctx, renderer)
  createGraphicsPipeline(ctx, renderer)
  createFramebuffers(ctx, renderer)
  createVertexBuffer(ctx, renderer, maxVertexCount)
  allocateCommandBuffers(ctx, renderer)

proc endDraw(
    drawer: SpriteDrawer,
    ctx: var VulkanContext,
    renderer: SpriteRenderer,
    clearColor: array[4, float32],
    imageIndex: uint32
  ) =
  if drawer.vertices.len > renderer.maxVertexCount:
    raise newException(SpriteSheetError, "Sprite batch exceeded dynamic vertex buffer capacity")

  if drawer.vertices.len > 0:
    copyMem(renderer.vertexBufferPtr, unsafeAddr drawer.vertices[0], drawer.vertices.len * sizeof(SpriteVertex))

  let commandBuffer = renderer.commandBuffers[imageIndex]
  discard vkResetCommandBuffer(commandBuffer, VkCommandBufferResetFlags(0))
  var beginInfo = VkCommandBufferBeginInfo(sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO)
  checkVk(vkBeginCommandBuffer(commandBuffer, beginInfo.addr), "Beginning sprite command buffer")

  var clearValue = VkClearValue(color: VkClearColorValue(float32: clearColor))
  var renderPassInfo = VkRenderPassBeginInfo(
    sType: VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO,
    renderPass: renderer.renderPass,
    framebuffer: renderer.framebuffers[imageIndex],
    renderArea: VkRect2D(offset: VkOffset2D(x: 0, y: 0), extent: ctx.swapChainExtent),
    clearValueCount: 1,
    pClearValues: clearValue.addr
  )
  var vertexBuffers = [renderer.vertexBuffer]
  var offsets = [VkDeviceSize(0)]
  var descriptorSet = renderer.descriptorSet

  vkCmdBeginRenderPass(commandBuffer, renderPassInfo.addr, VK_SUBPASS_CONTENTS_INLINE)
  vkCmdBindPipeline(commandBuffer, VK_PIPELINE_BIND_POINT_GRAPHICS, renderer.pipeline)
  vkCmdBindDescriptorSets(commandBuffer, VK_PIPELINE_BIND_POINT_GRAPHICS, renderer.pipelineLayout, 0, 1, descriptorSet.addr, 0, nil)
  vkCmdBindVertexBuffers(commandBuffer, 0, 1, vertexBuffers[0].addr, offsets[0].addr)
  if drawer.vertices.len > 0:
    vkCmdDraw(commandBuffer, uint32(drawer.vertices.len), 1, 0, 0)
  vkCmdEndRenderPass(commandBuffer)
  checkVk(vkEndCommandBuffer(commandBuffer), "Ending sprite command buffer")

proc drawFrame(ctx: var VulkanContext, renderer: var SpriteRenderer, drawer: SpriteDrawer, clearColor: array[4, float32]): bool =
  let frame = ctx.currentFrame
  let fence = ctx.inFlightFences[frame]
  discard vkWaitForFences(ctx.device, 1, unsafeAddr fence, VkBool32(VK_TRUE), uint64.high)
  discard vkResetFences(ctx.device, 1, unsafeAddr fence)

  var imageIndex: uint32
  let acquireResult = vkAcquireNextImageKHR(ctx.device, ctx.swapChain, uint64.high, ctx.imageAvailableSemaphores[frame], VkFence(0), imageIndex.addr)
  if requiresSwapChainRecreate(acquireResult):
    return true
  checkVk(acquireResult, "Acquiring next swapchain image")

  endDraw(drawer, ctx, renderer, clearColor, imageIndex)

  var
    waitSemaphores = [ctx.imageAvailableSemaphores[frame]]
    waitStages: array[1, VkPipelineStageFlags] = [VkPipelineStageFlags(VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT)]
    signalSemaphores = [ctx.renderFinishedSemaphores[frame]]
    commandBuffer = renderer.commandBuffers[imageIndex]
    submitInfo = VkSubmitInfo(
      sType: VK_STRUCTURE_TYPE_SUBMIT_INFO,
      waitSemaphoreCount: 1,
      pWaitSemaphores: waitSemaphores[0].addr,
      pWaitDstStageMask: waitStages[0].addr,
      commandBufferCount: 1,
      pCommandBuffers: commandBuffer.addr,
      signalSemaphoreCount: 1,
      pSignalSemaphores: signalSemaphores[0].addr
    )
  checkVk(vkQueueSubmit(ctx.graphicsQueue, 1, submitInfo.addr, fence), "Submitting sprite command buffer")

  var
    swapChains = [ctx.swapChain]
    presentInfo = VkPresentInfoKHR(
      sType: VK_STRUCTURE_TYPE_PRESENT_INFO_KHR,
      waitSemaphoreCount: 1,
      pWaitSemaphores: signalSemaphores[0].addr,
      swapchainCount: 1,
      pSwapchains: swapChains[0].addr,
      pImageIndices: imageIndex.addr
    )
  let presentResult = vkQueuePresentKHR(ctx.presentQueue, presentInfo.addr)
  let needsRecreate = requiresSwapChainRecreate(presentResult)
  if not needsRecreate:
    checkVk(presentResult, "Presenting sprite frame")
  ctx.currentFrame = (ctx.currentFrame + 1) mod FRAME_COUNT
  needsRecreate

proc ensureVertexCapacity(ctx: VulkanContext, renderer: var SpriteRenderer, windowSize: IVec2) =
  let size = clampWindowSize(windowSize)
  let requiredVertexCount = maxVertexCountForSize(size)
  if requiredVertexCount > renderer.maxVertexCount:
    discard vkDeviceWaitIdle(ctx.device)
    createVertexBuffer(ctx, renderer, requiredVertexCount)

proc shutdown(ctx: VulkanContext, renderer: var SpriteRenderer) =
  destroySwapChainResources(ctx, renderer)
  if renderer.vertexBuffer.int64 != 0:
    if renderer.vertexBufferPtr != nil:
      vkUnmapMemory(ctx.device, renderer.vertexBufferMemory)
      renderer.vertexBufferPtr = nil
    vkDestroyBuffer(ctx.device, renderer.vertexBuffer, nil)
    vkFreeMemory(ctx.device, renderer.vertexBufferMemory, nil)
  if renderer.descriptorPool.int64 != 0:
    vkDestroyDescriptorPool(ctx.device, renderer.descriptorPool, nil)
  if renderer.textureSampler.int64 != 0:
    vkDestroySampler(ctx.device, renderer.textureSampler, nil)
  if renderer.textureImageView.int64 != 0:
    vkDestroyImageView(ctx.device, renderer.textureImageView, nil)
  if renderer.textureImage.int64 != 0:
    vkDestroyImage(ctx.device, renderer.textureImage, nil)
  if renderer.textureImageMemory.int64 != 0:
    vkFreeMemory(ctx.device, renderer.textureImageMemory, nil)
  if renderer.descriptorSetLayout.int64 != 0:
    vkDestroyDescriptorSetLayout(ctx.device, renderer.descriptorSetLayout, nil)

when isMainModule:
  let window = newWindow("Vulkan 1.4 - Sprite Sheet", ivec2(InitialWidth.int32, InitialHeight.int32))

  let hwnd = window.getHWND()
  if hwnd == 0:
    raise newException(Exception, "Failed to acquire HWND from window")

  var
    ctx: VulkanContext
    renderer: SpriteRenderer
    drawer: SpriteDrawer
    renderSize = clampWindowSize(window.size)
    pendingResize = false
  let clearColor = [0.08'f32, 0.08'f32, 0.1'f32, 1.0'f32]

  ctx.initDevice(hwnd, renderSize.x.int, renderSize.y.int)
  initRenderer(ctx, renderer, maxVertexCountForSize(renderSize))

  window.onResize = proc() =
    pendingResize = true

  window.onFrame = proc() =
    let currentSize = clampWindowSize(window.size)
    if pendingResize or currentSize != renderSize:
      renderSize = currentSize
      pendingResize = false
      recreateSwapChainResources(ctx, renderer, renderSize.x.int, renderSize.y.int)
      ensureVertexCapacity(ctx, renderer, renderSize)

    drawer.beginDraw(renderSize)
    let
      spriteCount = spriteCountForSize(renderSize)
      maxX = max(0.0'f32, renderSize.x.float32 - SpriteDrawSize)
      maxY = max(0.0'f32, renderSize.y.float32 - SpriteDrawSize)
      baseSeed =
        uint32(renderSize.x) xor
        (uint32(renderSize.y) shl 16) xor
        0x1357_9bdf'u32

    for i in 0 ..< spriteCount:
      let
        seed = baseSeed + uint32(i) * 0x9e37_79b9'u32
        pos = vec2(
          random01(seed xor 0x68bc_21ebu32) * maxX,
          random01(seed xor 0x02e5_be93u32) * maxY
        )
        icon = ivec2(
          randomInt(seed xor 0xa5a5_1021'u32, SheetCells - 1).int32,
          randomInt(seed xor 0x1f12_4bb5'u32, SheetCells - 1).int32
        )
      drawer.drawIcon(icon, pos)

    if drawFrame(ctx, renderer, drawer, clearColor):
      renderSize = clampWindowSize(window.size)
      pendingResize = false
      recreateSwapChainResources(ctx, renderer, renderSize.x.int, renderSize.y.int)
      ensureVertexCapacity(ctx, renderer, renderSize)

  try:
    while not window.closeRequested:
      pollEvents()
  finally:
    shutdown(ctx, renderer)
    ctx.cleanup()

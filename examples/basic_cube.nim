import
  std/os,
  pixie,
  vmath,
  windy,
  vk14

const
  Width = 1280
  Height = 800
  TexturePath = currentSourcePath().parentDir / "testTexture.png"
  PreferredMsaaSamples = 4'u32
  ClearColor = [0.05'f32, 0.05'f32, 0.1'f32, 1.0'f32]

type
  CubeVertex = object
    position: array[3, float32]
    uv: array[2, float32]

  CubeRenderer = object
    descriptorSetLayout: VkDescriptorSetLayout
    pipelineLayout: VkPipelineLayout
    pipeline: VkPipeline
    sampleCount: VkSampleCountFlagBits
    imageViews: seq[VkImageView]
    colorImages: seq[VkImage]
    colorImageMemories: seq[VkDeviceMemory]
    colorImageViews: seq[VkImageView]
    commandBuffers: seq[VkCommandBuffer]
    vertexBuffer: VkBuffer
    vertexBufferMemory: VkDeviceMemory
    textureImage: VkImage
    textureImageMemory: VkDeviceMemory
    textureImageView: VkImageView
    textureSampler: VkSampler
    textureMipLevels: uint32
    descriptorPool: VkDescriptorPool
    descriptorSet: VkDescriptorSet
    depthImages: seq[VkImage]
    depthImageMemories: seq[VkDeviceMemory]
    depthImageViews: seq[VkImageView]
    transform: array[16, float32]
    frameCounter: uint64

const
  CubeVertices = [
    CubeVertex(position: [-1.0'f32, 1.0'f32, 1.0'f32], uv: [0.0'f32, 0.0'f32]),
    CubeVertex(position: [1.0'f32, -1.0'f32, 1.0'f32], uv: [1.0'f32, 1.0'f32]),
    CubeVertex(position: [1.0'f32, 1.0'f32, 1.0'f32], uv: [1.0'f32, 0.0'f32]),
    CubeVertex(position: [-1.0'f32, 1.0'f32, 1.0'f32], uv: [0.0'f32, 0.0'f32]),
    CubeVertex(position: [-1.0'f32, -1.0'f32, 1.0'f32], uv: [0.0'f32, 1.0'f32]),
    CubeVertex(position: [1.0'f32, -1.0'f32, 1.0'f32], uv: [1.0'f32, 1.0'f32]),

    CubeVertex(position: [1.0'f32, 1.0'f32, -1.0'f32], uv: [0.0'f32, 0.0'f32]),
    CubeVertex(position: [-1.0'f32, -1.0'f32, -1.0'f32], uv: [1.0'f32, 1.0'f32]),
    CubeVertex(position: [-1.0'f32, 1.0'f32, -1.0'f32], uv: [1.0'f32, 0.0'f32]),
    CubeVertex(position: [1.0'f32, 1.0'f32, -1.0'f32], uv: [0.0'f32, 0.0'f32]),
    CubeVertex(position: [1.0'f32, -1.0'f32, -1.0'f32], uv: [0.0'f32, 1.0'f32]),
    CubeVertex(position: [-1.0'f32, -1.0'f32, -1.0'f32], uv: [1.0'f32, 1.0'f32]),

    CubeVertex(position: [-1.0'f32, 1.0'f32, -1.0'f32], uv: [0.0'f32, 0.0'f32]),
    CubeVertex(position: [-1.0'f32, -1.0'f32, 1.0'f32], uv: [1.0'f32, 1.0'f32]),
    CubeVertex(position: [-1.0'f32, 1.0'f32, 1.0'f32], uv: [1.0'f32, 0.0'f32]),
    CubeVertex(position: [-1.0'f32, 1.0'f32, -1.0'f32], uv: [0.0'f32, 0.0'f32]),
    CubeVertex(position: [-1.0'f32, -1.0'f32, -1.0'f32], uv: [0.0'f32, 1.0'f32]),
    CubeVertex(position: [-1.0'f32, -1.0'f32, 1.0'f32], uv: [1.0'f32, 1.0'f32]),

    CubeVertex(position: [1.0'f32, 1.0'f32, 1.0'f32], uv: [0.0'f32, 0.0'f32]),
    CubeVertex(position: [1.0'f32, -1.0'f32, -1.0'f32], uv: [1.0'f32, 1.0'f32]),
    CubeVertex(position: [1.0'f32, 1.0'f32, -1.0'f32], uv: [1.0'f32, 0.0'f32]),
    CubeVertex(position: [1.0'f32, 1.0'f32, 1.0'f32], uv: [0.0'f32, 0.0'f32]),
    CubeVertex(position: [1.0'f32, -1.0'f32, 1.0'f32], uv: [0.0'f32, 1.0'f32]),
    CubeVertex(position: [1.0'f32, -1.0'f32, -1.0'f32], uv: [1.0'f32, 1.0'f32]),

    CubeVertex(position: [-1.0'f32, 1.0'f32, -1.0'f32], uv: [0.0'f32, 0.0'f32]),
    CubeVertex(position: [1.0'f32, 1.0'f32, 1.0'f32], uv: [1.0'f32, 1.0'f32]),
    CubeVertex(position: [1.0'f32, 1.0'f32, -1.0'f32], uv: [1.0'f32, 0.0'f32]),
    CubeVertex(position: [-1.0'f32, 1.0'f32, -1.0'f32], uv: [0.0'f32, 0.0'f32]),
    CubeVertex(position: [-1.0'f32, 1.0'f32, 1.0'f32], uv: [0.0'f32, 1.0'f32]),
    CubeVertex(position: [1.0'f32, 1.0'f32, 1.0'f32], uv: [1.0'f32, 1.0'f32]),

    CubeVertex(position: [-1.0'f32, -1.0'f32, 1.0'f32], uv: [0.0'f32, 0.0'f32]),
    CubeVertex(position: [1.0'f32, -1.0'f32, -1.0'f32], uv: [1.0'f32, 1.0'f32]),
    CubeVertex(position: [1.0'f32, -1.0'f32, 1.0'f32], uv: [1.0'f32, 0.0'f32]),
    CubeVertex(position: [-1.0'f32, -1.0'f32, 1.0'f32], uv: [0.0'f32, 0.0'f32]),
    CubeVertex(position: [-1.0'f32, -1.0'f32, -1.0'f32], uv: [0.0'f32, 1.0'f32]),
    CubeVertex(position: [1.0'f32, -1.0'f32, -1.0'f32], uv: [1.0'f32, 1.0'f32])
  ]

proc checkVk(result: VkResult, action: string) =
  if result != VK_SUCCESS:
    raise newException(Exception, action & " failed with VkResult " & $result.int32)

proc requiresSwapChainRecreate(vkResult: VkResult): bool =
  ## Returns true if the swapchain is out of date or suboptimal.
  let code = vkResult.int32
  code == VK_SUBOPTIMAL_KHR.int32 or
    code == VK_ERROR_OUT_OF_DATE_KHR.int32

proc identityMatrix(): Mat4 =
  gmat4[float32](
    1, 0, 0, 0,
    0, 1, 0, 0,
    0, 0, 1, 0,
    0, 0, 0, 1
  )

proc perspectiveDx(fovY, aspect, nearPlane, farPlane: float32): Mat4 =
  let
    h = 1.0'f32 / tan(fovY * 0.5'f32)
    w = h / aspect
    depth = farPlane - nearPlane
  result[0, 0] = w
  result[0, 1] = 0
  result[0, 2] = 0
  result[0, 3] = 0
  result[1, 0] = 0
  result[1, 1] = h
  result[1, 2] = 0
  result[1, 3] = 0
  result[2, 0] = 0
  result[2, 1] = 0
  result[2, 2] = farPlane / depth
  result[2, 3] = 1
  result[3, 0] = 0
  result[3, 1] = 0
  result[3, 2] = -(nearPlane * farPlane) / depth
  result[3, 3] = 0

proc mat4ToArray(matrix: Mat4): array[16, float32] =
  var index = 0
  for i in 0 ..< 4:
    for j in 0 ..< 4:
      result[index] = matrix[i, j]
      inc index

proc updateTransform(renderer: var CubeRenderer, aspect: float32) =
  let
    time = renderer.frameCounter.float32 / 60.0'f32
    model =
      translate(vec3(0.0'f32, 0.0'f32, 5.0'f32)) *
      rotateY(time * 0.7'f32) *
      rotateX(time * 0.35'f32)
    view = identityMatrix()
    proj = perspectiveDx(60.0'f32.toRadians, aspect, 0.1'f32, 100.0'f32)
    mvp = proj * view * model
  renderer.transform = mat4ToArray(mvp)

proc buildMipChain(image: Image): seq[Image] =
  result.add(image)
  var current = image
  while current.width > 1 or current.height > 1:
    current = current.minifyBy2()
    result.add(current)

proc findMemoryType(ctx: VulkanContext, typeFilter: uint32, properties: uint32): uint32 =
  var memProperties: VkPhysicalDeviceMemoryProperties
  vkGetPhysicalDeviceMemoryProperties(ctx.physicalDevice, memProperties.addr)
  for i in 0'u32 ..< memProperties.memoryTypeCount:
    let flags = memProperties.memoryTypes[i].propertyFlags.uint32
    if ((typeFilter shr i) and 1'u32) == 1'u32 and (flags and properties) == properties:
      return i
  raise newException(Exception, "Failed to find suitable Vulkan memory type")

proc chooseMsaaSampleCount(ctx: VulkanContext): VkSampleCountFlagBits =
  var props: VkPhysicalDeviceProperties
  vkGetPhysicalDeviceProperties(ctx.physicalDevice, props.addr)
  let counts = props.limits.framebufferColorSampleCounts.uint32 and
    props.limits.framebufferDepthSampleCounts.uint32

  if PreferredMsaaSamples >= 4 and (counts and VK_SAMPLE_COUNT_4_BIT.uint32) != 0:
    return VK_SAMPLE_COUNT_4_BIT
  if (counts and VK_SAMPLE_COUNT_2_BIT.uint32) != 0:
    return VK_SAMPLE_COUNT_2_BIT
  VK_SAMPLE_COUNT_1_BIT

proc msaaEnabled(renderer: CubeRenderer): bool =
  renderer.sampleCount != VK_SAMPLE_COUNT_1_BIT

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
  var
    commandBufferInfo = VkCommandBufferSubmitInfo(
      sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO,
      commandBuffer: commandBuffer,
      deviceMask: 0
    )
    submitInfo = VkSubmitInfo2(
      sType: VK_STRUCTURE_TYPE_SUBMIT_INFO_2,
      commandBufferInfoCount: 1,
      pCommandBufferInfos: commandBufferInfo.addr
    )
  checkVk(
    vkQueueSubmit2(ctx.graphicsQueue, 1, submitInfo.addr, VkFence(0)),
    "Submitting single-use command buffer"
  )
  checkVk(vkQueueWaitIdle(ctx.graphicsQueue), "Waiting for graphics queue idle")
  vkFreeCommandBuffers(ctx.device, ctx.commandPool, 1, unsafeAddr commandBuffer)

proc createImage(
  ctx: VulkanContext,
  width, height: int,
  format: VkFormat,
  tiling: VkImageTiling,
  usage: uint32,
  properties: uint32,
  mipLevels: uint32,
  samples: VkSampleCountFlagBits,
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
    samples: samples,
    tiling: tiling,
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
    memoryTypeIndex: findMemoryType(ctx, memRequirements.memoryTypeBits, properties)
  )
  checkVk(vkAllocateMemory(ctx.device, allocInfo.addr, nil, memory.addr), "Allocating image memory")
  checkVk(vkBindImageMemory(ctx.device, image, memory, VkDeviceSize(0)), "Binding image memory")

proc transitionImageLayout(
  ctx: VulkanContext,
  image: VkImage,
  oldLayout, newLayout: VkImageLayout,
  aspectMask: VkImageAspectFlags,
  mipLevels: uint32
) =
  let commandBuffer = beginSingleTimeCommands(ctx)
  var barrier = VkImageMemoryBarrier2(
    sType: VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
    oldLayout: oldLayout,
    newLayout: newLayout,
    srcQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    dstQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    image: image,
    subresourceRange: VkImageSubresourceRange(
      aspectMask: aspectMask,
      baseMipLevel: 0,
      levelCount: mipLevels,
      baseArrayLayer: 0,
      layerCount: 1
    )
  )

  var
    sourceStage: VkPipelineStageFlags2
    destinationStage: VkPipelineStageFlags2
    srcAccess: VkAccessFlags2
    dstAccess: VkAccessFlags2

  if oldLayout == VK_IMAGE_LAYOUT_UNDEFINED and newLayout == VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL:
    srcAccess = VkAccessFlags2(VK_ACCESS_2_NONE)
    dstAccess = VkAccessFlags2(VK_ACCESS_2_TRANSFER_WRITE_BIT)
    sourceStage = VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_NONE)
    destinationStage = VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_TRANSFER_BIT)
  elif oldLayout == VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL and newLayout == VK_IMAGE_LAYOUT_READ_ONLY_OPTIMAL:
    srcAccess = VkAccessFlags2(VK_ACCESS_2_TRANSFER_WRITE_BIT)
    dstAccess = VkAccessFlags2(VK_ACCESS_2_SHADER_READ_BIT)
    sourceStage = VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_TRANSFER_BIT)
    destinationStage = VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_FRAGMENT_SHADER_BIT)
  elif oldLayout == VK_IMAGE_LAYOUT_UNDEFINED and newLayout == VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL:
    srcAccess = VkAccessFlags2(VK_ACCESS_2_NONE)
    dstAccess =
      if aspectMask.uint32 == VK_IMAGE_ASPECT_DEPTH_BIT:
        VkAccessFlags2(VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT)
      else:
        VkAccessFlags2(VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT)
    sourceStage = VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_NONE)
    destinationStage =
      if aspectMask.uint32 == VK_IMAGE_ASPECT_DEPTH_BIT:
        VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT)
      else:
        VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT)
  else:
    raise newException(Exception, "Unsupported image layout transition")

  barrier.srcStageMask = sourceStage
  barrier.srcAccessMask = srcAccess
  barrier.dstStageMask = destinationStage
  barrier.dstAccessMask = dstAccess

  var dependencyInfo = VkDependencyInfo(
    sType: VK_STRUCTURE_TYPE_DEPENDENCY_INFO,
    imageMemoryBarrierCount: 1,
    pImageMemoryBarriers: barrier.addr
  )
  vkCmdPipelineBarrier2(commandBuffer, dependencyInfo.addr)
  endSingleTimeCommands(ctx, commandBuffer)

proc createTextureResources(ctx: VulkanContext, renderer: var CubeRenderer) =
  ## Loads the texture, builds mip chain, and uploads to a device-local image.
  let image = readImage(TexturePath)
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
  createBuffer(
    ctx,
    imageSize,
    VK_BUFFER_USAGE_TRANSFER_SRC_BIT.uint32,
    VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT.uint32 or VK_MEMORY_PROPERTY_HOST_COHERENT_BIT.uint32,
    stagingBuffer,
    stagingBufferMemory
  )

  var mapped: pointer
  checkVk(
    vkMapMemory(ctx.device, stagingBufferMemory, VkDeviceSize(0), imageSize, VkMemoryMapFlags(0), mapped.addr),
    "Mapping staging buffer memory"
  )
  for i, mipImage in mipImages:
    let dst = cast[pointer](cast[uint](mapped) + uint(mipOffsets[i]))
    for y in 0 ..< mipImage.height:
      let srcIdx = mipImage.dataIndex(0, y)
      let srcPtr = cast[ptr uint8](mipImage.data[srcIdx].addr)
      copyMem(
        cast[pointer](cast[uint](dst) + uint(y * mipImage.width * 4)),
        srcPtr,
        mipImage.width * 4
      )
    
  vkUnmapMemory(ctx.device, stagingBufferMemory)

  createImage(
    ctx,
    texWidth,
    texHeight,
    VK_FORMAT_R8G8B8A8_SRGB,
    VK_IMAGE_TILING_OPTIMAL,
    VK_IMAGE_USAGE_TRANSFER_DST_BIT.uint32 or VK_IMAGE_USAGE_SAMPLED_BIT.uint32,
    VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT.uint32,
    renderer.textureMipLevels,
    VK_SAMPLE_COUNT_1_BIT,
    renderer.textureImage,
    renderer.textureImageMemory
  )
  transitionImageLayout(
    ctx,
    renderer.textureImage,
    VK_IMAGE_LAYOUT_UNDEFINED,
    VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
    VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT),
    renderer.textureMipLevels
  )
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
  vkCmdCopyBufferToImage(
    commandBuffer,
    stagingBuffer,
    renderer.textureImage,
    VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
    uint32(regions.len),
    regions[0].addr
  )
  endSingleTimeCommands(ctx, commandBuffer)
  transitionImageLayout(
    ctx,
    renderer.textureImage,
    VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
    VK_IMAGE_LAYOUT_READ_ONLY_OPTIMAL,
    VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT),
    renderer.textureMipLevels
  )

  vkDestroyBuffer(ctx.device, stagingBuffer, nil)
  vkFreeMemory(ctx.device, stagingBufferMemory, nil)

  var imageViewInfo = VkImageViewCreateInfo(
    sType: VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
    image: renderer.textureImage,
    viewType: VK_IMAGE_VIEW_TYPE_2D,
    format: VK_FORMAT_R8G8B8A8_SRGB,
    components: VkComponentMapping(
      r: VK_COMPONENT_SWIZZLE_IDENTITY,
      g: VK_COMPONENT_SWIZZLE_IDENTITY,
      b: VK_COMPONENT_SWIZZLE_IDENTITY,
      a: VK_COMPONENT_SWIZZLE_IDENTITY
    ),
    subresourceRange: VkImageSubresourceRange(
      aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT),
      baseMipLevel: 0,
      levelCount: renderer.textureMipLevels,
      baseArrayLayer: 0,
      layerCount: 1
    )
  )
  checkVk(vkCreateImageView(ctx.device, imageViewInfo.addr, nil, renderer.textureImageView.addr), "Creating texture image view")

  var samplerInfo = VkSamplerCreateInfo(
    sType: VK_STRUCTURE_TYPE_SAMPLER_CREATE_INFO,
    magFilter: VK_FILTER_LINEAR,
    minFilter: VK_FILTER_LINEAR,
    mipmapMode: VK_SAMPLER_MIPMAP_MODE_LINEAR,
    addressModeU: VK_SAMPLER_ADDRESS_MODE_REPEAT,
    addressModeV: VK_SAMPLER_ADDRESS_MODE_REPEAT,
    addressModeW: VK_SAMPLER_ADDRESS_MODE_REPEAT,
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

proc createDescriptorSetLayout(ctx: VulkanContext, renderer: var CubeRenderer) =
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

proc createDescriptorResources(ctx: VulkanContext, renderer: var CubeRenderer) =
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
    imageLayout: VK_IMAGE_LAYOUT_READ_ONLY_OPTIMAL
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

proc createSwapChainImageViews(ctx: VulkanContext, renderer: var CubeRenderer) =
  renderer.imageViews.setLen(ctx.swapChainImages.len)
  for i, image in ctx.swapChainImages:
    var createInfo = VkImageViewCreateInfo(
      sType: VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
      image: image,
      viewType: VK_IMAGE_VIEW_TYPE_2D,
      format: ctx.swapChainImageFormat,
      components: VkComponentMapping(
        r: VK_COMPONENT_SWIZZLE_IDENTITY,
        g: VK_COMPONENT_SWIZZLE_IDENTITY,
        b: VK_COMPONENT_SWIZZLE_IDENTITY,
        a: VK_COMPONENT_SWIZZLE_IDENTITY
      ),
      subresourceRange: VkImageSubresourceRange(
        aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT),
        baseMipLevel: 0,
        levelCount: 1,
        baseArrayLayer: 0,
        layerCount: 1
      )
    )
    checkVk(vkCreateImageView(ctx.device, createInfo.addr, nil, renderer.imageViews[i].addr), "Creating swapchain image view")

proc createMsaaResources(ctx: VulkanContext, renderer: var CubeRenderer) =
  let attachmentCount = ctx.swapChainImages.len
  renderer.depthImages.setLen(attachmentCount)
  renderer.depthImageMemories.setLen(attachmentCount)
  renderer.depthImageViews.setLen(attachmentCount)

  if renderer.msaaEnabled:
    renderer.colorImages.setLen(attachmentCount)
    renderer.colorImageMemories.setLen(attachmentCount)
    renderer.colorImageViews.setLen(attachmentCount)
  else:
    renderer.colorImages.setLen(0)
    renderer.colorImageMemories.setLen(0)
    renderer.colorImageViews.setLen(0)

  for i in 0 ..< attachmentCount:
    if renderer.msaaEnabled:
      createImage(
        ctx,
        int(ctx.swapChainExtent.width),
        int(ctx.swapChainExtent.height),
        ctx.swapChainImageFormat,
        VK_IMAGE_TILING_OPTIMAL,
        VK_IMAGE_USAGE_TRANSIENT_ATTACHMENT_BIT.uint32 or VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT.uint32,
        VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT.uint32,
        1,
        renderer.sampleCount,
        renderer.colorImages[i],
        renderer.colorImageMemories[i]
      )

      var colorViewInfo = VkImageViewCreateInfo(
        sType: VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
        image: renderer.colorImages[i],
        viewType: VK_IMAGE_VIEW_TYPE_2D,
        format: ctx.swapChainImageFormat,
        components: VkComponentMapping(
          r: VK_COMPONENT_SWIZZLE_IDENTITY,
          g: VK_COMPONENT_SWIZZLE_IDENTITY,
          b: VK_COMPONENT_SWIZZLE_IDENTITY,
          a: VK_COMPONENT_SWIZZLE_IDENTITY
        ),
        subresourceRange: VkImageSubresourceRange(
          aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT),
          baseMipLevel: 0,
          levelCount: 1,
          baseArrayLayer: 0,
          layerCount: 1
        )
      )
      checkVk(vkCreateImageView(ctx.device, colorViewInfo.addr, nil, renderer.colorImageViews[i].addr), "Creating MSAA color image view")

    createImage(
      ctx,
      int(ctx.swapChainExtent.width),
      int(ctx.swapChainExtent.height),
      VK_FORMAT_D32_SFLOAT,
      VK_IMAGE_TILING_OPTIMAL,
      VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT.uint32,
      VK_MEMORY_PROPERTY_DEVICE_LOCAL_BIT.uint32,
      1,
      renderer.sampleCount,
      renderer.depthImages[i],
      renderer.depthImageMemories[i]
    )

    var depthViewInfo = VkImageViewCreateInfo(
      sType: VK_STRUCTURE_TYPE_IMAGE_VIEW_CREATE_INFO,
      image: renderer.depthImages[i],
      viewType: VK_IMAGE_VIEW_TYPE_2D,
      format: VK_FORMAT_D32_SFLOAT,
      components: VkComponentMapping(
        r: VK_COMPONENT_SWIZZLE_IDENTITY,
        g: VK_COMPONENT_SWIZZLE_IDENTITY,
        b: VK_COMPONENT_SWIZZLE_IDENTITY,
        a: VK_COMPONENT_SWIZZLE_IDENTITY
      ),
      subresourceRange: VkImageSubresourceRange(
        aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_DEPTH_BIT),
        baseMipLevel: 0,
        levelCount: 1,
        baseArrayLayer: 0,
        layerCount: 1
      )
    )
    checkVk(vkCreateImageView(ctx.device, depthViewInfo.addr, nil, renderer.depthImageViews[i].addr), "Creating MSAA depth image view")

proc createGraphicsPipeline(ctx: VulkanContext, renderer: var CubeRenderer) =
  const
    vertShaderCode = staticRead("shaders/basic_cube.vert.spv")
    fragShaderCode = staticRead("shaders/basic_cube.frag.spv")
  let
    vertShaderModule = createShaderModule(ctx.device, vertShaderCode)
    fragShaderModule = createShaderModule(ctx.device, fragShaderCode)
  try:
    var
      colorFormat = ctx.swapChainImageFormat
      renderingInfo = VkPipelineRenderingCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO,
        colorAttachmentCount: 1,
        pColorAttachmentFormats: colorFormat.addr,
        depthAttachmentFormat: VK_FORMAT_D32_SFLOAT
      )
      dynamicStates = [
        VkDynamicState(VK_DYNAMIC_STATE_VIEWPORT),
        VkDynamicState(VK_DYNAMIC_STATE_SCISSOR)
      ]
      dynamicState = VkPipelineDynamicStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO,
        dynamicStateCount: uint32(dynamicStates.len),
        pDynamicStates: dynamicStates[0].addr
      )
      vertShaderStageInfo = VkPipelineShaderStageCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
        stage: VK_SHADER_STAGE_VERTEX_BIT,
        module: vertShaderModule,
        pName: "main"
      )
      fragShaderStageInfo = VkPipelineShaderStageCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
        stage: VK_SHADER_STAGE_FRAGMENT_BIT,
        module: fragShaderModule,
        pName: "main"
      )
      shaderStages = [vertShaderStageInfo, fragShaderStageInfo]
      bindingDescription = VkVertexInputBindingDescription(
        binding: 0,
        stride: uint32(sizeof(CubeVertex)),
        inputRate: VK_VERTEX_INPUT_RATE_VERTEX
      )
      attributeDescriptions = [
        VkVertexInputAttributeDescription(location: 0, binding: 0, format: VK_FORMAT_R32G32B32_SFLOAT, offset: 0),
        VkVertexInputAttributeDescription(location: 1, binding: 0, format: VK_FORMAT_R32G32_SFLOAT, offset: uint32(sizeof(array[3, float32])))
      ]
      vertexInputInfo = VkPipelineVertexInputStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO,
        vertexBindingDescriptionCount: 1,
        pVertexBindingDescriptions: bindingDescription.addr,
        vertexAttributeDescriptionCount: uint32(attributeDescriptions.len),
        pVertexAttributeDescriptions: attributeDescriptions[0].addr
      )
      inputAssembly = VkPipelineInputAssemblyStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO,
        topology: VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST,
        primitiveRestartEnable: VkBool32(VK_FALSE)
      )
      viewportState = VkPipelineViewportStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO,
        viewportCount: 1,
        scissorCount: 1
      )
      rasterizer = VkPipelineRasterizationStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO,
        depthClampEnable: VkBool32(VK_FALSE),
        rasterizerDiscardEnable: VkBool32(VK_FALSE),
        polygonMode: VK_POLYGON_MODE_FILL,
        lineWidth: 1.0,
        cullMode: VkCullModeFlags(VK_CULL_MODE_BACK_BIT),
        frontFace: VK_FRONT_FACE_CLOCKWISE,
        depthBiasEnable: VkBool32(VK_FALSE)
      )
      multisampling = VkPipelineMultisampleStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO,
        sampleShadingEnable: VkBool32(VK_FALSE),
        rasterizationSamples: renderer.sampleCount
      )
      depthStencil = VkPipelineDepthStencilStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_DEPTH_STENCIL_STATE_CREATE_INFO,
        depthTestEnable: VkBool32(VK_TRUE),
        depthWriteEnable: VkBool32(VK_TRUE),
        depthCompareOp: VK_COMPARE_OP_LESS,
        depthBoundsTestEnable: VkBool32(VK_FALSE),
        stencilTestEnable: VkBool32(VK_FALSE),
        minDepthBounds: 0,
        maxDepthBounds: 1
      )
      colorBlendAttachment = VkPipelineColorBlendAttachmentState(
        colorWriteMask: VkColorComponentFlags(0x0000000F),
        blendEnable: VkBool32(VK_FALSE),
        srcColorBlendFactor: VK_BLEND_FACTOR_ONE,
        dstColorBlendFactor: VK_BLEND_FACTOR_ZERO,
        colorBlendOp: VK_BLEND_OP_ADD,
        srcAlphaBlendFactor: VK_BLEND_FACTOR_ONE,
        dstAlphaBlendFactor: VK_BLEND_FACTOR_ZERO,
        alphaBlendOp: VK_BLEND_OP_ADD
      )
      colorBlending = VkPipelineColorBlendStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO,
        logicOpEnable: VkBool32(VK_FALSE),
        logicOp: VK_LOGIC_OP_COPY,
        attachmentCount: 1,
        pAttachments: colorBlendAttachment.addr,
        blendConstants: [0.0'f32, 0.0'f32, 0.0'f32, 0.0'f32]
      )
      pushConstantRange = VkPushConstantRange(
        stageFlags: VkShaderStageFlags(VK_SHADER_STAGE_VERTEX_BIT),
        offset: 0,
        size: uint32(sizeof(array[16, float32]))
      )
      pipelineLayoutInfo = VkPipelineLayoutCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO,
        setLayoutCount: 1,
        pSetLayouts: renderer.descriptorSetLayout.addr,
        pushConstantRangeCount: 1,
        pPushConstantRanges: pushConstantRange.addr
      )

    checkVk(vkCreatePipelineLayout(ctx.device, pipelineLayoutInfo.addr, nil, renderer.pipelineLayout.addr), "Creating pipeline layout")

    var pipelineInfo = VkGraphicsPipelineCreateInfo(
      sType: VK_STRUCTURE_TYPE_GRAPHICS_PIPELINE_CREATE_INFO,
      pNext: renderingInfo.addr,
      stageCount: uint32(shaderStages.len),
      pStages: shaderStages[0].addr,
      pVertexInputState: vertexInputInfo.addr,
      pInputAssemblyState: inputAssembly.addr,
      pViewportState: viewportState.addr,
      pRasterizationState: rasterizer.addr,
      pMultisampleState: multisampling.addr,
      pDepthStencilState: depthStencil.addr,
      pColorBlendState: colorBlending.addr,
      pDynamicState: dynamicState.addr,
      layout: renderer.pipelineLayout
    )
    checkVk(vkCreateGraphicsPipelines(ctx.device, VkPipelineCache(0), 1, pipelineInfo.addr, nil, renderer.pipeline.addr), "Creating graphics pipeline")
  finally:
    vkDestroyShaderModule(ctx.device, vertShaderModule, nil)
    vkDestroyShaderModule(ctx.device, fragShaderModule, nil)

proc createVertexBuffer(ctx: VulkanContext, renderer: var CubeRenderer) =
  let bufferSize = VkDeviceSize(sizeof(CubeVertices))
  createBuffer(
    ctx,
    bufferSize,
    VK_BUFFER_USAGE_VERTEX_BUFFER_BIT.uint32,
    VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT.uint32 or VK_MEMORY_PROPERTY_HOST_COHERENT_BIT.uint32,
    renderer.vertexBuffer,
    renderer.vertexBufferMemory
  )
  var mapped: pointer
  checkVk(vkMapMemory(ctx.device, renderer.vertexBufferMemory, VkDeviceSize(0), bufferSize, VkMemoryMapFlags(0), mapped.addr), "Mapping vertex buffer memory")
  copyMem(mapped, unsafeAddr CubeVertices[0], sizeof(CubeVertices))
  vkUnmapMemory(ctx.device, renderer.vertexBufferMemory)

proc recordCommandBuffers(ctx: VulkanContext, renderer: var CubeRenderer)

proc destroySwapChainResources(ctx: VulkanContext, renderer: var CubeRenderer) =
  if renderer.commandBuffers.len > 0:
    vkFreeCommandBuffers(ctx.device, ctx.commandPool, uint32(renderer.commandBuffers.len), renderer.commandBuffers[0].addr)
    renderer.commandBuffers.setLen(0)
  for imageView in renderer.colorImageViews:
    vkDestroyImageView(ctx.device, imageView, nil)
  renderer.colorImageViews.setLen(0)
  for image in renderer.colorImages:
    vkDestroyImage(ctx.device, image, nil)
  renderer.colorImages.setLen(0)
  for memory in renderer.colorImageMemories:
    vkFreeMemory(ctx.device, memory, nil)
  renderer.colorImageMemories.setLen(0)
  for imageView in renderer.imageViews:
    vkDestroyImageView(ctx.device, imageView, nil)
  renderer.imageViews.setLen(0)
  for imageView in renderer.depthImageViews:
    vkDestroyImageView(ctx.device, imageView, nil)
  renderer.depthImageViews.setLen(0)
  for image in renderer.depthImages:
    vkDestroyImage(ctx.device, image, nil)
  renderer.depthImages.setLen(0)
  for memory in renderer.depthImageMemories:
    vkFreeMemory(ctx.device, memory, nil)
  renderer.depthImageMemories.setLen(0)
  if renderer.pipeline.int64 != 0:
    vkDestroyPipeline(ctx.device, renderer.pipeline, nil)
    renderer.pipeline = VkPipeline(0)
  if renderer.pipelineLayout.int64 != 0:
    vkDestroyPipelineLayout(ctx.device, renderer.pipelineLayout, nil)
    renderer.pipelineLayout = VkPipelineLayout(0)

proc recreateRenderer(ctx: var VulkanContext, renderer: var CubeRenderer, width, height: int) =
  discard vkDeviceWaitIdle(ctx.device)
  destroySwapChainResources(ctx, renderer)
  recreateSwapChain(ctx, width, height)
  createSwapChainImageViews(ctx, renderer)
  createMsaaResources(ctx, renderer)
  createGraphicsPipeline(ctx, renderer)
  recordCommandBuffers(ctx, renderer)

proc recordCommandBuffers(ctx: VulkanContext, renderer: var CubeRenderer) =
  renderer.commandBuffers.setLen(ctx.swapChainImages.len)
  var allocInfo = VkCommandBufferAllocateInfo(
    sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
    commandPool: ctx.commandPool,
    level: VK_COMMAND_BUFFER_LEVEL_PRIMARY,
    commandBufferCount: uint32(renderer.commandBuffers.len)
  )
  checkVk(vkAllocateCommandBuffers(ctx.device, allocInfo.addr, renderer.commandBuffers[0].addr), "Allocating cube command buffers")

proc initRenderer(ctx: VulkanContext, renderer: var CubeRenderer) =
  renderer.sampleCount = chooseMsaaSampleCount(ctx)
  createDescriptorSetLayout(ctx, renderer)
  createTextureResources(ctx, renderer)
  createDescriptorResources(ctx, renderer)
  createSwapChainImageViews(ctx, renderer)
  createMsaaResources(ctx, renderer)
  createGraphicsPipeline(ctx, renderer)
  createVertexBuffer(ctx, renderer)
  recordCommandBuffers(ctx, renderer)

proc recordCurrentFrame(ctx: var VulkanContext, renderer: var CubeRenderer, imageIndex: uint32) =
  let commandBuffer = renderer.commandBuffers[imageIndex]
  discard vkResetCommandBuffer(commandBuffer, VkCommandBufferResetFlags(0))
  var beginInfo = VkCommandBufferBeginInfo(sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO)
  checkVk(vkBeginCommandBuffer(commandBuffer, beginInfo.addr), "Beginning cube command buffer")

  let
    colorRange = VkImageSubresourceRange(
      aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT),
      baseMipLevel: 0,
      levelCount: 1,
      baseArrayLayer: 0,
      layerCount: 1
    )
    depthRange = VkImageSubresourceRange(
      aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_DEPTH_BIT),
      baseMipLevel: 0,
      levelCount: 1,
      baseArrayLayer: 0,
      layerCount: 1
    )
  var barriers: seq[VkImageMemoryBarrier2]
  barriers.add VkImageMemoryBarrier2(
    sType: VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
    srcStageMask: VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_NONE),
    srcAccessMask: VkAccessFlags2(VK_ACCESS_2_NONE),
    dstStageMask: VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT),
    dstAccessMask: VkAccessFlags2(VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT),
    oldLayout: VK_IMAGE_LAYOUT_UNDEFINED,
    newLayout: VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL,
    srcQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    dstQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    image: ctx.swapChainImages[imageIndex],
    subresourceRange: colorRange
  )
  if renderer.msaaEnabled:
    barriers.add VkImageMemoryBarrier2(
      sType: VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
      srcStageMask: VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_NONE),
      srcAccessMask: VkAccessFlags2(VK_ACCESS_2_NONE),
      dstStageMask: VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT),
      dstAccessMask: VkAccessFlags2(VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT),
      oldLayout: VK_IMAGE_LAYOUT_UNDEFINED,
      newLayout: VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL,
      srcQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
      dstQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
      image: renderer.colorImages[imageIndex],
      subresourceRange: colorRange
    )
  barriers.add VkImageMemoryBarrier2(
    sType: VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
    srcStageMask: VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_NONE),
    srcAccessMask: VkAccessFlags2(VK_ACCESS_2_NONE),
    dstStageMask: VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_EARLY_FRAGMENT_TESTS_BIT),
    dstAccessMask: VkAccessFlags2(VK_ACCESS_2_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT),
    oldLayout: VK_IMAGE_LAYOUT_UNDEFINED,
    newLayout: VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL,
    srcQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    dstQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    image: renderer.depthImages[imageIndex],
    subresourceRange: depthRange
  )
  var dependencyInfo = VkDependencyInfo(
    sType: VK_STRUCTURE_TYPE_DEPENDENCY_INFO,
    imageMemoryBarrierCount: uint32(barriers.len),
    pImageMemoryBarriers: barriers[0].addr
  )
  vkCmdPipelineBarrier2(commandBuffer, dependencyInfo.addr)

  var
    colorClear = VkClearValue(color: VkClearColorValue(float32: ClearColor))
    depthClear = VkClearValue(
      depthStencil: VkClearDepthStencilValue(depth: 1.0'f32, stencil: 0)
    )
    colorAttachment = VkRenderingAttachmentInfo(
      sType: VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO,
      imageView:
        if renderer.msaaEnabled: renderer.colorImageViews[imageIndex]
        else: renderer.imageViews[imageIndex],
      imageLayout: VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL,
      resolveMode:
        if renderer.msaaEnabled: VK_RESOLVE_MODE_AVERAGE_BIT
        else: VK_RESOLVE_MODE_NONE,
      resolveImageView:
        if renderer.msaaEnabled: renderer.imageViews[imageIndex]
        else: VkImageView(0),
      resolveImageLayout:
        if renderer.msaaEnabled: VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL
        else: VK_IMAGE_LAYOUT_UNDEFINED,
      loadOp: VK_ATTACHMENT_LOAD_OP_CLEAR,
      storeOp:
        if renderer.msaaEnabled: VK_ATTACHMENT_STORE_OP_DONT_CARE
        else: VK_ATTACHMENT_STORE_OP_STORE,
      clearValue: colorClear
    )
    depthAttachment = VkRenderingAttachmentInfo(
      sType: VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO,
      imageView: renderer.depthImageViews[imageIndex],
      imageLayout: VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL,
      loadOp: VK_ATTACHMENT_LOAD_OP_CLEAR,
      storeOp: VK_ATTACHMENT_STORE_OP_DONT_CARE,
      clearValue: depthClear
    )
    renderingInfo = VkRenderingInfo(
      sType: VK_STRUCTURE_TYPE_RENDERING_INFO,
      renderArea: VkRect2D(
        offset: VkOffset2D(x: 0, y: 0),
        extent: ctx.swapChainExtent
      ),
      layerCount: 1,
      colorAttachmentCount: 1,
      pColorAttachments: colorAttachment.addr,
      pDepthAttachment: depthAttachment.addr
    )
    viewport = VkViewport(
      x: 0,
      y: ctx.swapChainExtent.height.float32,
      width: ctx.swapChainExtent.width.float32,
      height: -ctx.swapChainExtent.height.float32,
      minDepth: 0,
      maxDepth: 1
    )
    scissor = VkRect2D(
      offset: VkOffset2D(x: 0, y: 0),
      extent: ctx.swapChainExtent
    )
  var vertexBuffers = [renderer.vertexBuffer]
  var offsets = [VkDeviceSize(0)]
  var descriptorSet = renderer.descriptorSet

  vkCmdBeginRendering(commandBuffer, renderingInfo.addr)
  vkCmdSetViewport(commandBuffer, 0, 1, viewport.addr)
  vkCmdSetScissor(commandBuffer, 0, 1, scissor.addr)
  vkCmdBindPipeline(commandBuffer, VK_PIPELINE_BIND_POINT_GRAPHICS, renderer.pipeline)
  vkCmdBindDescriptorSets(commandBuffer, VK_PIPELINE_BIND_POINT_GRAPHICS, renderer.pipelineLayout, 0, 1, descriptorSet.addr, 0, nil)
  vkCmdPushConstants(
    commandBuffer,
    renderer.pipelineLayout,
    VkShaderStageFlags(VK_SHADER_STAGE_VERTEX_BIT),
    0,
    uint32(sizeof(renderer.transform)),
    unsafeAddr renderer.transform[0]
  )
  vkCmdBindVertexBuffers(commandBuffer, 0, 1, vertexBuffers[0].addr, offsets[0].addr)
  vkCmdDraw(commandBuffer, uint32(CubeVertices.len), 1, 0, 0)
  vkCmdEndRendering(commandBuffer)

  var toPresent = VkImageMemoryBarrier2(
    sType: VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
    srcStageMask: VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT),
    srcAccessMask: VkAccessFlags2(VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT),
    dstStageMask: VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_NONE),
    dstAccessMask: VkAccessFlags2(VK_ACCESS_2_NONE),
    oldLayout: VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL,
    newLayout: VK_IMAGE_LAYOUT_PRESENT_SRC_KHR,
    srcQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    dstQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    image: ctx.swapChainImages[imageIndex],
    subresourceRange: colorRange
  )
  dependencyInfo.imageMemoryBarrierCount = 1
  dependencyInfo.pImageMemoryBarriers = toPresent.addr
  vkCmdPipelineBarrier2(commandBuffer, dependencyInfo.addr)
  checkVk(vkEndCommandBuffer(commandBuffer), "Ending cube command buffer")

proc drawFrame(ctx: var VulkanContext, renderer: var CubeRenderer): bool =
  let frame = ctx.currentFrame
  let fence = ctx.inFlightFences[frame]
  discard vkWaitForFences(ctx.device, 1, unsafeAddr fence, VkBool32(VK_TRUE), uint64.high)
  discard vkResetFences(ctx.device, 1, unsafeAddr fence)

  var imageIndex: uint32
  let acquireResult = vkAcquireNextImageKHR(
    ctx.device,
    ctx.swapChain,
    uint64.high,
    ctx.imageAvailableSemaphores[frame],
    VkFence(0),
    imageIndex.addr
  )
  if requiresSwapChainRecreate(acquireResult):
    return true
  checkVk(acquireResult, "Acquiring next swapchain image")

  recordCurrentFrame(ctx, renderer, imageIndex)

  var
    commandBuffer = renderer.commandBuffers[imageIndex]
    waitInfo = VkSemaphoreSubmitInfo(
      sType: VK_STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO,
      semaphore: ctx.imageAvailableSemaphores[frame],
      stageMask: VkPipelineStageFlags2(
        VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT
      ),
      value: 0,
      deviceIndex: 0
    )
    commandBufferInfo = VkCommandBufferSubmitInfo(
      sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO,
      commandBuffer: commandBuffer,
      deviceMask: 0
    )
    signalInfo = VkSemaphoreSubmitInfo(
      sType: VK_STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO,
      semaphore: ctx.renderFinishedSemaphores[frame],
      stageMask: VkPipelineStageFlags2(
        VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT
      ),
      value: 0,
      deviceIndex: 0
    )
    submitInfo = VkSubmitInfo2(
      sType: VK_STRUCTURE_TYPE_SUBMIT_INFO_2,
      waitSemaphoreInfoCount: 1,
      pWaitSemaphoreInfos: waitInfo.addr,
      commandBufferInfoCount: 1,
      pCommandBufferInfos: commandBufferInfo.addr,
      signalSemaphoreInfoCount: 1,
      pSignalSemaphoreInfos: signalInfo.addr
    )
  checkVk(
    vkQueueSubmit2(ctx.graphicsQueue, 1, submitInfo.addr, fence),
    "Submitting cube command buffer"
  )

  var
    swapChains = [ctx.swapChain]
    presentInfo = VkPresentInfoKHR(
      sType: VK_STRUCTURE_TYPE_PRESENT_INFO_KHR,
      waitSemaphoreCount: 1,
      pWaitSemaphores: signalInfo.semaphore.addr,
      swapchainCount: 1,
      pSwapchains: swapChains[0].addr,
      pImageIndices: imageIndex.addr
    )
  let presentResult = vkQueuePresentKHR(ctx.presentQueue, presentInfo.addr)
  let needsRecreate = requiresSwapChainRecreate(presentResult)
  if not needsRecreate:
    checkVk(presentResult, "Presenting cube frame")
  ctx.currentFrame = (ctx.currentFrame + 1) mod FRAME_COUNT
  inc renderer.frameCounter
  needsRecreate

proc shutdown(ctx: VulkanContext, renderer: var CubeRenderer) =
  destroySwapChainResources(ctx, renderer)
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
  if renderer.vertexBuffer.int64 != 0:
    vkDestroyBuffer(ctx.device, renderer.vertexBuffer, nil)
  if renderer.vertexBufferMemory.int64 != 0:
    vkFreeMemory(ctx.device, renderer.vertexBufferMemory, nil)
  if renderer.descriptorSetLayout.int64 != 0:
    vkDestroyDescriptorSetLayout(ctx.device, renderer.descriptorSetLayout, nil)

when isMainModule:
  let window = newWindow("Vulkan 1.4 - Basic Cube", ivec2(Width.int32, Height.int32))
  let hwnd = window.getHWND()
  if hwnd == 0:
    raise newException(Exception, "Failed to acquire HWND from window")

  var ctx: VulkanContext
  ctx.initDevice(hwnd, Width, Height)

  var renderer: CubeRenderer
  initRenderer(ctx, renderer)

  var needsResize = false
  var frameInProgress = false
  window.onResize = proc() =
    needsResize = true
  window.onFrame = proc() =
    if frameInProgress:
      return
    frameInProgress = true
    try:
      if needsResize:
        let size = window.size
        if size.x > 0 and size.y > 0:
          recreateRenderer(ctx, renderer, size.x.int, size.y.int)
          needsResize = false
        else:
          return

      let aspect = ctx.swapChainExtent.width.float32 / max(1'u32, ctx.swapChainExtent.height).float32
      updateTransform(renderer, aspect)
      if drawFrame(ctx, renderer):
        let size = window.size
        if size.x > 0 and size.y > 0:
          recreateRenderer(ctx, renderer, size.x.int, size.y.int)
        else:
          needsResize = true
    finally:
      frameInProgress = false

  try:
    while not window.closeRequested:
      pollEvents()
  finally:
    shutdown(ctx, renderer)
    ctx.cleanup()

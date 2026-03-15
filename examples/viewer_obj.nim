import
  std/[math, os, strutils],
  vmath,
  windy,
  vk14

const
  Width = 1280
  Height = 800
  RotateScale = 0.01'f32
  ZoomScale = 0.2'f32
  MinDistance = 1.0'f32
  MaxDistance = 8.0'f32
  MinPitch = -1.45'f32
  MaxPitch = 1.45'f32
  ClearColor = [0.05'f32, 0.05'f32, 0.08'f32, 1.0'f32]

type
  ViewerObjError = object of CatchableError

  ObjVertex = object
    position: array[3, float32]
    normal: array[3, float32]

  ObjMesh = object
    vertices: seq[ObjVertex]

  CameraState = object
    yaw: float32
    pitch: float32
    distance: float32

  ObjRenderer = object
    pipelineLayout: VkPipelineLayout
    renderPass: VkRenderPass
    pipeline: VkPipeline
    imageViews: seq[VkImageView]
    depthImages: seq[VkImage]
    depthImageMemories: seq[VkDeviceMemory]
    depthImageViews: seq[VkImageView]
    framebuffers: seq[VkFramebuffer]
    commandBuffers: seq[VkCommandBuffer]
    vertexBuffer: VkBuffer
    vertexBufferMemory: VkDeviceMemory
    transform: array[32, float32]
    vertexCount: uint32

proc objPath(): string =
  currentSourcePath().parentDir / "bunny.obj"

proc checkVk(result: VkResult, action: string) =
  if result != VK_SUCCESS:
    raise newException(Exception, action & " failed with VkResult " & $result.int32)

proc requiresSwapChainRecreate(vkResult: VkResult): bool =
  let code = vkResult.int32
  code == VK_SUBOPTIMAL_KHR.int32 or code == VK_ERROR_OUT_OF_DATE_KHR.int32

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

proc packTransforms(mvp, model: Mat4): array[32, float32] =
  let
    mvpValues = mat4ToArray(mvp)
    modelValues = mat4ToArray(model)
  for i in 0 ..< 16:
    result[i] = mvpValues[i]
    result[i + 16] = modelValues[i]

proc toFloatArray(v: Vec3): array[3, float32] =
  [v.x, v.y, v.z]

proc parseFloat32(value: string): float32 =
  try:
    parseFloat(value).float32
  except ValueError:
    raise newException(ViewerObjError, "Invalid float in OBJ: " & value)

proc parseObjIndex(value: string, vertexCount: int): int =
  if value.len == 0:
    raise newException(ViewerObjError, "OBJ face is missing a vertex index")

  let rawIndex =
    try:
      parseInt(value)
    except ValueError:
      raise newException(ViewerObjError, "Invalid OBJ face index: " & value)

  result =
    if rawIndex > 0:
      rawIndex - 1
    elif rawIndex < 0:
      vertexCount + rawIndex
    else:
      raise newException(ViewerObjError, "OBJ indices cannot be zero")

  if result < 0 or result >= vertexCount:
    raise newException(ViewerObjError, "OBJ face index is out of range: " & value)

proc parseFaceVertex(token: string, vertexCount: int): int =
  let slash = token.find('/')
  let indexToken =
    if slash >= 0:
      token[0 ..< slash]
    else:
      token
  parseObjIndex(indexToken, vertexCount)

proc normalizeSafe(v, fallback: Vec3): Vec3 =
  if v.length() <= 0.000001'f32:
    fallback
  else:
    v.normalize()

proc loadObjMesh(path: string): ObjMesh =
  if not fileExists(path):
    raise newException(ViewerObjError, "OBJ file not found: " & path)

  var
    positions: seq[Vec3]
    triangles: seq[array[3, int]]

  for rawLine in readFile(path).splitLines():
    let line = rawLine.strip()
    if line.len == 0 or line[0] == '#':
      continue

    let parts = strutils.splitWhitespace(line)
    case parts[0]
    of "v":
      if parts.len < 4:
        raise newException(ViewerObjError, "OBJ vertex line is incomplete")
      positions.add(
        vec3(
          parseFloat32(parts[1]),
          parseFloat32(parts[2]),
          parseFloat32(parts[3])
        )
      )
    of "f":
      if parts.len < 4:
        raise newException(ViewerObjError, "OBJ face line is incomplete")
      var faceIndices: seq[int]
      for i in 1 ..< parts.len:
        faceIndices.add(parseFaceVertex(parts[i], positions.len))
      for i in 1 ..< faceIndices.len - 1:
        triangles.add([faceIndices[0], faceIndices[i], faceIndices[i + 1]])
    else:
      discard

  if positions.len == 0:
    raise newException(ViewerObjError, "OBJ does not contain any vertices")
  if triangles.len == 0:
    raise newException(ViewerObjError, "OBJ does not contain any faces")

  var
    minPos = positions[0]
    maxPos = positions[0]
  for i in 1 ..< positions.len:
    let p = positions[i]
    minPos.x = min(minPos.x, p.x)
    minPos.y = min(minPos.y, p.y)
    minPos.z = min(minPos.z, p.z)
    maxPos.x = max(maxPos.x, p.x)
    maxPos.y = max(maxPos.y, p.y)
    maxPos.z = max(maxPos.z, p.z)

  let
    center = (minPos + maxPos) * 0.5'f32
    size = maxPos - minPos
    maxExtent = max(size.x, max(size.y, size.z))
  if maxExtent <= 0.0'f32:
    raise newException(ViewerObjError, "OBJ bounds are degenerate")

  let uniformScale = 2.0'f32 / maxExtent
  var normalizedPositions = newSeq[Vec3](positions.len)
  for i, p in positions:
    normalizedPositions[i] = (p - center) * uniformScale

  var smoothedNormals = newSeq[Vec3](normalizedPositions.len)
  for tri in triangles:
    let
      a = normalizedPositions[tri[0]]
      b = normalizedPositions[tri[1]]
      c = normalizedPositions[tri[2]]
      faceNormal = normalizeSafe((b - a).cross(c - a), vec3(0.0'f32, 1.0'f32, 0.0'f32))
    smoothedNormals[tri[0]] += faceNormal
    smoothedNormals[tri[1]] += faceNormal
    smoothedNormals[tri[2]] += faceNormal

  result.vertices = newSeq[ObjVertex](triangles.len * 3)
  var vertexIndex = 0
  for tri in triangles:
    for idx in tri:
      result.vertices[vertexIndex] = ObjVertex(
        position: normalizedPositions[idx].toFloatArray(),
        normal: normalizeSafe(smoothedNormals[idx], vec3(0.0'f32, 1.0'f32, 0.0'f32)).toFloatArray()
      )
      inc vertexIndex

proc createShaderModule(device: VkDevice, code: string): VkShaderModule =
  var createInfo = VkShaderModuleCreateInfo(
    sType: VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,
    codeSize: code.len.uint32,
    pCode: cast[ptr uint32](code[0].unsafeAddr)
  )
  checkVk(vkCreateShaderModule(device, createInfo.addr, nil, result.addr), "Creating shader module")

proc findMemoryType(ctx: VulkanContext, typeFilter: uint32, properties: uint32): uint32 =
  var memProperties: VkPhysicalDeviceMemoryProperties
  vkGetPhysicalDeviceMemoryProperties(ctx.physicalDevice, memProperties.addr)
  for i in 0'u32 ..< memProperties.memoryTypeCount:
    let flags = memProperties.memoryTypes[i].propertyFlags.uint32
    if ((typeFilter shr i) and 1'u32) == 1'u32 and (flags and properties) == properties:
      return i
  raise newException(Exception, "Failed to find suitable Vulkan memory type")

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

proc createImage(
  ctx: VulkanContext,
  width, height: int,
  format: VkFormat,
  usage: uint32,
  image: var VkImage,
  memory: var VkDeviceMemory
) =
  var imageInfo = VkImageCreateInfo(
    sType: VK_STRUCTURE_TYPE_IMAGE_CREATE_INFO,
    imageType: VK_IMAGE_TYPE_2D,
    format: format,
    extent: VkExtent3D(width: uint32(width), height: uint32(height), depth: 1),
    mipLevels: 1,
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

proc transitionDepthLayout(ctx: VulkanContext, image: VkImage) =
  let commandBuffer = beginSingleTimeCommands(ctx)
  var barrier = VkImageMemoryBarrier(
    sType: VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
    oldLayout: VK_IMAGE_LAYOUT_UNDEFINED,
    newLayout: VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL,
    srcQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    dstQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    image: image,
    subresourceRange: VkImageSubresourceRange(
      aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_DEPTH_BIT),
      baseMipLevel: 0,
      levelCount: 1,
      baseArrayLayer: 0,
      layerCount: 1
    ),
    srcAccessMask: VkAccessFlags(0),
    dstAccessMask: VkAccessFlags(VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT)
  )
  vkCmdPipelineBarrier(
    commandBuffer,
    VkPipelineStageFlags(VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT),
    VkPipelineStageFlags(VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT),
    VkDependencyFlags(0),
    0, nil, 0, nil, 1, barrier.addr
  )
  endSingleTimeCommands(ctx, commandBuffer)

proc createSwapChainImageViews(ctx: VulkanContext, renderer: var ObjRenderer) =
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

proc createDepthResources(ctx: VulkanContext, renderer: var ObjRenderer) =
  let attachmentCount = ctx.swapChainImages.len
  renderer.depthImages.setLen(attachmentCount)
  renderer.depthImageMemories.setLen(attachmentCount)
  renderer.depthImageViews.setLen(attachmentCount)

  for i in 0 ..< attachmentCount:
    createImage(
      ctx,
      int(ctx.swapChainExtent.width),
      int(ctx.swapChainExtent.height),
      VK_FORMAT_D32_SFLOAT,
      VK_IMAGE_USAGE_DEPTH_STENCIL_ATTACHMENT_BIT.uint32,
      renderer.depthImages[i],
      renderer.depthImageMemories[i]
    )

    var imageViewInfo = VkImageViewCreateInfo(
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
    checkVk(vkCreateImageView(ctx.device, imageViewInfo.addr, nil, renderer.depthImageViews[i].addr), "Creating depth image view")
    transitionDepthLayout(ctx, renderer.depthImages[i])

proc createRenderPass(ctx: VulkanContext, renderer: var ObjRenderer) =
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
    depthAttachment = VkAttachmentDescription(
      format: VK_FORMAT_D32_SFLOAT,
      samples: VK_SAMPLE_COUNT_1_BIT,
      loadOp: VK_ATTACHMENT_LOAD_OP_CLEAR,
      storeOp: VK_ATTACHMENT_STORE_OP_DONT_CARE,
      stencilLoadOp: VK_ATTACHMENT_LOAD_OP_DONT_CARE,
      stencilStoreOp: VK_ATTACHMENT_STORE_OP_DONT_CARE,
      initialLayout: VK_IMAGE_LAYOUT_UNDEFINED,
      finalLayout: VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL
    )
    colorAttachmentRef = VkAttachmentReference(attachment: 0, layout: VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL)
    depthAttachmentRef = VkAttachmentReference(attachment: 1, layout: VK_IMAGE_LAYOUT_DEPTH_STENCIL_ATTACHMENT_OPTIMAL)
    attachments = [colorAttachment, depthAttachment]
    subpass = VkSubpassDescription(
      pipelineBindPoint: VK_PIPELINE_BIND_POINT_GRAPHICS,
      colorAttachmentCount: 1,
      pColorAttachments: colorAttachmentRef.addr,
      pDepthStencilAttachment: depthAttachmentRef.addr
    )
    dependency = VkSubpassDependency(
      srcSubpass: VK_SUBPASS_EXTERNAL,
      dstSubpass: 0,
      srcStageMask: VkPipelineStageFlags(VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT.uint32 or VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT.uint32),
      srcAccessMask: VkAccessFlags(0),
      dstStageMask: VkPipelineStageFlags(VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT.uint32 or VK_PIPELINE_STAGE_EARLY_FRAGMENT_TESTS_BIT.uint32),
      dstAccessMask: VkAccessFlags(VK_ACCESS_DEPTH_STENCIL_ATTACHMENT_WRITE_BIT or VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT)
    )
    renderPassInfo = VkRenderPassCreateInfo(
      sType: VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO,
      attachmentCount: uint32(attachments.len),
      pAttachments: attachments[0].addr,
      subpassCount: 1,
      pSubpasses: subpass.addr,
      dependencyCount: 1,
      pDependencies: dependency.addr
    )
  checkVk(vkCreateRenderPass(ctx.device, renderPassInfo.addr, nil, renderer.renderPass.addr), "Creating render pass")

proc createGraphicsPipeline(ctx: VulkanContext, renderer: var ObjRenderer) =
  const
    vertShaderCode = staticRead("shaders/viewer_obj.vert.spv")
    fragShaderCode = staticRead("shaders/viewer_obj.frag.spv")
  let
    vertShaderModule = createShaderModule(ctx.device, vertShaderCode)
    fragShaderModule = createShaderModule(ctx.device, fragShaderCode)
  try:
    var
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
        stride: uint32(sizeof(ObjVertex)),
        inputRate: VK_VERTEX_INPUT_RATE_VERTEX
      )
      attributeDescriptions = [
        VkVertexInputAttributeDescription(location: 0, binding: 0, format: VK_FORMAT_R32G32B32_SFLOAT, offset: 0),
        VkVertexInputAttributeDescription(location: 1, binding: 0, format: VK_FORMAT_R32G32B32_SFLOAT, offset: uint32(sizeof(array[3, float32])))
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
      viewport = VkViewport(
        x: 0,
        y: ctx.swapChainExtent.height.float32,
        width: ctx.swapChainExtent.width.float32,
        height: -ctx.swapChainExtent.height.float32,
        minDepth: 0,
        maxDepth: 1
      )
      scissor = VkRect2D(offset: VkOffset2D(x: 0, y: 0), extent: ctx.swapChainExtent)
      viewportState = VkPipelineViewportStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO,
        viewportCount: 1,
        pViewports: viewport.addr,
        scissorCount: 1,
        pScissors: scissor.addr
      )
      rasterizer = VkPipelineRasterizationStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO,
        depthClampEnable: VkBool32(VK_FALSE),
        rasterizerDiscardEnable: VkBool32(VK_FALSE),
        polygonMode: VK_POLYGON_MODE_FILL,
        lineWidth: 1.0,
        cullMode: VkCullModeFlags(VK_CULL_MODE_NONE),
        frontFace: VK_FRONT_FACE_CLOCKWISE,
        depthBiasEnable: VkBool32(VK_FALSE)
      )
      multisampling = VkPipelineMultisampleStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO,
        sampleShadingEnable: VkBool32(VK_FALSE),
        rasterizationSamples: VK_SAMPLE_COUNT_1_BIT
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
        size: uint32(sizeof(array[32, float32]))
      )
      pipelineLayoutInfo = VkPipelineLayoutCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO,
        setLayoutCount: 0,
        pSetLayouts: nil,
        pushConstantRangeCount: 1,
        pPushConstantRanges: pushConstantRange.addr
      )

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
      pDepthStencilState: depthStencil.addr,
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

proc createFramebuffers(ctx: VulkanContext, renderer: var ObjRenderer) =
  renderer.framebuffers.setLen(renderer.imageViews.len)
  for i, imageView in renderer.imageViews:
    var attachments = [imageView, renderer.depthImageViews[i]]
    var framebufferInfo = VkFramebufferCreateInfo(
      sType: VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO,
      renderPass: renderer.renderPass,
      attachmentCount: uint32(attachments.len),
      pAttachments: attachments[0].addr,
      width: ctx.swapChainExtent.width,
      height: ctx.swapChainExtent.height,
      layers: 1
    )
    checkVk(vkCreateFramebuffer(ctx.device, framebufferInfo.addr, nil, renderer.framebuffers[i].addr), "Creating framebuffer")

proc uploadVertexBuffer(ctx: VulkanContext, renderer: var ObjRenderer, mesh: ObjMesh) =
  if mesh.vertices.len == 0:
    raise newException(ViewerObjError, "Mesh is empty")

  let bufferSize = VkDeviceSize(mesh.vertices.len * sizeof(ObjVertex))
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
  copyMem(mapped, unsafeAddr mesh.vertices[0], mesh.vertices.len * sizeof(ObjVertex))
  vkUnmapMemory(ctx.device, renderer.vertexBufferMemory)
  renderer.vertexCount = uint32(mesh.vertices.len)

proc recordCommandBuffers(ctx: VulkanContext, renderer: var ObjRenderer)

proc destroySwapChainResources(ctx: VulkanContext, renderer: var ObjRenderer) =
  if renderer.commandBuffers.len > 0:
    vkFreeCommandBuffers(ctx.device, ctx.commandPool, uint32(renderer.commandBuffers.len), renderer.commandBuffers[0].addr)
    renderer.commandBuffers.setLen(0)
  for framebuffer in renderer.framebuffers:
    vkDestroyFramebuffer(ctx.device, framebuffer, nil)
  renderer.framebuffers.setLen(0)
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
  if renderer.renderPass.int64 != 0:
    vkDestroyRenderPass(ctx.device, renderer.renderPass, nil)
    renderer.renderPass = VkRenderPass(0)

proc recreateRenderer(ctx: var VulkanContext, renderer: var ObjRenderer, width, height: int) =
  discard vkDeviceWaitIdle(ctx.device)
  destroySwapChainResources(ctx, renderer)
  recreateSwapChain(ctx, width, height)
  createSwapChainImageViews(ctx, renderer)
  createDepthResources(ctx, renderer)
  createRenderPass(ctx, renderer)
  createGraphicsPipeline(ctx, renderer)
  createFramebuffers(ctx, renderer)
  recordCommandBuffers(ctx, renderer)

proc recordCommandBuffers(ctx: VulkanContext, renderer: var ObjRenderer) =
  renderer.commandBuffers.setLen(renderer.framebuffers.len)
  var allocInfo = VkCommandBufferAllocateInfo(
    sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
    commandPool: ctx.commandPool,
    level: VK_COMMAND_BUFFER_LEVEL_PRIMARY,
    commandBufferCount: uint32(renderer.commandBuffers.len)
  )
  checkVk(vkAllocateCommandBuffers(ctx.device, allocInfo.addr, renderer.commandBuffers[0].addr), "Allocating OBJ command buffers")

proc initRenderer(ctx: VulkanContext, renderer: var ObjRenderer, mesh: ObjMesh) =
  createSwapChainImageViews(ctx, renderer)
  createDepthResources(ctx, renderer)
  createRenderPass(ctx, renderer)
  createGraphicsPipeline(ctx, renderer)
  createFramebuffers(ctx, renderer)
  uploadVertexBuffer(ctx, renderer, mesh)
  recordCommandBuffers(ctx, renderer)

proc updateCamera(camera: var CameraState, window: windy.Window) =
  if window.buttonDown[MouseLeft]:
    let delta = window.mouseDelta
    camera.yaw += delta.x.float32 * RotateScale
    camera.pitch = clamp(
      camera.pitch + delta.y.float32 * RotateScale,
      MinPitch,
      MaxPitch
    )

  let scroll = window.scrollDelta
  if scroll.y != 0.0'f32:
    camera.distance = clamp(
      camera.distance - scroll.y.float32 * ZoomScale,
      MinDistance,
      MaxDistance
    )

proc updateTransform(renderer: var ObjRenderer, camera: CameraState, aspect: float32) =
  let
    cosPitch = cos(camera.pitch)
    eye = vec3(
      sin(camera.yaw) * cosPitch * camera.distance,
      sin(camera.pitch) * camera.distance,
      cos(camera.yaw) * cosPitch * camera.distance
    )
    target = vec3(0.0'f32, 0.0'f32, 0.0'f32)
    model = identityMatrix()
    cameraAngles = toAngles(eye, target)
    view = inverse(translate(eye) * fromAngles(cameraAngles))
    proj = perspectiveDx(60.0'f32.toRadians, aspect, 0.1'f32, 100.0'f32)
    mvp = proj * view * model
  renderer.transform = packTransforms(mvp, model)

proc recordCurrentFrame(ctx: var VulkanContext, renderer: var ObjRenderer, imageIndex: uint32) =
  let commandBuffer = renderer.commandBuffers[imageIndex]
  discard vkResetCommandBuffer(commandBuffer, VkCommandBufferResetFlags(0))
  var beginInfo = VkCommandBufferBeginInfo(sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO)
  checkVk(vkBeginCommandBuffer(commandBuffer, beginInfo.addr), "Beginning OBJ command buffer")

  var clearValues = @[
    VkClearValue(color: VkClearColorValue(float32: ClearColor)),
    VkClearValue(depthStencil: VkClearDepthStencilValue(depth: 1.0'f32, stencil: 0))
  ]
  var renderPassInfo = VkRenderPassBeginInfo(
    sType: VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO,
    renderPass: renderer.renderPass,
    framebuffer: renderer.framebuffers[imageIndex],
    renderArea: VkRect2D(offset: VkOffset2D(x: 0, y: 0), extent: ctx.swapChainExtent),
    clearValueCount: uint32(clearValues.len),
    pClearValues: clearValues[0].addr
  )
  var vertexBuffers = [renderer.vertexBuffer]
  var offsets = [VkDeviceSize(0)]

  vkCmdBeginRenderPass(commandBuffer, renderPassInfo.addr, VK_SUBPASS_CONTENTS_INLINE)
  vkCmdBindPipeline(commandBuffer, VK_PIPELINE_BIND_POINT_GRAPHICS, renderer.pipeline)
  vkCmdPushConstants(
    commandBuffer,
    renderer.pipelineLayout,
    VkShaderStageFlags(VK_SHADER_STAGE_VERTEX_BIT),
    0,
    uint32(sizeof(renderer.transform)),
    unsafeAddr renderer.transform[0]
  )
  vkCmdBindVertexBuffers(commandBuffer, 0, 1, vertexBuffers[0].addr, offsets[0].addr)
  vkCmdDraw(commandBuffer, renderer.vertexCount, 1, 0, 0)
  vkCmdEndRenderPass(commandBuffer)
  checkVk(vkEndCommandBuffer(commandBuffer), "Ending OBJ command buffer")

proc drawFrame(ctx: var VulkanContext, renderer: var ObjRenderer): bool =
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
  checkVk(vkQueueSubmit(ctx.graphicsQueue, 1, submitInfo.addr, fence), "Submitting OBJ command buffer")

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
    checkVk(presentResult, "Presenting OBJ frame")
  ctx.currentFrame = (ctx.currentFrame + 1) mod FRAME_COUNT
  needsRecreate

proc shutdown(ctx: VulkanContext, renderer: var ObjRenderer) =
  destroySwapChainResources(ctx, renderer)
  if renderer.vertexBuffer.int64 != 0:
    vkDestroyBuffer(ctx.device, renderer.vertexBuffer, nil)
  if renderer.vertexBufferMemory.int64 != 0:
    vkFreeMemory(ctx.device, renderer.vertexBufferMemory, nil)

when isMainModule:
  let window = newWindow("Vulkan 1.4 - Bunny Viewer", ivec2(Width.int32, Height.int32))

  let hwnd = window.getHWND()
  if hwnd == 0:
    raise newException(Exception, "Failed to acquire HWND from window")

  let mesh = loadObjMesh(objPath())

  var ctx: VulkanContext
  ctx.initDevice(hwnd, Width, Height)

  var renderer: ObjRenderer
  initRenderer(ctx, renderer, mesh)

  var camera = CameraState(
    yaw: 0.0'f32,
    pitch: 0.15'f32,
    distance: 2.8'f32
  )

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

      updateCamera(camera, window)
      let aspect = ctx.swapChainExtent.width.float32 / max(1'u32, ctx.swapChainExtent.height).float32
      updateTransform(renderer, camera, aspect)
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

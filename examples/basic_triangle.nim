## Vulkan 1.4 triangle example using dynamic rendering and Synchronization2.

import
  windy,
  vk14

type
  TriangleVertex = object
    position: array[3, float32]
    color: array[3, float32]

  TriangleRenderer = object
    pipelineLayout: VkPipelineLayout
    pipeline: VkPipeline
    imageViews: seq[VkImageView]
    vertexBuffer: VkBuffer
    vertexBufferMemory: VkDeviceMemory

const
  Width = 1280
  Height = 800
  ClearColor = [0.05'f32, 0.05'f32, 0.1'f32, 1.0'f32]
  Vertices = [
    TriangleVertex(
      position: [0.0'f32, 0.5'f32, 0.0'f32],
      color: [1.0'f32, 0.0'f32, 0.0'f32],
    ),
    TriangleVertex(
      position: [0.5'f32, -0.5'f32, 0.0'f32],
      color: [0.0'f32, 1.0'f32, 0.0'f32],
    ),
    TriangleVertex(
      position: [-0.5'f32, -0.5'f32, 0.0'f32],
      color: [0.0'f32, 0.0'f32, 1.0'f32],
    ),
  ]

proc findMemoryType(
  ctx: VulkanContext, typeFilter: uint32, properties: uint32
): uint32 =
  ## Finds a suitable memory type matching the filter and properties.
  var memProperties: VkPhysicalDeviceMemoryProperties
  vkGetPhysicalDeviceMemoryProperties(
    ctx.physicalDevice, memProperties.addr)

  for i in 0'u32 ..< memProperties.memoryTypeCount:
    let flags = memProperties.memoryTypes[i].propertyFlags.uint32
    if ((typeFilter shr i) and 1'u32) == 1'u32 and
       (flags and properties) == properties:
      return i

  raise newException(Exception,
    "Failed to find suitable Vulkan memory type")

proc createShaderModule(
  device: VkDevice, code: string
): VkShaderModule =
  ## Creates a shader module from SPIR-V bytecode.
  var createInfo = VkShaderModuleCreateInfo(
    sType: VK_STRUCTURE_TYPE_SHADER_MODULE_CREATE_INFO,
    codeSize: code.len.uint32,
    pCode: cast[ptr uint32](code[0].unsafeAddr),
  )
  checkVk(
    vkCreateShaderModule(
      device, createInfo.addr, nil, result.addr),
    "Creating shader module",
  )

proc createImageViews(
  ctx: VulkanContext, renderer: var TriangleRenderer
) =
  ## Creates image views for all swapchain images.
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
        a: VK_COMPONENT_SWIZZLE_IDENTITY,
      ),
      subresourceRange: VkImageSubresourceRange(
        aspectMask: VkImageAspectFlags(
          VK_IMAGE_ASPECT_COLOR_BIT),
        baseMipLevel: 0,
        levelCount: 1,
        baseArrayLayer: 0,
        layerCount: 1,
      ),
    )
    checkVk(
      vkCreateImageView(
        ctx.device, createInfo.addr, nil,
        renderer.imageViews[i].addr),
      "Creating image view",
    )

proc destroySwapChainResources(
  ctx: VulkanContext, renderer: var TriangleRenderer
) =
  ## Destroys swapchain-dependent rendering resources.
  for imageView in renderer.imageViews:
    vkDestroyImageView(ctx.device, imageView, nil)
  renderer.imageViews.setLen(0)
  if renderer.pipeline.int64 != 0:
    vkDestroyPipeline(ctx.device, renderer.pipeline, nil)
    renderer.pipeline = VkPipeline(0)
  if renderer.pipelineLayout.int64 != 0:
    vkDestroyPipelineLayout(
      ctx.device, renderer.pipelineLayout, nil
    )
    renderer.pipelineLayout = VkPipelineLayout(0)

proc createGraphicsPipeline(
  ctx: VulkanContext, renderer: var TriangleRenderer
) =
  ## Creates a graphics pipeline for dynamic rendering.
  const
    VertShaderCode = staticRead("shaders/basic_triangle.vert.spv")
    FragShaderCode = staticRead("shaders/basic_triangle.frag.spv")

  let
    vertModule = createShaderModule(ctx.device, VertShaderCode)
    fragModule = createShaderModule(ctx.device, FragShaderCode)

  try:
    var
      colorFormat = ctx.swapChainImageFormat
      renderingInfo = VkPipelineRenderingCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_RENDERING_CREATE_INFO,
        colorAttachmentCount: 1,
        pColorAttachmentFormats: colorFormat.addr,
      )
      dynamicStates = [
        VkDynamicState(VK_DYNAMIC_STATE_VIEWPORT),
        VkDynamicState(VK_DYNAMIC_STATE_SCISSOR),
      ]
      dynamicState = VkPipelineDynamicStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_DYNAMIC_STATE_CREATE_INFO,
        dynamicStateCount: uint32(dynamicStates.len),
        pDynamicStates: dynamicStates[0].addr,
      )

    var
      vertStageInfo = VkPipelineShaderStageCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
        stage: VK_SHADER_STAGE_VERTEX_BIT,
        module: vertModule,
        pName: "main",
      )
      fragStageInfo = VkPipelineShaderStageCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_SHADER_STAGE_CREATE_INFO,
        stage: VK_SHADER_STAGE_FRAGMENT_BIT,
        module: fragModule,
        pName: "main",
      )
      shaderStages = [vertStageInfo, fragStageInfo]
      bindingDesc = VkVertexInputBindingDescription(
        binding: 0,
        stride: uint32(sizeof(TriangleVertex)),
        inputRate: VK_VERTEX_INPUT_RATE_VERTEX,
      )
      attrDescs = [
        VkVertexInputAttributeDescription(
          location: 0, binding: 0,
          format: VK_FORMAT_R32G32B32_SFLOAT,
          offset: 0,
        ),
        VkVertexInputAttributeDescription(
          location: 1, binding: 0,
          format: VK_FORMAT_R32G32B32_SFLOAT,
          offset: uint32(sizeof(array[3, float32])),
        ),
      ]
      vertexInputInfo = VkPipelineVertexInputStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_VERTEX_INPUT_STATE_CREATE_INFO,
        vertexBindingDescriptionCount: 1,
        pVertexBindingDescriptions: bindingDesc.addr,
        vertexAttributeDescriptionCount: uint32(attrDescs.len),
        pVertexAttributeDescriptions: attrDescs[0].addr,
      )
      inputAssembly = VkPipelineInputAssemblyStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_INPUT_ASSEMBLY_STATE_CREATE_INFO,
        topology: VK_PRIMITIVE_TOPOLOGY_TRIANGLE_LIST,
        primitiveRestartEnable: VkBool32(VK_FALSE),
      )
      viewportState = VkPipelineViewportStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO,
        viewportCount: 1,
        scissorCount: 1,
      )
      rasterizer = VkPipelineRasterizationStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_RASTERIZATION_STATE_CREATE_INFO,
        depthClampEnable: VkBool32(VK_FALSE),
        rasterizerDiscardEnable: VkBool32(VK_FALSE),
        polygonMode: VK_POLYGON_MODE_FILL,
        lineWidth: 1.0,
        cullMode: VkCullModeFlags(VK_CULL_MODE_BACK_BIT),
        frontFace: VK_FRONT_FACE_CLOCKWISE,
        depthBiasEnable: VkBool32(VK_FALSE),
      )
      multisampling = VkPipelineMultisampleStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_MULTISAMPLE_STATE_CREATE_INFO,
        sampleShadingEnable: VkBool32(VK_FALSE),
        rasterizationSamples: VK_SAMPLE_COUNT_1_BIT,
      )
      colorBlendAttachment = VkPipelineColorBlendAttachmentState(
        colorWriteMask: VkColorComponentFlags(0x0000000F),
        blendEnable: VkBool32(VK_FALSE),
        srcColorBlendFactor: VK_BLEND_FACTOR_ONE,
        dstColorBlendFactor: VK_BLEND_FACTOR_ZERO,
        colorBlendOp: VK_BLEND_OP_ADD,
        srcAlphaBlendFactor: VK_BLEND_FACTOR_ONE,
        dstAlphaBlendFactor: VK_BLEND_FACTOR_ZERO,
        alphaBlendOp: VK_BLEND_OP_ADD,
      )
      colorBlending = VkPipelineColorBlendStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_COLOR_BLEND_STATE_CREATE_INFO,
        logicOpEnable: VkBool32(VK_FALSE),
        logicOp: VK_LOGIC_OP_COPY,
        attachmentCount: 1,
        pAttachments: colorBlendAttachment.addr,
        blendConstants: [0.0'f32, 0.0'f32, 0.0'f32, 0.0'f32],
      )
      pipelineLayoutInfo = VkPipelineLayoutCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_LAYOUT_CREATE_INFO,
      )

    checkVk(
      vkCreatePipelineLayout(
        ctx.device, pipelineLayoutInfo.addr, nil,
        renderer.pipelineLayout.addr),
      "Creating pipeline layout",
    )

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
      pColorBlendState: colorBlending.addr,
      pDynamicState: dynamicState.addr,
      layout: renderer.pipelineLayout,
    )

    checkVk(
      vkCreateGraphicsPipelines(
        ctx.device, VkPipelineCache(0), 1,
        pipelineInfo.addr, nil, renderer.pipeline.addr),
      "Creating graphics pipeline",
    )
  finally:
    vkDestroyShaderModule(ctx.device, vertModule, nil)
    vkDestroyShaderModule(ctx.device, fragModule, nil)

proc createVertexBuffer(
  ctx: VulkanContext, renderer: var TriangleRenderer
) =
  ## Creates and fills the vertex buffer.
  let bufferSize = VkDeviceSize(sizeof(Vertices))

  var bufferInfo = VkBufferCreateInfo(
    sType: VK_STRUCTURE_TYPE_BUFFER_CREATE_INFO,
    size: bufferSize,
    usage: VkBufferUsageFlags(VK_BUFFER_USAGE_VERTEX_BUFFER_BIT),
    sharingMode: VK_SHARING_MODE_EXCLUSIVE,
  )
  checkVk(
    vkCreateBuffer(
      ctx.device, bufferInfo.addr, nil,
      renderer.vertexBuffer.addr),
    "Creating vertex buffer",
  )

  var memRequirements: VkMemoryRequirements
  vkGetBufferMemoryRequirements(
    ctx.device, renderer.vertexBuffer, memRequirements.addr)

  var allocInfo = VkMemoryAllocateInfo(
    sType: VK_STRUCTURE_TYPE_MEMORY_ALLOCATE_INFO,
    allocationSize: memRequirements.size,
    memoryTypeIndex: findMemoryType(
      ctx, memRequirements.memoryTypeBits,
      VK_MEMORY_PROPERTY_HOST_VISIBLE_BIT or
        VK_MEMORY_PROPERTY_HOST_COHERENT_BIT),
  )
  checkVk(
    vkAllocateMemory(
      ctx.device, allocInfo.addr, nil,
      renderer.vertexBufferMemory.addr),
    "Allocating vertex buffer memory",
  )
  checkVk(
    vkBindBufferMemory(
      ctx.device, renderer.vertexBuffer,
      renderer.vertexBufferMemory, VkDeviceSize(0)),
    "Binding vertex buffer memory",
  )

  var mapped: pointer
  checkVk(
    vkMapMemory(
      ctx.device, renderer.vertexBufferMemory,
      VkDeviceSize(0), bufferSize,
      VkMemoryMapFlags(0), mapped.addr),
    "Mapping vertex buffer memory",
  )
  copyMem(mapped, unsafeAddr Vertices[0], sizeof(Vertices))
  vkUnmapMemory(ctx.device, renderer.vertexBufferMemory)

proc requiresSwapChainRecreate(vkResult: VkResult): bool =
  ## Returns true when the swapchain must be recreated.
  let code = vkResult.int32
  code == VK_SUBOPTIMAL_KHR.int32 or
    code == VK_ERROR_OUT_OF_DATE_KHR.int32

proc recordTriangleCommands(
  ctx: VulkanContext, renderer: var TriangleRenderer
) =
  ## Records one frame using dynamic rendering and Synchronization2.
  let frame = ctx.currentFrame
  let commandBuffer = ctx.commandBuffers[frame]

  var imageIndex: uint32
  let acquireResult = vkAcquireNextImageKHR(
    ctx.device,
    ctx.swapChain,
    uint64.high,
    ctx.imageAvailableSemaphores[frame],
    VkFence(0),
    imageIndex.addr,
  )
  if requiresSwapChainRecreate(acquireResult):
    raise newException(Exception, "RECREATE_SWAPCHAIN")
  checkVk(acquireResult, "Acquiring next swapchain image")

  discard vkResetCommandBuffer(
    commandBuffer,
    VkCommandBufferResetFlags(0)
  )

  var beginInfo = VkCommandBufferBeginInfo(
    sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
  )
  checkVk(
    vkBeginCommandBuffer(commandBuffer, beginInfo.addr),
    "Beginning triangle command buffer",
  )

  let subresourceRange = VkImageSubresourceRange(
    aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT),
    baseMipLevel: 0,
    levelCount: 1,
    baseArrayLayer: 0,
    layerCount: 1,
  )

  var toAttachment = VkImageMemoryBarrier2(
    sType: VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
    srcStageMask: VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_NONE),
    srcAccessMask: VkAccessFlags2(VK_ACCESS_2_NONE),
    dstStageMask: VkPipelineStageFlags2(
      VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT
    ),
    dstAccessMask: VkAccessFlags2(
      VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT
    ),
    oldLayout: VK_IMAGE_LAYOUT_UNDEFINED,
    newLayout: VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL,
    srcQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    dstQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    image: ctx.swapChainImages[imageIndex],
    subresourceRange: subresourceRange,
  )
  var dependencyInfo = VkDependencyInfo(
    sType: VK_STRUCTURE_TYPE_DEPENDENCY_INFO,
    imageMemoryBarrierCount: 1,
    pImageMemoryBarriers: toAttachment.addr,
  )
  vkCmdPipelineBarrier2(commandBuffer, dependencyInfo.addr)

  var
    clearValue = VkClearValue(
      color: VkClearColorValue(float32: ClearColor)
    )
    colorAttachment = VkRenderingAttachmentInfo(
      sType: VK_STRUCTURE_TYPE_RENDERING_ATTACHMENT_INFO,
      imageView: renderer.imageViews[imageIndex],
      imageLayout: VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL,
      loadOp: VK_ATTACHMENT_LOAD_OP_CLEAR,
      storeOp: VK_ATTACHMENT_STORE_OP_STORE,
      clearValue: clearValue,
    )
    renderingInfo = VkRenderingInfo(
      sType: VK_STRUCTURE_TYPE_RENDERING_INFO,
      renderArea: VkRect2D(
        offset: VkOffset2D(x: 0, y: 0),
        extent: ctx.swapChainExtent,
      ),
      layerCount: 1,
      colorAttachmentCount: 1,
      pColorAttachments: colorAttachment.addr,
    )
    viewport = VkViewport(
      x: 0,
      y: ctx.swapChainExtent.height.float32,
      width: ctx.swapChainExtent.width.float32,
      height: -ctx.swapChainExtent.height.float32,
      minDepth: 0,
      maxDepth: 1,
    )
    scissor = VkRect2D(
      offset: VkOffset2D(x: 0, y: 0),
      extent: ctx.swapChainExtent,
    )
    vertexBuffers = [renderer.vertexBuffer]
    offsets = [VkDeviceSize(0)]

  vkCmdBeginRendering(commandBuffer, renderingInfo.addr)
  vkCmdSetViewport(commandBuffer, 0, 1, viewport.addr)
  vkCmdSetScissor(commandBuffer, 0, 1, scissor.addr)
  vkCmdBindPipeline(
    commandBuffer,
    VK_PIPELINE_BIND_POINT_GRAPHICS,
    renderer.pipeline
  )
  vkCmdBindVertexBuffers(
    commandBuffer,
    0,
    1,
    vertexBuffers[0].addr,
    offsets[0].addr
  )
  vkCmdDraw(commandBuffer, 3, 1, 0, 0)
  vkCmdEndRendering(commandBuffer)

  var toPresent = VkImageMemoryBarrier2(
    sType: VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER_2,
    srcStageMask: VkPipelineStageFlags2(
      VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT
    ),
    srcAccessMask: VkAccessFlags2(
      VK_ACCESS_2_COLOR_ATTACHMENT_WRITE_BIT
    ),
    dstStageMask: VkPipelineStageFlags2(VK_PIPELINE_STAGE_2_NONE),
    dstAccessMask: VkAccessFlags2(VK_ACCESS_2_NONE),
    oldLayout: VK_IMAGE_LAYOUT_ATTACHMENT_OPTIMAL,
    newLayout: VK_IMAGE_LAYOUT_PRESENT_SRC_KHR,
    srcQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    dstQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    image: ctx.swapChainImages[imageIndex],
    subresourceRange: subresourceRange,
  )
  dependencyInfo.pImageMemoryBarriers = toPresent.addr
  vkCmdPipelineBarrier2(commandBuffer, dependencyInfo.addr)

  checkVk(
    vkEndCommandBuffer(commandBuffer),
    "Ending triangle command buffer",
  )

  var
    waitInfo = VkSemaphoreSubmitInfo(
      sType: VK_STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO,
      semaphore: ctx.imageAvailableSemaphores[frame],
      stageMask: VkPipelineStageFlags2(
        VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT
      ),
      value: 0,
      deviceIndex: 0,
    )
    commandBufferInfo = VkCommandBufferSubmitInfo(
      sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_SUBMIT_INFO,
      commandBuffer: commandBuffer,
      deviceMask: 0,
    )
    signalInfo = VkSemaphoreSubmitInfo(
      sType: VK_STRUCTURE_TYPE_SEMAPHORE_SUBMIT_INFO,
      semaphore: ctx.renderFinishedSemaphores[frame],
      stageMask: VkPipelineStageFlags2(
        VK_PIPELINE_STAGE_2_COLOR_ATTACHMENT_OUTPUT_BIT
      ),
      value: 0,
      deviceIndex: 0,
    )
    submitInfo = VkSubmitInfo2(
      sType: VK_STRUCTURE_TYPE_SUBMIT_INFO_2,
      waitSemaphoreInfoCount: 1,
      pWaitSemaphoreInfos: waitInfo.addr,
      commandBufferInfoCount: 1,
      pCommandBufferInfos: commandBufferInfo.addr,
      signalSemaphoreInfoCount: 1,
      pSignalSemaphoreInfos: signalInfo.addr,
    )
  checkVk(
    vkQueueSubmit2(ctx.graphicsQueue, 1, submitInfo.addr, ctx.inFlightFences[frame]),
    "Submitting triangle command buffer",
  )

  var
    swapChains = [ctx.swapChain]
    presentInfo = VkPresentInfoKHR(
      sType: VK_STRUCTURE_TYPE_PRESENT_INFO_KHR,
      waitSemaphoreCount: 1,
      pWaitSemaphores: signalInfo.semaphore.addr,
      swapchainCount: 1,
      pSwapchains: swapChains[0].addr,
      pImageIndices: imageIndex.addr,
    )
  let presentResult = vkQueuePresentKHR(ctx.presentQueue, presentInfo.addr)
  if requiresSwapChainRecreate(presentResult):
    raise newException(Exception, "RECREATE_SWAPCHAIN")
  checkVk(presentResult, "Presenting triangle frame")

proc initRenderer(
  ctx: VulkanContext, renderer: var TriangleRenderer
) =
  ## Initializes all rendering resources.
  createImageViews(ctx, renderer)
  createGraphicsPipeline(ctx, renderer)
  createVertexBuffer(ctx, renderer)

proc recreateRenderer(
  ctx: var VulkanContext,
  renderer: var TriangleRenderer,
  width, height: int
) =
  ## Recreates swapchain-dependent resources after resize.
  discard vkDeviceWaitIdle(ctx.device)
  destroySwapChainResources(ctx, renderer)
  recreateSwapChain(ctx, width, height)
  createImageViews(ctx, renderer)
  createGraphicsPipeline(ctx, renderer)

proc drawFrame(
  ctx: var VulkanContext, renderer: var TriangleRenderer
): bool =
  ## Acquires, records, submits, and presents a frame.
  let frame = ctx.currentFrame
  let fence = ctx.inFlightFences[frame]

  discard vkWaitForFences(
    ctx.device, 1, unsafeAddr fence,
    VkBool32(VK_TRUE), uint64.high)
  discard vkResetFences(ctx.device, 1, unsafeAddr fence)
  try:
    recordTriangleCommands(ctx, renderer)
  except Exception as exc:
    if exc.msg == "RECREATE_SWAPCHAIN":
      return true
    raise

  ctx.currentFrame = (ctx.currentFrame + 1) mod FRAME_COUNT
  false

proc shutdown(
  ctx: VulkanContext, renderer: var TriangleRenderer
) =
  ## Releases all rendering resources.
  destroySwapChainResources(ctx, renderer)
  if renderer.vertexBuffer.int64 != 0:
    vkDestroyBuffer(ctx.device, renderer.vertexBuffer, nil)
  if renderer.vertexBufferMemory.int64 != 0:
    vkFreeMemory(
      ctx.device, renderer.vertexBufferMemory, nil)

when isMainModule:
  let window = newWindow(
    "Vulkan 1.4 - Basic Triangle",
    ivec2(Width.int32, Height.int32),
  )

  let hwnd = window.getHWND()
  if hwnd == 0:
    raise newException(Exception,
      "Failed to acquire HWND from window")

  var ctx: VulkanContext
  ctx.initDevice(hwnd, Width, Height)

  var renderer: TriangleRenderer
  initRenderer(ctx, renderer)
  var pendingResize = false
  window.onResize = proc() =
    pendingResize = true

  try:
    while not window.closeRequested:
      pollEvents()
      if pendingResize:
        let size = window.size
        if size.x > 0 and size.y > 0:
          recreateRenderer(ctx, renderer, size.x.int, size.y.int)
          pendingResize = false
        else:
          continue
      if drawFrame(ctx, renderer):
        let size = window.size
        if size.x > 0 and size.y > 0:
          recreateRenderer(ctx, renderer, size.x.int, size.y.int)
        else:
          pendingResize = true
  finally:
    shutdown(ctx, renderer)
    ctx.cleanup()

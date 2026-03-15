## Vulkan triangle example using auto-generated vk14 bindings.

import
  windy,
  vk14

type
  TriangleVertex = object
    position: array[3, float32]
    color: array[3, float32]

  TriangleRenderer = object
    renderPass: VkRenderPass
    pipelineLayout: VkPipelineLayout
    pipeline: VkPipeline
    imageViews: seq[VkImageView]
    framebuffers: seq[VkFramebuffer]
    commandBuffers: seq[VkCommandBuffer]
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

proc createRenderPass(
  ctx: VulkanContext, renderer: var TriangleRenderer
) =
  ## Creates a render pass with a single color attachment.
  var
    colorAttachment = VkAttachmentDescription(
      format: ctx.swapChainImageFormat,
      samples: VK_SAMPLE_COUNT_1_BIT,
      loadOp: VK_ATTACHMENT_LOAD_OP_CLEAR,
      storeOp: VK_ATTACHMENT_STORE_OP_STORE,
      stencilLoadOp: VK_ATTACHMENT_LOAD_OP_DONT_CARE,
      stencilStoreOp: VK_ATTACHMENT_STORE_OP_DONT_CARE,
      initialLayout: VK_IMAGE_LAYOUT_UNDEFINED,
      finalLayout: VK_IMAGE_LAYOUT_PRESENT_SRC_KHR,
    )
    colorAttachmentRef = VkAttachmentReference(
      attachment: 0,
      layout: VK_IMAGE_LAYOUT_COLOR_ATTACHMENT_OPTIMAL,
    )
    subpass = VkSubpassDescription(
      pipelineBindPoint: VK_PIPELINE_BIND_POINT_GRAPHICS,
      colorAttachmentCount: 1,
      pColorAttachments: colorAttachmentRef.addr,
    )
    dependency = VkSubpassDependency(
      srcSubpass: VK_SUBPASS_EXTERNAL,
      dstSubpass: 0,
      srcStageMask: VkPipelineStageFlags(
        VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT),
      srcAccessMask: VkAccessFlags(0),
      dstStageMask: VkPipelineStageFlags(
        VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT),
      dstAccessMask: VkAccessFlags(
        VK_ACCESS_COLOR_ATTACHMENT_WRITE_BIT),
    )
    renderPassInfo = VkRenderPassCreateInfo(
      sType: VK_STRUCTURE_TYPE_RENDER_PASS_CREATE_INFO,
      attachmentCount: 1,
      pAttachments: colorAttachment.addr,
      subpassCount: 1,
      pSubpasses: subpass.addr,
      dependencyCount: 1,
      pDependencies: dependency.addr,
    )

  checkVk(
    vkCreateRenderPass(
      ctx.device, renderPassInfo.addr, nil,
      renderer.renderPass.addr),
    "Creating render pass",
  )

proc createGraphicsPipeline(
  ctx: VulkanContext, renderer: var TriangleRenderer
) =
  ## Creates the triangle graphics pipeline.
  const
    VertShaderCode = staticRead("shaders/basic_triangle.vert.spv")
    FragShaderCode = staticRead("shaders/basic_triangle.frag.spv")

  let
    vertModule = createShaderModule(ctx.device, VertShaderCode)
    fragModule = createShaderModule(ctx.device, FragShaderCode)

  try:
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
      viewportState = VkPipelineViewportStateCreateInfo(
        sType: VK_STRUCTURE_TYPE_PIPELINE_VIEWPORT_STATE_CREATE_INFO,
        viewportCount: 1,
        pViewports: viewport.addr,
        scissorCount: 1,
        pScissors: scissor.addr,
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
      stageCount: uint32(shaderStages.len),
      pStages: shaderStages[0].addr,
      pVertexInputState: vertexInputInfo.addr,
      pInputAssemblyState: inputAssembly.addr,
      pViewportState: viewportState.addr,
      pRasterizationState: rasterizer.addr,
      pMultisampleState: multisampling.addr,
      pColorBlendState: colorBlending.addr,
      layout: renderer.pipelineLayout,
      renderPass: renderer.renderPass,
      subpass: 0,
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

proc createFramebuffers(
  ctx: VulkanContext, renderer: var TriangleRenderer
) =
  ## Creates framebuffers for each swapchain image view.
  renderer.framebuffers.setLen(renderer.imageViews.len)

  for i, imageView in renderer.imageViews:
    var
      attachments = [imageView]
      framebufferInfo = VkFramebufferCreateInfo(
        sType: VK_STRUCTURE_TYPE_FRAMEBUFFER_CREATE_INFO,
        renderPass: renderer.renderPass,
        attachmentCount: 1,
        pAttachments: attachments[0].addr,
        width: ctx.swapChainExtent.width,
        height: ctx.swapChainExtent.height,
        layers: 1,
      )
    checkVk(
      vkCreateFramebuffer(
        ctx.device, framebufferInfo.addr, nil,
        renderer.framebuffers[i].addr),
      "Creating framebuffer",
    )

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

proc recordCommandBuffers(
  ctx: VulkanContext, renderer: var TriangleRenderer
) =
  ## Pre-records command buffers for each framebuffer.
  renderer.commandBuffers.setLen(renderer.framebuffers.len)

  var allocInfo = VkCommandBufferAllocateInfo(
    sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
    commandPool: ctx.commandPool,
    level: VK_COMMAND_BUFFER_LEVEL_PRIMARY,
    commandBufferCount: uint32(renderer.commandBuffers.len),
  )
  checkVk(
    vkAllocateCommandBuffers(
      ctx.device, allocInfo.addr,
      renderer.commandBuffers[0].addr),
    "Allocating triangle command buffers",
  )

  for i in 0 ..< renderer.commandBuffers.len:
    var beginInfo = VkCommandBufferBeginInfo(
      sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
    )
    checkVk(
      vkBeginCommandBuffer(
        renderer.commandBuffers[i], beginInfo.addr),
      "Beginning triangle command buffer",
    )

    var
      clearValue = VkClearValue(
        color: VkClearColorValue(float32: ClearColor))
      renderPassInfo = VkRenderPassBeginInfo(
        sType: VK_STRUCTURE_TYPE_RENDER_PASS_BEGIN_INFO,
        renderPass: renderer.renderPass,
        framebuffer: renderer.framebuffers[i],
        renderArea: VkRect2D(
          offset: VkOffset2D(x: 0, y: 0),
          extent: ctx.swapChainExtent),
        clearValueCount: 1,
        pClearValues: clearValue.addr,
      )
      vertexBuffers = [renderer.vertexBuffer]
      offsets = [VkDeviceSize(0)]

    vkCmdBeginRenderPass(
      renderer.commandBuffers[i], renderPassInfo.addr,
      VK_SUBPASS_CONTENTS_INLINE)
    vkCmdBindPipeline(
      renderer.commandBuffers[i],
      VK_PIPELINE_BIND_POINT_GRAPHICS, renderer.pipeline)
    vkCmdBindVertexBuffers(
      renderer.commandBuffers[i], 0, 1,
      vertexBuffers[0].addr, offsets[0].addr)
    vkCmdDraw(renderer.commandBuffers[i], 3, 1, 0, 0)
    vkCmdEndRenderPass(renderer.commandBuffers[i])

    checkVk(
      vkEndCommandBuffer(renderer.commandBuffers[i]),
      "Ending triangle command buffer",
    )

proc initRenderer(
  ctx: VulkanContext, renderer: var TriangleRenderer
) =
  ## Initializes all rendering resources.
  createImageViews(ctx, renderer)
  createRenderPass(ctx, renderer)
  createGraphicsPipeline(ctx, renderer)
  createFramebuffers(ctx, renderer)
  createVertexBuffer(ctx, renderer)
  recordCommandBuffers(ctx, renderer)

proc drawFrame(
  ctx: var VulkanContext, renderer: TriangleRenderer
) =
  ## Acquires, submits, and presents a frame.
  let frame = ctx.currentFrame
  let fence = ctx.inFlightFences[frame]

  discard vkWaitForFences(
    ctx.device, 1, unsafeAddr fence,
    VkBool32(VK_TRUE), uint64.high)
  discard vkResetFences(ctx.device, 1, unsafeAddr fence)

  var imageIndex: uint32
  checkVk(
    vkAcquireNextImageKHR(
      ctx.device, ctx.swapChain, uint64.high,
      ctx.imageAvailableSemaphores[frame],
      VkFence(0), imageIndex.addr),
    "Acquiring next swapchain image",
  )

  var
    waitSemaphores = [ctx.imageAvailableSemaphores[frame]]
    waitStages: array[1, VkPipelineStageFlags] = [
      VkPipelineStageFlags(
        VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT)]
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
      pSignalSemaphores: signalSemaphores[0].addr,
    )
  checkVk(
    vkQueueSubmit(ctx.graphicsQueue, 1, submitInfo.addr, fence),
    "Submitting triangle command buffer",
  )

  var
    swapChains = [ctx.swapChain]
    presentInfo = VkPresentInfoKHR(
      sType: VK_STRUCTURE_TYPE_PRESENT_INFO_KHR,
      waitSemaphoreCount: 1,
      pWaitSemaphores: signalSemaphores[0].addr,
      swapchainCount: 1,
      pSwapchains: swapChains[0].addr,
      pImageIndices: imageIndex.addr,
    )
  checkVk(
    vkQueuePresentKHR(ctx.presentQueue, presentInfo.addr),
    "Presenting triangle frame",
  )

  ctx.currentFrame = (ctx.currentFrame + 1) mod FRAME_COUNT

proc shutdown(
  ctx: VulkanContext, renderer: var TriangleRenderer
) =
  ## Releases all rendering resources.
  for framebuffer in renderer.framebuffers:
    vkDestroyFramebuffer(ctx.device, framebuffer, nil)
  for imageView in renderer.imageViews:
    vkDestroyImageView(ctx.device, imageView, nil)
  if renderer.pipeline.int64 != 0:
    vkDestroyPipeline(ctx.device, renderer.pipeline, nil)
  if renderer.pipelineLayout.int64 != 0:
    vkDestroyPipelineLayout(
      ctx.device, renderer.pipelineLayout, nil)
  if renderer.renderPass.int64 != 0:
    vkDestroyRenderPass(
      ctx.device, renderer.renderPass, nil)
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

  try:
    while not window.closeRequested:
      pollEvents()
      drawFrame(ctx, renderer)
  finally:
    shutdown(ctx, renderer)
    ctx.cleanup()

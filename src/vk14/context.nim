## High-level Vulkan context for easy device, swapchain, and sync setup.
## Ported from vulkan_examples/vulkan_context.nim to use the vk14 bindings.

import std/sets
when defined(windows):
  import windy/platforms/win32/windefs
import types, commands, features, loader, extras

type
  QueueFamilyIndices = object
    graphicsFamily: uint32
    graphicsFamilyFound: bool
    presentFamily: uint32
    presentFamilyFound: bool

  SwapChainSupportDetails = object
    capabilities: VkSurfaceCapabilitiesKHR
    formats: seq[VkSurfaceFormatKHR]
    presentModes: seq[VkPresentModeKHR]

  VulkanContext* = object
    instance*: VkInstance
    physicalDevice*: VkPhysicalDevice
    device*: VkDevice
    surface*: VkSurfaceKHR
    graphicsQueue*: VkQueue
    presentQueue*: VkQueue
    swapChain*: VkSwapchainKHR
    swapChainImages*: seq[VkImage]
    swapChainImageFormat*: VkFormat
    swapChainExtent*: VkExtent2D
    commandPool*: VkCommandPool
    commandBuffers*: array[FRAME_COUNT, VkCommandBuffer]
    imageAvailableSemaphores*: array[FRAME_COUNT, VkSemaphore]
    renderFinishedSemaphores*: array[FRAME_COUNT, VkSemaphore]
    inFlightFences*: array[FRAME_COUNT, VkFence]
    currentFrame*: int
    vsync*: bool

proc isComplete(indices: QueueFamilyIndices): bool =
  ## Returns true when both queue families are found.
  indices.graphicsFamilyFound and indices.presentFamilyFound

proc findQueueFamilies(
  pDevice: VkPhysicalDevice, surface: VkSurfaceKHR
): QueueFamilyIndices =
  ## Finds graphics and present queue family indices.
  var queueFamilyCount: uint32 = 0
  vkGetPhysicalDeviceQueueFamilyProperties(
    pDevice, queueFamilyCount.addr, nil)
  var queueFamilies = newSeq[VkQueueFamilyProperties](queueFamilyCount)
  vkGetPhysicalDeviceQueueFamilyProperties(
    pDevice, queueFamilyCount.addr, queueFamilies[0].addr)

  var index: uint32 = 0
  for queueFamily in queueFamilies:
    if (queueFamily.queueFlags.uint32 and
        VK_QUEUE_GRAPHICS_BIT) > 0'u32:
      result.graphicsFamily = index
      result.graphicsFamilyFound = true
    var presentSupport: VkBool32
    discard vkGetPhysicalDeviceSurfaceSupportKHR(
      pDevice, index, surface, presentSupport.addr)
    if presentSupport == VK_TRUE:
      result.presentFamily = index
      result.presentFamilyFound = true
    if result.isComplete:
      break
    index.inc

proc querySwapChainSupport(
  pDevice: VkPhysicalDevice, surface: VkSurfaceKHR
): SwapChainSupportDetails =
  ## Queries swapchain capabilities, formats, and present modes.
  discard vkGetPhysicalDeviceSurfaceCapabilitiesKHR(
    pDevice, surface, result.capabilities.addr)
  var formatCount: uint32
  discard vkGetPhysicalDeviceSurfaceFormatsKHR(
    pDevice, surface, formatCount.addr, nil)
  if formatCount != 0:
    result.formats.setLen(formatCount)
    discard vkGetPhysicalDeviceSurfaceFormatsKHR(
      pDevice, surface, formatCount.addr, result.formats[0].addr)
  var presentModeCount: uint32
  discard vkGetPhysicalDeviceSurfacePresentModesKHR(
    pDevice, surface, presentModeCount.addr, nil)
  if presentModeCount != 0:
    result.presentModes.setLen(presentModeCount)
    discard vkGetPhysicalDeviceSurfacePresentModesKHR(
      pDevice, surface, presentModeCount.addr,
      result.presentModes[0].addr)

proc checkDeviceExtensionSupport(
  pDevice: VkPhysicalDevice
): bool =
  ## Checks that VK_KHR_swapchain is supported.
  var extCount: uint32
  discard vkEnumerateDeviceExtensionProperties(
    pDevice, nil, extCount.addr, nil)
  var availableExts = newSeq[VkExtensionProperties](extCount)
  discard vkEnumerateDeviceExtensionProperties(
    pDevice, nil, extCount.addr, availableExts[0].addr)
  var requiredExts = ["VK_KHR_swapchain"].toHashSet
  for ext in availableExts.mitems:
    requiredExts.excl($cast[cstring](ext.extensionName.addr))
  requiredExts.len == 0

proc isDeviceSuitable(
  pDevice: VkPhysicalDevice, surface: VkSurfaceKHR
): bool =
  ## Returns true when the physical device supports required features.
  let extsSupported = pDevice.checkDeviceExtensionSupport
  var swapChainAdequate = false
  if extsSupported:
    let swapChainSupport = querySwapChainSupport(pDevice, surface)
    swapChainAdequate =
      swapChainSupport.formats.len != 0 and
      swapChainSupport.presentModes.len != 0
  let indices = findQueueFamilies(pDevice, surface)
  indices.isComplete and extsSupported and swapChainAdequate

proc chooseSwapSurfaceFormat(
  availableFormats: seq[VkSurfaceFormatKHR]
): VkSurfaceFormatKHR =
  ## Picks UNORM B8G8R8A8 if available, then SRGB, otherwise first format.
  for f in availableFormats:
    if f.format == VK_FORMAT_B8G8R8A8_UNORM and
       f.colorSpace.uint32 == VK_COLOR_SPACE_SRGB_NONLINEAR_KHR:
      return f
  for f in availableFormats:
    if f.format == VK_FORMAT_B8G8R8A8_SRGB and
       f.colorSpace.uint32 == VK_COLOR_SPACE_SRGB_NONLINEAR_KHR:
      return f
  availableFormats[0]

proc chooseSwapPresentMode(
  modes: seq[VkPresentModeKHR], vsync: bool
): VkPresentModeKHR =
  ## Picks FIFO for vsync, IMMEDIATE or MAILBOX otherwise.
  if vsync:
    return VkPresentModeKHR(VK_PRESENT_MODE_FIFO_KHR)
  for mode in modes:
    if mode.uint32 == VK_PRESENT_MODE_IMMEDIATE_KHR:
      return mode
  for mode in modes:
    if mode.uint32 == VK_PRESENT_MODE_MAILBOX_KHR:
      return mode
  VkPresentModeKHR(VK_PRESENT_MODE_FIFO_KHR)

proc chooseSwapExtent(
  caps: VkSurfaceCapabilitiesKHR, width, height: uint32
): VkExtent2D =
  ## Picks the best swap extent clamped to capabilities.
  if caps.currentExtent.width != uint32.high:
    return caps.currentExtent
  result = VkExtent2D(width: width, height: height)
  result.width = max(caps.minImageExtent.width,
    min(caps.maxImageExtent.width, result.width))
  result.height = max(caps.minImageExtent.height,
    min(caps.maxImageExtent.height, result.height))

proc createSwapChain(
  ctx: var VulkanContext, width, height: int
) =
  ## Creates (or recreates) the swapchain.
  let
    safeWidth = max(1, width).uint32
    safeHeight = max(1, height).uint32
    indices = findQueueFamilies(ctx.physicalDevice, ctx.surface)
    support = querySwapChainSupport(ctx.physicalDevice, ctx.surface)
    surfaceFormat = chooseSwapSurfaceFormat(support.formats)
    presentMode = chooseSwapPresentMode(
      support.presentModes, ctx.vsync)
    extent = chooseSwapExtent(
      support.capabilities, safeWidth, safeHeight)

  var imageCount = support.capabilities.minImageCount + 1
  if support.capabilities.maxImageCount > 0 and
     imageCount > support.capabilities.maxImageCount:
    imageCount = support.capabilities.maxImageCount

  var swapCreateInfo = VkSwapchainCreateInfoKHR(
    sType: VK_STRUCTURE_TYPE_SWAPCHAIN_CREATE_INFO_KHR,
    surface: ctx.surface,
    minImageCount: imageCount,
    imageFormat: surfaceFormat.format,
    imageColorSpace: surfaceFormat.colorSpace,
    imageExtent: extent,
    imageArrayLayers: 1,
    imageUsage: VkImageUsageFlags(
      VK_IMAGE_USAGE_COLOR_ATTACHMENT_BIT or 0x00000004'u32),
  )
  var queueFamilyIndicesArr = [
    indices.graphicsFamily, indices.presentFamily]
  if indices.graphicsFamily != indices.presentFamily:
    swapCreateInfo.imageSharingMode =
      VK_SHARING_MODE_CONCURRENT
    swapCreateInfo.queueFamilyIndexCount = 2
    swapCreateInfo.pQueueFamilyIndices =
      queueFamilyIndicesArr[0].addr
  else:
    swapCreateInfo.imageSharingMode =
      VK_SHARING_MODE_EXCLUSIVE
  swapCreateInfo.preTransform =
    support.capabilities.currentTransform
  swapCreateInfo.compositeAlpha =
    VK_COMPOSITE_ALPHA_OPAQUE_BIT_KHR
  swapCreateInfo.presentMode = presentMode
  swapCreateInfo.clipped = VkBool32(VK_TRUE)
  swapCreateInfo.oldSwapchain =
    VkSwapchainKHR(VK_NULL_HANDLE)

  let swapResult = vkCreateSwapchainKHR(
    ctx.device, swapCreateInfo.addr, nil, ctx.swapChain.addr)
  if swapResult != VK_SUCCESS:
    raise newException(Exception,
      "Failed to create swapchain: VkResult " & $swapResult.int32)

  discard vkGetSwapchainImagesKHR(
    ctx.device, ctx.swapChain, imageCount.addr, nil)
  ctx.swapChainImages.setLen(imageCount)
  discard vkGetSwapchainImagesKHR(
    ctx.device, ctx.swapChain, imageCount.addr,
    ctx.swapChainImages[0].addr)
  ctx.swapChainImageFormat = surfaceFormat.format
  ctx.swapChainExtent = extent

proc recreateSwapChain*(
  ctx: var VulkanContext, width, height: int
) =
  ## Waits for the device and recreates the swapchain.
  discard vkDeviceWaitIdle(ctx.device)
  if ctx.swapChain.int64 != 0:
    vkDestroySwapchainKHR(ctx.device, ctx.swapChain, nil)
  ctx.swapChain = VkSwapchainKHR(0)
  ctx.swapChainImages.setLen(0)
  createSwapChain(ctx, width, height)

proc initDevice*(
  ctx: var VulkanContext, hwnd: int,
  width, height: int, vsync = true
) =
  ## Initializes full Vulkan device, surface, swapchain, and sync objects.
  ctx.vsync = vsync
  loadVulkan()
  doAssert vkInit()

  var appInfo = VkApplicationInfo(
    sType: VK_STRUCTURE_TYPE_APPLICATION_INFO,
    pApplicationName: "Vulkan App",
    applicationVersion: vkMakeApiVersion(0, 1, 0, 0),
    pEngineName: "No Engine",
    engineVersion: vkMakeApiVersion(0, 1, 0, 0),
    apiVersion: VK_API_VERSION_1_1,
  )

  let extensionNames = [
    cstring "VK_KHR_surface",
    cstring "VK_KHR_win32_surface",
  ]
  var instanceCreateInfo = VkInstanceCreateInfo(
    sType: VK_STRUCTURE_TYPE_INSTANCE_CREATE_INFO,
    pApplicationInfo: appInfo.addr,
    enabledExtensionCount: extensionNames.len.uint32,
    ppEnabledExtensionNames: cast[cstringArray](
      extensionNames[0].unsafeAddr),
  )

  if vkCreateInstance(
       instanceCreateInfo.addr, nil, ctx.instance.addr
     ) != VK_SUCCESS:
    raise newException(Exception,
      "Failed to create Vulkan instance")

  setInstance(cast[pointer](ctx.instance))
  loadVK_KHR_surface()
  loadVK_KHR_win32_surface()
  loadVK_KHR_swapchain()

  # Create Win32 surface.
  let hinstance = GetModuleHandleW(nil)

  var surfaceCreateInfo = VkWin32SurfaceCreateInfoKHR(
    sType: VK_STRUCTURE_TYPE_WIN32_SURFACE_CREATE_INFO_KHR,
    hinstance: cast[pointer](hinstance),
    hwnd: cast[pointer](hwnd),
  )
  if vkCreateWin32SurfaceKHR(
       ctx.instance, surfaceCreateInfo.addr, nil,
       ctx.surface.addr
     ) != VK_SUCCESS:
    raise newException(Exception,
      "Failed to create Win32 surface")

  # Pick physical device.
  var deviceCount: uint32 = 0
  discard vkEnumeratePhysicalDevices(
    ctx.instance, deviceCount.addr, nil)
  if deviceCount == 0:
    raise newException(Exception,
      "No Vulkan-capable GPUs found")
  var devices = newSeq[VkPhysicalDevice](deviceCount)
  discard vkEnumeratePhysicalDevices(
    ctx.instance, deviceCount.addr, devices[0].addr)
  for pDevice in devices:
    if isDeviceSuitable(pDevice, ctx.surface):
      ctx.physicalDevice = pDevice
      break
  if ctx.physicalDevice.int64 == 0:
    raise newException(Exception,
      "No suitable physical device found")

  # Create logical device.
  let
    queueIndices = findQueueFamilies(
      ctx.physicalDevice, ctx.surface)
    uniqueQueueFamilies = [
      queueIndices.graphicsFamily,
      queueIndices.presentFamily].toHashSet
  var
    queuePriority = 1.0'f32
    queueCreateInfos = newSeq[VkDeviceQueueCreateInfo]()
  for qf in uniqueQueueFamilies:
    queueCreateInfos.add VkDeviceQueueCreateInfo(
      sType: VK_STRUCTURE_TYPE_DEVICE_QUEUE_CREATE_INFO,
      queueFamilyIndex: qf,
      queueCount: 1,
      pQueuePriorities: queuePriority.addr,
    )
  var
    deviceFeatures: VkPhysicalDeviceFeatures
    deviceExtNames = [cstring "VK_KHR_swapchain"]
    deviceCreateInfo = VkDeviceCreateInfo(
      sType: VK_STRUCTURE_TYPE_DEVICE_CREATE_INFO,
      pQueueCreateInfos: queueCreateInfos[0].addr,
      queueCreateInfoCount: queueCreateInfos.len.uint32,
      pEnabledFeatures: deviceFeatures.addr,
      enabledExtensionCount: 1,
      ppEnabledExtensionNames: cast[cstringArray](
        deviceExtNames[0].unsafeAddr),
    )
  if vkCreateDevice(
       ctx.physicalDevice, deviceCreateInfo.addr,
       nil, ctx.device.addr
     ) != VK_SUCCESS:
    raise newException(Exception,
      "Failed to create logical device")
  vkGetDeviceQueue(
    ctx.device, queueIndices.graphicsFamily, 0,
    ctx.graphicsQueue.addr)
  vkGetDeviceQueue(
    ctx.device, queueIndices.presentFamily, 0,
    ctx.presentQueue.addr)

  createSwapChain(ctx, width, height)

  # Create command pool.
  var poolInfo = VkCommandPoolCreateInfo(
    sType: VK_STRUCTURE_TYPE_COMMAND_POOL_CREATE_INFO,
    flags: VkCommandPoolCreateFlags(
      VK_COMMAND_POOL_CREATE_RESET_COMMAND_BUFFER_BIT),
    queueFamilyIndex: queueIndices.graphicsFamily,
  )
  if vkCreateCommandPool(
       ctx.device, poolInfo.addr, nil,
       ctx.commandPool.addr
     ) != VK_SUCCESS:
    raise newException(Exception,
      "Failed to create command pool")

  # Allocate command buffers.
  var allocInfo = VkCommandBufferAllocateInfo(
    sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_ALLOCATE_INFO,
    commandPool: ctx.commandPool,
    level: VK_COMMAND_BUFFER_LEVEL_PRIMARY,
    commandBufferCount: FRAME_COUNT,
  )
  if vkAllocateCommandBuffers(
       ctx.device, allocInfo.addr,
       ctx.commandBuffers[0].addr
     ) != VK_SUCCESS:
    raise newException(Exception,
      "Failed to allocate command buffers")

  # Create sync objects.
  var
    semaphoreInfo = VkSemaphoreCreateInfo(
      sType: VK_STRUCTURE_TYPE_SEMAPHORE_CREATE_INFO)
    fenceInfo = VkFenceCreateInfo(
      sType: VK_STRUCTURE_TYPE_FENCE_CREATE_INFO,
      flags: VkFenceCreateFlags(VK_FENCE_CREATE_SIGNALED_BIT),
    )
  for i in 0 ..< FRAME_COUNT:
    if vkCreateSemaphore(
         ctx.device, semaphoreInfo.addr, nil,
         ctx.imageAvailableSemaphores[i].addr
       ) != VK_SUCCESS or
       vkCreateSemaphore(
         ctx.device, semaphoreInfo.addr, nil,
         ctx.renderFinishedSemaphores[i].addr
       ) != VK_SUCCESS or
       vkCreateFence(
         ctx.device, fenceInfo.addr, nil,
         ctx.inFlightFences[i].addr
       ) != VK_SUCCESS:
      raise newException(Exception,
        "Failed to create sync objects")

  ctx.currentFrame = 0

proc recordClearFrame*(
  ctx: var VulkanContext,
  color: array[4, float32], imageIndex: uint32
) =
  ## Records a command buffer that clears the swapchain image.
  let cb = ctx.commandBuffers[ctx.currentFrame]

  var beginInfo = VkCommandBufferBeginInfo(
    sType: VK_STRUCTURE_TYPE_COMMAND_BUFFER_BEGIN_INFO,
  )
  discard vkBeginCommandBuffer(cb, beginInfo.addr)

  let subresourceRange = VkImageSubresourceRange(
    aspectMask: VkImageAspectFlags(VK_IMAGE_ASPECT_COLOR_BIT),
    baseMipLevel: 0,
    levelCount: 1,
    baseArrayLayer: 0,
    layerCount: 1,
  )

  # Transition: UNDEFINED -> TRANSFER_DST_OPTIMAL.
  var barrierToClear = VkImageMemoryBarrier(
    sType: VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
    srcAccessMask: VkAccessFlags(0),
    dstAccessMask: VkAccessFlags(VK_ACCESS_TRANSFER_WRITE_BIT),
    oldLayout: VK_IMAGE_LAYOUT_UNDEFINED,
    newLayout: VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
    srcQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    dstQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    image: ctx.swapChainImages[imageIndex],
    subresourceRange: subresourceRange,
  )
  vkCmdPipelineBarrier(
    cb,
    VkPipelineStageFlags(VK_PIPELINE_STAGE_TOP_OF_PIPE_BIT),
    VkPipelineStageFlags(VK_PIPELINE_STAGE_TRANSFER_BIT),
    VkDependencyFlags(0),
    0, nil, 0, nil,
    1, barrierToClear.addr,
  )

  # Clear the image.
  var clearColor = VkClearColorValue(float32: color)
  vkCmdClearColorImage(
    cb,
    ctx.swapChainImages[imageIndex],
    VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
    clearColor.addr,
    1,
    unsafeAddr subresourceRange,
  )

  # Transition: TRANSFER_DST_OPTIMAL -> PRESENT_SRC_KHR.
  var barrierToPresent = VkImageMemoryBarrier(
    sType: VK_STRUCTURE_TYPE_IMAGE_MEMORY_BARRIER,
    srcAccessMask: VkAccessFlags(VK_ACCESS_TRANSFER_WRITE_BIT),
    dstAccessMask: VkAccessFlags(0),
    oldLayout: VK_IMAGE_LAYOUT_TRANSFER_DST_OPTIMAL,
    newLayout: VK_IMAGE_LAYOUT_PRESENT_SRC_KHR,
    srcQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    dstQueueFamilyIndex: VK_QUEUE_FAMILY_IGNORED,
    image: ctx.swapChainImages[imageIndex],
    subresourceRange: subresourceRange,
  )
  vkCmdPipelineBarrier(
    cb,
    VkPipelineStageFlags(VK_PIPELINE_STAGE_TRANSFER_BIT),
    VkPipelineStageFlags(VK_PIPELINE_STAGE_BOTTOM_OF_PIPE_BIT),
    VkDependencyFlags(0),
    0, nil, 0, nil,
    1, barrierToPresent.addr,
  )

  discard vkEndCommandBuffer(cb)

proc renderFrame*(
  ctx: var VulkanContext, color: array[4, float32]
) =
  ## Acquires, records, submits, and presents a clear-color frame.
  let fence = ctx.inFlightFences[ctx.currentFrame]
  discard vkWaitForFences(
    ctx.device, 1, unsafeAddr fence,
    VkBool32(VK_TRUE), uint64.high)
  discard vkResetFences(ctx.device, 1, unsafeAddr fence)

  var imageIndex: uint32
  discard vkAcquireNextImageKHR(
    ctx.device, ctx.swapChain, uint64.high,
    ctx.imageAvailableSemaphores[ctx.currentFrame],
    VkFence(VK_NULL_HANDLE),
    imageIndex.addr,
  )

  discard vkResetCommandBuffer(
    ctx.commandBuffers[ctx.currentFrame],
    VkCommandBufferResetFlags(0))
  ctx.recordClearFrame(color, imageIndex)

  var
    waitSemaphores = [
      ctx.imageAvailableSemaphores[ctx.currentFrame]]
    waitStages: array[1, VkPipelineStageFlags] = [
      VkPipelineStageFlags(
        VK_PIPELINE_STAGE_COLOR_ATTACHMENT_OUTPUT_BIT)]
    signalSemaphores = [
      ctx.renderFinishedSemaphores[ctx.currentFrame]]
    cmdBuf = ctx.commandBuffers[ctx.currentFrame]
    submitInfo = VkSubmitInfo(
      sType: VK_STRUCTURE_TYPE_SUBMIT_INFO,
      waitSemaphoreCount: 1,
      pWaitSemaphores: waitSemaphores[0].addr,
      pWaitDstStageMask: waitStages[0].addr,
      commandBufferCount: 1,
      pCommandBuffers: cmdBuf.addr,
      signalSemaphoreCount: 1,
      pSignalSemaphores: signalSemaphores[0].addr,
    )
  if vkQueueSubmit(
       ctx.graphicsQueue, 1, submitInfo.addr, fence
     ) != VK_SUCCESS:
    raise newException(Exception,
      "Failed to submit draw command buffer")

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
  discard vkQueuePresentKHR(
    ctx.presentQueue, presentInfo.addr)

  ctx.currentFrame = (ctx.currentFrame + 1) mod FRAME_COUNT

proc cleanup*(ctx: var VulkanContext) =
  ## Destroys all Vulkan objects in the context.
  discard vkDeviceWaitIdle(ctx.device)

  for i in 0 ..< FRAME_COUNT:
    vkDestroySemaphore(
      ctx.device, ctx.renderFinishedSemaphores[i], nil)
    vkDestroySemaphore(
      ctx.device, ctx.imageAvailableSemaphores[i], nil)
    vkDestroyFence(ctx.device, ctx.inFlightFences[i], nil)

  vkDestroyCommandPool(ctx.device, ctx.commandPool, nil)
  vkDestroySwapchainKHR(ctx.device, ctx.swapChain, nil)
  vkDestroyDevice(ctx.device, nil)
  vkDestroySurfaceKHR(ctx.instance, ctx.surface, nil)
  vkDestroyInstance(ctx.instance, nil)

## Minimal Vulkan example: cycles clear color every frame.

import std/math
import windy
import vk14

const
  Width = 1280
  Height = 800

when isMainModule:
  let window = newWindow(
    "Vulkan 1.4 - Color Cycle",
    ivec2(Width.int32, Height.int32),
    vsync = true,
  )

  var hwnd = window.getHWND()
  if hwnd == 0:
    raise newException(Exception,
      "Failed to acquire HWND from window")

  var ctx: VulkanContext
  ctx.initDevice(hwnd, Width, Height, vsync = window.vsync)

  try:
    var timeAcc = 0.0
    while not window.closeRequested:
      pollEvents()
      timeAcc += 0.016

      let r = (sin(timeAcc * 0.6) * 0.5 + 0.5).float32
      let g = (sin(timeAcc * 0.6 + 2.094) * 0.5 + 0.5).float32
      let b = (sin(timeAcc * 0.6 + 4.188) * 0.5 + 0.5).float32
      let color = [r, g, b, 1.0'f32]

      ctx.renderFrame(color)
  finally:
    ctx.cleanup()

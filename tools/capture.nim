## Captures a screenshot of a running example.
## Usage: nim r tools/capture.nim <exe_path> [delay_seconds] [output_png]
##
## Launches the executable, waits for its window to appear,
## waits the specified delay (default 3s), takes a screenshot,
## saves it as PNG via Pixie, then kills the process.

import std/[os, osproc, strutils, strformat, times]
import pixie

type
  HWND = pointer
  HDC = pointer
  HBITMAP = pointer
  HGDIOBJ = pointer
  WINBOOL = int32

  RECT = object
    left, top, right, bottom: int32

  BITMAPINFOHEADER = object
    biSize: uint32
    biWidth: int32
    biHeight: int32
    biPlanes: uint16
    biBitCount: uint16
    biCompression: uint32
    biSizeImage: uint32
    biXPelsPerMeter: int32
    biYPelsPerMeter: int32
    biClrUsed: uint32
    biClrImportant: uint32

  BITMAPINFO = object
    bmiHeader: BITMAPINFOHEADER

proc GetWindowRect(hWnd: HWND, lpRect: ptr RECT): WINBOOL
  {.dynlib: "user32", stdcall, importc.}

proc SetForegroundWindow(hWnd: HWND): WINBOOL
  {.dynlib: "user32", stdcall, importc.}

proc ShowWindow(hWnd: HWND, nCmdShow: int32): WINBOOL
  {.dynlib: "user32", stdcall, importc.}

proc EnumWindows(lpEnumFunc: pointer, lParam: pointer): WINBOOL
  {.dynlib: "user32", stdcall, importc.}

proc GetWindowThreadProcessId(hWnd: HWND, lpdwProcessId: ptr uint32): uint32
  {.dynlib: "user32", stdcall, importc.}

proc IsWindowVisible(hWnd: HWND): WINBOOL
  {.dynlib: "user32", stdcall, importc.}

proc GetDC(hWnd: HWND): HDC
  {.dynlib: "user32", stdcall, importc.}

proc ReleaseDC(hWnd: HWND, hDC: HDC): int32
  {.dynlib: "user32", stdcall, importc.}

proc CreateCompatibleDC(hdc: HDC): HDC
  {.dynlib: "gdi32", stdcall, importc.}

proc CreateCompatibleBitmap(hdc: HDC, cx, cy: int32): HBITMAP
  {.dynlib: "gdi32", stdcall, importc.}

proc SelectObject(hdc: HDC, h: HGDIOBJ): HGDIOBJ
  {.dynlib: "gdi32", stdcall, importc.}

proc BitBlt(hdc: HDC, x, y, cx, cy: int32, hdcSrc: HDC, x1, y1: int32, rop: uint32): WINBOOL
  {.dynlib: "gdi32", stdcall, importc.}

proc GetDIBits(hdc: HDC, hbm: HBITMAP, start, cLines: uint32, lpvBits: pointer, lpbmi: ptr BITMAPINFO, usage: uint32): int32
  {.dynlib: "gdi32", stdcall, importc.}

proc DeleteObject(ho: HGDIOBJ): WINBOOL
  {.dynlib: "gdi32", stdcall, importc.}

proc DeleteDC(hdc: HDC): WINBOOL
  {.dynlib: "gdi32", stdcall, importc.}

const
  SW_SHOW = 5'i32
  SRCCOPY = 0x00CC0020'u32
  DIB_RGB_COLORS = 0'u32
  BI_RGB = 0'u32

type
  FindWindowData = object
    pid: uint32
    result: HWND

proc GetWindowTextLengthW(hWnd: HWND): int32
  {.dynlib: "user32", stdcall, importc.}

proc enumCallback(hWnd: HWND, lParam: pointer): WINBOOL {.stdcall.} =
  var data = cast[ptr FindWindowData](lParam)
  var windowPid: uint32
  discard GetWindowThreadProcessId(hWnd, addr windowPid)
  if windowPid == data.pid and IsWindowVisible(hWnd) != 0:
    # Only accept windows with a title (skip message-only/internal windows)
    if GetWindowTextLengthW(hWnd) > 0:
      var rect: RECT
      if GetWindowRect(hWnd, addr rect) != 0:
        let w = rect.right - rect.left
        let h = rect.bottom - rect.top
        if w > 50 and h > 50:
          data.result = hWnd
          return 0
  return 1

proc findWindowByPid(pid: uint32): HWND =
  var data = FindWindowData(pid: pid, result: nil)
  discard EnumWindows(cast[pointer](enumCallback), addr data)
  return data.result

proc captureWindow(hWnd: HWND, width, height, left, top: int32): Image =
  let screenDC = GetDC(nil)
  let memDC = CreateCompatibleDC(screenDC)
  let hBitmap = CreateCompatibleBitmap(screenDC, width, height)
  let oldBitmap = SelectObject(memDC, cast[HGDIOBJ](hBitmap))

  discard BitBlt(memDC, 0, 0, width, height, screenDC, left, top, SRCCOPY)

  var bi = BITMAPINFO(
    bmiHeader: BITMAPINFOHEADER(
      biSize: uint32(sizeof(BITMAPINFOHEADER)),
      biWidth: width,
      biHeight: -height,  # top-down
      biPlanes: 1,
      biBitCount: 32,
      biCompression: BI_RGB,
    )
  )

  var pixels = newSeq[uint8](width * height * 4)
  discard GetDIBits(memDC, hBitmap, 0, uint32(height), addr pixels[0], addr bi, DIB_RGB_COLORS)

  discard SelectObject(memDC, oldBitmap)
  discard DeleteObject(cast[HGDIOBJ](hBitmap))
  discard DeleteDC(memDC)
  discard ReleaseDC(nil, screenDC)

  # Convert BGRA -> RGBA and create Pixie image
  result = newImage(width, height)
  for i in 0 ..< width * height:
    let offset = i * 4
    let b = pixels[offset]
    let g = pixels[offset + 1]
    let r = pixels[offset + 2]
    let a = 255'u8
    result.data[i] = rgbx(r, g, b, a)

proc main() =
  let args = commandLineParams()
  if args.len < 1:
    echo "Usage: capture <exe_path> [delay_seconds] [output_png]"
    echo "  exe_path       Path to the executable to run"
    echo "  delay_seconds   Seconds to wait before screenshot (default: 3)"
    echo "  output_png      Output PNG path (default: <exe_name>.png in docs/)"
    quit(1)

  let exePath = args[0]
  let delaySec = if args.len >= 2: parseInt(args[1]) else: 3
  let scriptDir = parentDir(currentSourcePath())
  let docsDir = normalizedPath(scriptDir / ".." / "docs")
  let defaultPng = docsDir / (exePath.splitFile().name & ".png")
  let outputPng = if args.len >= 3: args[2] else: defaultPng

  if not fileExists(exePath):
    echo &"ERROR: Executable not found: {exePath}"
    quit(1)

  createDir(parentDir(outputPng))

  echo &"Launching: {exePath}"
  let process = startProcess(exePath, workingDir = getCurrentDir())
  let pid = processID(process)
  echo &"  PID: {pid}"

  # Wait for window to appear
  echo "Waiting for window..."
  var hWnd: HWND = nil
  let deadline = getTime() + initDuration(seconds = 15)
  while getTime() < deadline:
    hWnd = findWindowByPid(uint32(pid))
    if hWnd != nil:
      break
    sleep(250)

  if hWnd == nil:
    echo "ERROR: No window found within 15 seconds"
    process.kill()
    process.close()
    quit(1)

  # Bring to front and wait the delay
  discard ShowWindow(hWnd, SW_SHOW)
  discard SetForegroundWindow(hWnd)
  echo &"Window found. Waiting {delaySec}s for content to render..."
  sleep(delaySec * 1000)

  # Get window rect and capture
  var rect: RECT
  if GetWindowRect(hWnd, addr rect) == 0:
    echo "ERROR: GetWindowRect failed"
    process.kill()
    process.close()
    quit(1)

  let w = rect.right - rect.left
  let h = rect.bottom - rect.top
  echo &"  Window size: {w}x{h} at ({rect.left}, {rect.top})"

  if w <= 0 or h <= 0:
    echo "ERROR: Invalid window dimensions"
    process.kill()
    process.close()
    quit(1)

  let img = captureWindow(hWnd, w, h, rect.left, rect.top)
  img.writeFile(outputPng)
  echo &"  Saved: {outputPng}"

  # Kill the process
  process.kill()
  process.close()
  echo "Done."

when isMainModule:
  main()

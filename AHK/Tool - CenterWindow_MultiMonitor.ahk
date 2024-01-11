; Centers any active window to the screen. Multi Monitor compatible version -- Centers to whichever monitor app is on.
; Thanks to Darxide23 (https://github.com/Darxide23) for suggesting this code.
; https://github.com/TcNoco/TcNo-Random-Scripts/issues/1
; Press Start+C to center any window to whichever screen it is currently on.
; Created June 2022

; https://github.com/TcNoco/TcNo-Random-Scripts

#c::
winHandle := WinExist("A") ; The window to operate on

; get the bounding coordinates of the monitor the window is on:
;--------------------------------------------------------------------------
VarSetCapacity(monitorInfo, 40), NumPut(40, monitorInfo)
monitorHandle := DllCall("MonitorFromWindow", "Ptr", winHandle, "UInt", 0x2)
DllCall("GetMonitorInfo", "Ptr", monitorHandle, "Ptr", &monitorInfo)
;--------------------------------------------------------------------------

workLeft := NumGet(monitorInfo, 20, "Int") ; Left
workTop := NumGet(monitorInfo, 24, "Int") ; Top
workRight := NumGet(monitorInfo, 28, "Int") ; Right
workBottom := NumGet(monitorInfo, 32, "Int") ; Bottom
WinGetPos,,, W, H, A
WinMove, A,, workLeft + (workRight - workLeft) // 2 - W // 2
, workTop + (workBottom - workTop) // 2 - H // 2
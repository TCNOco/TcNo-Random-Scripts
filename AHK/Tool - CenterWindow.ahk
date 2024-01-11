; Centers any active window to the screen.
; Press Start+C to center any window.
; Created September 2019

; Created by Wesley Pyburn (TroubleChute)
; https://github.com/TcNoco/TcNo-Random-Scripts

#c::
WinExist("A")
WinGetPos,,, sizeX, sizeY
SysGet, workArea, MonitorWorkArea
workAreaWidth := workAreaRight - workAreaLeft
workAreaHeight := workAreaBottom - workAreaTop
WinMove, (workAreaWidth/2)-(sizeX/2), (workAreaHeight/2)-(sizeY/2)
Return

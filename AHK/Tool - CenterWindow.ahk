; Centers any active window to the screen.
; Press Start+C to center any window.
; Created September 2019

; Created by Wesley Pyburn (TechNobo)
; https://github.com/TcNobo/TcNo-Random-Scripts

#c::
WinExist("A")
WinGetPos,,, sizeX, sizeY
WinMove, (A_ScreenWidth/2)-(sizeX/2), (A_ScreenHeight/2)-(sizeY/2)
Return
; Great for many purposes.
; Originally used to send a large amount of bullets towards an enemy from a semi-automatic gun ingame.
; Created June 2015

; Created by Wesley Pyburn (TroubleChute)
; https://github.com/TcNobo/TcNo-Random-Scripts

MButton::
+MButton::
^MButton::
WheelLeft::
WheelRight::
Loop
{
	SetMouseDelay 30
	Click
	If (GetKeyState("MButton","P")=0) {
		Break
	}
}
Return

; Ctrl+Escape to exit
^Esc::
ExitApp
Return
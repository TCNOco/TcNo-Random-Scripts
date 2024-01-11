; Makes your cursor shake uncontrollably when holding Right Click.
; Great for messing with people ingame.
; Just something fun I made back in July 2016

; Created by Wesley Pyburn (TroubleChute)
; https://github.com/TcNoco/TcNo-Random-Scripts

*RButton::
while getkeystate("RButton","P") {
	Loop, 5{
		DllCall("mouse_event", "UInt", 0x001, "Int", Rnd(-10, 10), "Int", Rnd(-10, 10), "UInt", 0, "Int", 0)
	}
}
Return

Rnd(a=0.0,b=1) {
   IfEqual,a,,Random,,% r := b = 1 ? Rnd(0,0xFFFFFFFF) : b ;%
   Else Random,r,a,b
   Return r
}

; This wasn't originally here, but it's probably good to have if you actually want to use this.
; Closing the script otherwise is a nightmare.
; Ctrl+Escape to exit
^Esc::
ExitApp
Return

; Turns all keyboard input into binary (Including Backspace and Enter), and pastes them using Ctrl+V for quick entry
; Use the Grave accent button (`) to translate back.
; Created August 2015
; (Could have been MASSIVELY improved by using a function, but I obviously didn't think of this. Might update it for fun)

; Created by Wesley Pyburn (TroubleChute)
; https://github.com/TcNoco/TcNo-Random-Scripts

; Ctrl+Escape to exit
^Esc::
ExitApp
Return

PasteInput(str)
{
	clipboard = %str%
	Send ^v
	Return
}

$backspace::
Loop, 8 
{
	send {backspace}
}
Return

$a::
$b::
MsgBox, %A_ThisHotkey%
PasteInput(01100001)
Return

; $b::
; PasteInput(01100010)
; Return

$c::
PasteInput(01100011)
Return

$d::
PasteInput(01100100)
Return

$e::
PasteInput(01100101)
Return

$f::
PasteInput(01100110)
Return

$g::
PasteInput(01100111)
Return

$h::
PasteInput(01101000)
Return

$i::
PasteInput(01101001)
Return

$j::
PasteInput(01101010)
Return

$k::
PasteInput(01101011)
Return

$l::
PasteInput(01101100)
Return

$m::
PasteInput(01101101)
Return

$n::
PasteInput(01101110)
Return

$o::
PasteInput(01101111)
Return

$p::
PasteInput(01110000)
Return

$q::
PasteInput(01110001)
Return

$r::
PasteInput(01110010)
Return

$s::
PasteInput(01110011)
Return

$t::
PasteInput(01110100)
Return

$u::
PasteInput(01110101)
Return

$v::
PasteInput(01110110)
Return

$w::
PasteInput(01110111)
Return

$x::
PasteInput(01111000)
Return

$y::
PasteInput(01111001)
Return

$z::
PasteInput(01111010)
Return

$1::
PasteInput(00110001)
Return

$2::
PasteInput(00110010)
Return

$3::
PasteInput(00110011)
Return

$4::
PasteInput(00110100)
Return

$5::
PasteInput(00110101)
Return

$6::
PasteInput(00110110)
Return

$7::
PasteInput(00110111)
Return

$8::
PasteInput(00111000)
Return

$9::
PasteInput(00111001)
Return

$0::
PasteInput(00110000)
Return


$-::
PasteInput(00101101)
Return

$=::
PasteInput(00111101)
Return

$[::
PasteInput(01011011)
Return

$]::
PasteInput(01011101)
Return

$;::
PasteInput(00111011)
Return

$'::
PasteInput(00100111)
Return

$,::
PasteInput(00101100)
Return

$.::
PasteInput(00101110)
Return

$/::
PasteInput(00101111)
Return

$\::
PasteInput(01011100)
Return

$_::
PasteInput(01011111)
Return

$+::
PasteInput(00101011)
Return

${::
PasteInput(01111011)
Return

$}::
PasteInput(01111101)
Return

$|::
PasteInput(01111100)
Return

$:::
PasteInput(00111010)
Return

$"::
PasteInput(00100010)
Return

$<::
PasteInput(00111100)
Return

$>::
PasteInput(00111110)
Return

$?::
PasteInput(00111111)
Return

$Numpad1::
PasteInput(00110001)
Return

$Numpad2::
PasteInput(00110010)
Return

$Numpad3::
PasteInput(00110011)
Return

$Numpad4::
PasteInput(00110100)
Return

$Numpad5::
PasteInput(00110101)
Return

$Numpad6::
PasteInput(00110110)
Return

$Numpad7::
PasteInput(00110111)
Return

$Numpad8::
PasteInput(00111000)
Return

$Numpad9::
PasteInput(00111001)
Return

$Numpad0::
PasteInput(00110000)
Return



$~::
PasteInput(01111110)
Return

$!::
PasteInput(00100001)
Return

$@::
PasteInput(01000000)
Return

$#::
clipboard =00100011)
Return

$$::
PasteInput(00100100)
Return

$%::
PasteInput(00100101)
Return

$^::
PasteInput(01011110)
Return

$&::
PasteInput(00100110)
Return

$*::
PasteInput(00101010)
Return

$(::
PasteInput(00101000)
Return

$)::
PasteInput(00101001)
Return
 
$space::
PasteInput(00100000)
Return

$+A::
PasteInput(01000001)
Return

$+B::
PasteInput(01000010)
Return

$+C::
PasteInput(01000011)
Return

$+D::
PasteInput(01000100)
Return

$+E::
PasteInput(01000101)
Return

$+F::
PasteInput(01000110)
Return

$+G::
PasteInput(01000111)
Return

$+H::
PasteInput(01001000)
Return

$+I::
PasteInput(01001001)
Return

$+J::
PasteInput(01001010)
Return

$+K::
PasteInput(01001011)
Return

$+L::
PasteInput(01001100)
Return

$+M::
PasteInput(01001101)
Return

$+N::
PasteInput(01001110)
Return

$+O::
PasteInput(01001111)
Return

$+P::
PasteInput(01010000)
Return

$+Q::
PasteInput(01010001)
Return

$+R::
PasteInput(01010010)
Return

$+S::
PasteInput(01010011)
Return

$+T::
PasteInput(01010100)
Return

$+U::
PasteInput(01010101)
Return

$+V::
PasteInput(01010110)
Return

$+W::
PasteInput(01010111)
Return

$+X::
PasteInput(01011000)
Return

$+Y::
PasteInput(01011001)
Return

$+Z::
PasteInput(01011010)
Return

$NumpadDiv::
PasteInput(00101111)
Return


$NumpadMult::
PasteInput(00101010)
Return


$NumpadSub::
PasteInput(00101101)
Return


$NumpadAdd::
PasteInput(00101011)
Return


$NumpadDot::
PasteInput(00101110)
Return

$Enter::
$NumpadEnter::
PasteInput(0000110100001010)
Return


; No idea where I got this, at least some of it is not mine.
$`::	
{
InputBox, binarystring, Input Binary, Prompt
text:=bin2txt(binarystring)
msgbox, %text%

bin2txt(binarystring)
{
autotrim, off
loop
{
var=128
ascii=0

StringRight, byte, binarystring, 8

if byte=
break

StringTrimRight, binarystring, binarystring, 8

Loop, parse, byte
{
if a_loopfield = 1
ascii+=%var%
var/=2
}

transform, text, Chr, %ascii%
alltext=%text%%alltext%
}
autotrim, on
return alltext
}
return
}
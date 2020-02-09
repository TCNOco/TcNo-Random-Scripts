; Turns all keyboard input into binary (Including Backspace and Enter), and pastes them using Ctrl+V for quick entry
; Use the Grave accent button (`) to translate back.
; Created August 2015
; (Could have been MASSIVELY improved by using a function, but I obviously didn't think of this. Might update it for fun)

; Created by Wesley Pyburn (TechNobo)
; https://github.com/TcNobo/TcNo-Random-Scripts

; Ctrl+Escape to exit
^Esc::
ExitApp
Return

$backspace::
Loop, 8 
{
	send {backspace}
}
Return

$a::
clipboard = 01100001
Send ^v
Return

$b::
clipboard = 01100010
Send ^v
Return

$c::
clipboard = 01100011
Send ^v
Return

$d::
clipboard = 01100100
Send ^v
Return

$e::
clipboard = 01100101
Send ^v
Return

$f::
clipboard = 01100110 
Send ^v
Return

$g::
clipboard = 01100111 
Send ^v
Return

$h::
clipboard = 01101000 
Send ^v
Return

$i::
clipboard = 01101001 
Send ^v
Return

$j::
clipboard = 01101010 
Send ^v
Return

$k::
clipboard = 01101011 
Send ^v
Return

$l::
clipboard = 01101100 
Send ^v
Return

$m::
clipboard = 01101101
Send ^v
Return

$n::
clipboard = 01101110
Send ^v
Return

$o::
clipboard = 01101111 
Send ^v
Return

$p::
clipboard = 01110000 
Send ^v
Return

$q::
clipboard = 01110001 
Send ^v
Return

$r::
clipboard = 01110010 
Send ^v
Return

$s::
clipboard = 01110011
Send ^v
Return

$t::
clipboard = 01110100
Send ^v
Return

$u::
clipboard = 01110101 
Send ^v
Return

$v::
clipboard = 01110110 
Send ^v
Return

$w::
clipboard = 01110111
Send ^v
Return

$x::
clipboard = 01111000 
Send ^v
Return

$y::
clipboard = 01111001 
Send ^v
Return

$z::
clipboard = 01111010
Send ^v
Return

$1::
clipboard = 00110001 
Send ^v
Return

$2::
clipboard = 00110010 
Send ^v
Return

$3::
clipboard = 00110011 
Send ^v
Return

$4::
clipboard = 00110100 
Send ^v
Return

$5::
clipboard = 00110101 
Send ^v
Return

$6::
clipboard = 00110110 
Send ^v
Return

$7::
clipboard = 00110111 
Send ^v
Return

$8::
clipboard = 00111000 
Send ^v
Return

$9::
clipboard = 00111001
Send ^v
Return

$0::
clipboard = 00110000
Send ^v
Return


$-::
clipboard = 00101101 
Send ^v
Return

$=::
clipboard = 00111101
Send ^v
Return

$[::
clipboard = 01011011 
Send ^v
Return

$]::
clipboard = 01011101
Send ^v
Return

$;::
clipboard = 00111011 
Send ^v
Return

$'::
clipboard = 00100111
Send ^v
Return

$,::
clipboard = 00101100 
Send ^v
Return

$.::
clipboard = 00101110
Send ^v
Return

$/::
clipboard = 00101111
Send ^v
Return

$\::
clipboard = 01011100
Send ^v
Return

$_::
clipboard = 01011111 
Send ^v
Return

$+::
clipboard = 00101011
Send ^v
Return

${::
clipboard = 01111011 
Send ^v
Return

$}::
clipboard = 01111101 
Send ^v
Return

$|::
clipboard = 01111100
Send ^v
Return

$:::
clipboard = 00111010 
Send ^v
Return

$"::
clipboard = 00100010
Send ^v
Return

$<::
clipboard = 00111100 
Send ^v
Return

$>::
clipboard = 00111110
Send ^v
Return

$?::
clipboard = 00111111
Send ^v
Return

$Numpad1::
clipboard = 00110001 
Send ^v
Return

$Numpad2::
clipboard = 00110010 
Send ^v
Return

$Numpad3::
clipboard = 00110011 
Send ^v
Return

$Numpad4::
clipboard = 00110100 
Send ^v
Return

$Numpad5::
clipboard = 00110101 
Send ^v
Return

$Numpad6::
clipboard = 00110110 
Send ^v
Return

$Numpad7::
clipboard = 00110111 
Send ^v
Return

$Numpad8::
clipboard = 00111000 
Send ^v
Return

$Numpad9::
clipboard = 00111001
Send ^v
Return

$Numpad0::
clipboard = 00110000
Send ^v
Return



$~::
clipboard = 01111110 
Send ^v
Return

$!::
clipboard = 00100001 
Send ^v
Return

$@::
clipboard = 01000000 
Send ^v
Return

$#::
clipboard =00100011 
Send ^v
Return

$$::
clipboard = 00100100 
Send ^v
Return

$%::
clipboard = 00100101 
Send ^v
Return

$^::
clipboard = 01011110 
Send ^v
Return

$&::
clipboard = 00100110
Send ^v
Return

$*::
clipboard = 00101010
Send ^v
Return

$(::
clipboard = 00101000 
Send ^v
Return

$)::
clipboard = 00101001
Send ^v
Return
 
$space::
clipboard = 00100000
Send ^v
Return

$+A::
clipboard = 01000001
Send ^v
Return

$+B::
clipboard = 01000010 
Send ^v
Return

$+C::
clipboard = 01000011 
Send ^v
Return

$+D::
clipboard = 01000100 
Send ^v
Return

$+E::
clipboard = 01000101 
Send ^v
Return

$+F::
clipboard = 01000110 
Send ^v
Return

$+G::
clipboard = 01000111 
Send ^v
Return

$+H::
clipboard = 01001000 
Send ^v
Return

$+I::
clipboard = 01001001 
Send ^v
Return

$+J::
clipboard = 01001010 
Send ^v
Return

$+K::
clipboard = 01001011 
Send ^v
Return

$+L::
clipboard = 01001100 
Send ^v
Return

$+M::
clipboard = 01001101 
Send ^v
Return

$+N::
clipboard = 01001110 
Send ^v
Return

$+O::
clipboard = 01001111 
Send ^v
Return

$+P::
clipboard = 01010000 
Send ^v
Return

$+Q::
clipboard = 01010001 
Send ^v
Return

$+R::
clipboard = 01010010 
Send ^v
Return

$+S::
clipboard = 01010011 
Send ^v
Return

$+T::
clipboard = 01010100 
Send ^v
Return

$+U::
clipboard = 01010101 
Send ^v
Return

$+V::
clipboard = 01010110 
Send ^v
Return

$+W::
clipboard = 01010111 
Send ^v
Return

$+X::
clipboard = 01011000 
Send ^v
Return

$+Y::
clipboard = 01011001 
Send ^v
Return

$+Z::
clipboard = 01011010
Send ^v
Return

$NumpadDiv::
clipboard = 00101111 
Send ^v
Return


$NumpadMult::
clipboard = 00101010 
Send ^v
Return


$NumpadSub::
clipboard = 00101101 
Send ^v
Return


$NumpadAdd::
clipboard = 00101011 
Send ^v
Return


$NumpadDot::
clipboard = 00101110
Send ^v
Return

$Enter::
$NumpadEnter::
clipboard = 0000110100001010
Send ^v
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
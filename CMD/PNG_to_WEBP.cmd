@echo off &setlocal enabledelayedexpansion

REM Just a simple PNG to WEBP converter using cwebp.
REM Add cwebp to PATH for this to work, or define the full path.
REM Created March 2021

REM Created by Wesley Pyburn (TroubleChute)
REM https://github.com/TcNoco/TcNo-Random-Scripts

set outfolder=webp\
set quality=75
mkdir !outfolder!

for %%v in ("*.png" "*.jpg" "*.jpeg") do (
  set FileName=%%v
  set name=!FileName:~0,-4!
  set output="!outfolder!!name!.webp"

  echo Converting: !FileName! into !output!
  cwebp -q !quality! !FileName! -o !output!
)
pause
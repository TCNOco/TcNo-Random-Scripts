@REM 1
@echo off
setlocal

REM A simple batch file to interact with 'rembg'.
REM Drag and drop a file onto this bat file to process it and remove the background.

REM Created by Wesley Pyburn (TroubleChute)
REM https://github.com/TcNoco/TcNo-Random-Scripts


if "%~1"=="" (
  echo Drag an image file onto this batch file to process it.
  pause
  goto :EOF
)

set "input=%~1"
set "output=%~dp1%~n1_r.png"

rembg i "%input%" "%output%"

echo Processing complete: "%output%"
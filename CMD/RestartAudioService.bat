
REM Just a simple batch file to restart the Windows Audio Service.
REM Temporary fix for audio buffer overflows due to bad drivers etc.
REM Created sometime in 2020

REM Created by Wesley Pyburn (TroubleChute)
REM https://github.com/TcNoco/TcNo-Random-Scripts

@echo off     
net stop audiosrv    
pause    
net start audiosrv    
pause  
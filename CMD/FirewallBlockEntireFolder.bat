
REM When run in a folder it will recursively search for .exe files
REM Then it will block those in the firewall. Super simple. Both in and out.
REM Created sometime in 2020
REM Video guide: https://youtu.be/4AH4SV7bGN0

REM Created by Wesley Pyburn (TechNobo)
REM https://github.com/TcNobo/TcNo-Random-Scripts

@ setlocal enableextensions 
@ cd /d "%~dp0"

for /R %%f in (*.exe) do (
  netsh advfirewall firewall add rule name="Blocked: %%f" dir=in program="%%f" action=block
  netsh advfirewall firewall add rule name="Blocked: %%f" dir=out program="%%f" action=block
)
pause
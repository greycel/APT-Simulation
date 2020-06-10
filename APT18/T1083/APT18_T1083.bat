@ECHO OFF
CLS
color 0E


ECHO ===================================================================
ECHO Technique: File and Directory Discovery (T1083)
ECHO.
ECHO [+] Simulate Discovery via Command line utilities
ECHO -------------------------------------------------------------------
cmd /c dir "%systemdrive%\Users\*.*" >> %temp%\APT18\exfil.jpg
cmd /c dir "%userprofile%\AppData\Roaming\Microsoft\Windows\Recent\*.*" >> %temp%\APT18\exfil.jpg
cmd /c Powershell gci -recurse $env:userprofile\Desktop\*.* >> %temp%\APT18\exfil.jpg
ping 127.0.0.1 -n 10 > nul
cmd /c dir /s d:\ >> %temp%\APT18\exfil.jpg
cmd /c tree /F >> %temp%\APT18\exfil.jpg
ECHO.


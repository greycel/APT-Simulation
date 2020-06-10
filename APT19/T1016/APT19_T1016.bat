@ECHO OFF
CLS
color 0E


ECHO ===================================================================
ECHO Technique: System Network Configuration Discovery (T1016)
ECHO.
ECHO [+] System Network Configuration Discovery using builtin Utilities
ECHO -------------------------------------------------------------------
cmd /c ipconfig /all >> %temp%\APT19\sysinfo
cmd /c arp -a >> %temp%\APT19\sysinfo
cmd /c getmac /s 127.0.0.1 >> %temp%\APT19\sysinfo
ECHO.


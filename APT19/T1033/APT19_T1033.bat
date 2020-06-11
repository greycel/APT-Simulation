@ECHO OFF
CLS
color 0E


ECHO ========================================================
ECHO Technique: System Owner/User Discovery	(T1033)
ECHO.
ECHO [+] Simulates System User Discovery via builtin Utilities
ECHO --------------------------------------------------------
cmd.exe /C whoami
dir C:\users\
ECHO.


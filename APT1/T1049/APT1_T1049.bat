@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: System Network Connections Discovery	(T1049)
ECHO.
ECHO [+] Discovery using builtin Utilities
ECHO -------------------------------------------------------------------
cmd /c net use >> %temp%\APT1\T1049.txt
net session >> %temp%\APT1\T1049.txt
cmd /c netstat -r 
cmd /c netstat -ano >> %temp%\APT1\T1049.txt
::netsh wlan show networks mode=bssid
::netsh wlan show interfaces
::net file
::powershell Get-NetTCPConnection
ECHO -------------------------------------------------------------------
ECHO.


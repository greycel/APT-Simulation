@ECHO OFF
CLS
color 0E


ECHO ====================================
ECHO Technique: Network Sniffing (T1040)
ECHO.
ECHO [+] Network Sniffing
ECHO ------------------------------------
start "%utilities%\windump.exe"
ping 127.0.0.1 -n 4 > nul
ECHO.

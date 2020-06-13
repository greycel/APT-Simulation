@ECHO OFF
CLS
color 0E


ECHO =================================================================
ECHO Technique: Indicator Removal on Host (T1070)
ECHO.
ECHO [+] Clear Windows Event Logs to hide the tracks
ECHO -----------------------------------------------------------------
cmd.exe /c wevtutil cl System
wevtutil cl Security
ECHO.

@ECHO OFF
CLS
color 0E


ECHO ==============================================
ECHO Technique: Hidden Window	(T1143)
ECHO.
ECHO [+] Simulate Powershell Hidden Window (T1143)
ECHO ----------------------------------------------
start cmd /c "powershell.exe -w hidden -noni -nop -c get-host"
ECHO ----------------------------------------------
ECHO.

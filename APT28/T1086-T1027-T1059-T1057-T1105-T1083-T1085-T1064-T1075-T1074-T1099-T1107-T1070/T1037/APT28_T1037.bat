@ECHO OFF
CLS
color 0E


ECHO ==================================================================
ECHO Technique: Logon Scripts	(T1037)
ECHO.
ECHO [+] Simulates modification of Registry Key to acehive persistence
ECHO ------------------------------------------------------------------
reg add HKCU\Environment /v UserInitMprLogonScript /t REG_SZ /d "cmd.exe /c calc.exe" /f
ping 127.0.0.1 -n 4 > nul
reg delete HKCU\Environment /v UserInitMprLogonScript /f
ECHO.
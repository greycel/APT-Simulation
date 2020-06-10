@ECHO OFF
CLS
color 0E


ECHO ===================================================================
ECHO Technique: Command-Line Interface (T1059)
ECHO.
ECHO [+] Simulate use of Windows command shell to execute commands
ECHO -------------------------------------------------------------------
cmd /c ping -n 5 127.0.0.1 > nul
ECHO.

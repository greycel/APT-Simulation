@ECHO OFF
CLS
color 0E


ECHO ==================================================================
ECHO Technique:  Scheduled Task (T1053)
ECHO.
ECHO [+] Creating Schedule Task using "SCHTASKS"
ECHO ------------------------------------------------------------------
SCHTASKS /Create /SC ONCE /TN APT18 /TR C:\windows\system32\cmd.exe /ST 20:10
ECHO.



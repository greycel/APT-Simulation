@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: File Deletion (T1107)
ECHO.
ECHO [+] Clearing traces to minimise the attack footprint using builtin utilities
ECHO -----------------------------------------------------------------------------
del /f %temp%\APT18\SysInfo.txt
del /f /S C:\ProgramData\Microsoft\Windows\Start Menu\Programs\StartUp\APT18.lnk
powershell -ep bypass Remove-Item -path "$env:temp\APT18\APT18.jpg" -recurse
ECHO.

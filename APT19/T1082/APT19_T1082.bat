@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: System Information Discovery (T1082)
ECHO.
ECHO [+] System Information Discovery using builtin Utilities
ECHO ----------------------------------------------------------
powershell -ep bypass $Env:processor_architecture;[System.Environment]::Is64BitOperatingSystem >> %temp%\APT19\sysinfo
cmd.exe /c ver >> %temp%\APT19\sysinfo
cmd.exe /c systeminfo >> %temp%\APT19\sysinfo
ECHO.


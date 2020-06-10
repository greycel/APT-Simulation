@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Registry Run Keys and Startup Folder (T1060)
ECHO.
ECHO [+] Simulate Add Registry Entry "APT18" to Achieve Persistence
ECHO 	- HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run
ECHO -------------------------------------------------------------------
cmd /c reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V "APT18" /t REG_SZ /F /D "%temp%\APT18\T1060.exe"
cmd /c reg delete "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /V "APT18" /f
ECHO -------------------------------------------------------------------
ECHO.






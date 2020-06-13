@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Data compression techniques	(T1002)
ECHO.
ECHO [+] Compress Data using Command Prompt and Powershell
ECHO -------------------------------------------------------------------
powershell.exe -noprofile -command "DIR %temp%\APT28\*.txt -Recurse | Compress-Archive -force -DestinationPath %temp%\APT28\exfil.zip"
ECHO.



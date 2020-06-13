@ECHO OFF

color 0E
ECHO ===========================================================================
ECHO Technique: Automated Collection	(T1119)
ECHO.
ECHO [+] Collection via Powershell
powershell -ep bypass ./APT28/T1119/AutoCollect.ps1
ECHO.



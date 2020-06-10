@ECHO OFF

color 0E
ECHO ===========================================================================
ECHO Technique: Automated Collection	(T1119)
ECHO.
ECHO [+] Collection via CMD
ECHO -------------------------------------------------------------------
cmd /c dir c: /b /s .docx | findstr /e .docx
cmd /c for /R C:\temp\ %%f in (*.docx) do copy %%f %temp%\APT1\
ECHO.

ECHO [+] Collection via Powershell
ECHO -------------------------------------------------------------------
powershell -ep bypass ./APT1/T1119/*.ps1
ECHO.

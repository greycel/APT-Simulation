@ECHO OFF
CLS
color 0E


ECHO ==================================================================
ECHO Technique: Process Discovery	(T1057)
ECHO.
ECHO [+] Process Discovery 
ECHO -------------------------------------------------------------------
cmd /c tasklist /v %temp%\APT28\pi.log
ECHO.

@ECHO OFF
CLS
color 0E


ECHO ===================================================================
ECHO Technique: Hidden Files and Directories	(T1158)
ECHO.
ECHO [+] Simulates Hidding of files using 'attrib' utility
ECHO -------------------------------------------------------------------
echo "This file is hidden" > "%temp%\APT28\Hide_T1158.txt"
attrib +h "%temp%\APT28\Hide_T1158.txt"
ECHO.

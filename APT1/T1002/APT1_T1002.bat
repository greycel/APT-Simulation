@ECHO OFF
CLS
color 0E


ECHO ==================================================================
ECHO Technique: Data compression techniques	(T1002)
ECHO.
ECHO [+] Simulate Data Compressing using command-line 'RAR' utility
ECHO -------------------------------------------------------------------
cmd /c systeminfo >> %temp%\APT1\info.txt
%Utilities%\rar a -r %temp%\APT1\prepareforexfil.rar %temp%\APT1\*.txt
%Utilities%\rar a -r -m0 -hp"infected" %temp%\APT1\pwd_prepareforexfil.rar %temp%\APT1\*
ECHO.



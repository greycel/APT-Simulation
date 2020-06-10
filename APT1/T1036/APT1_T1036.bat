@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Masquerading (T1036)
ECHO.
ECHO [+] Copying 'cmd.exe' as 'lsass.exe' and execute
ECHO -------------------------------------------------------------------
cmd.exe /c copy %SystemRoot%\System32\cmd.exe %temp%\APT1\lsass.exe
%temp%\APT1\lsass.exe /c ping -n 5 google.com
ECHO -------------------------------------------------------------------
ECHO.

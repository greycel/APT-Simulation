@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Account Discovery	(T1087)
ECHO.
ECHO [+] Account Discovery using 'NET' Utilities
ECHO -------------------------------------------------------------------
net user
cmd /c net localgroup
cmd /c net localgroup "Users"
cmd /c net localgroup administrators
cmd /c net user
cmd /c net user /domain
net group "Domain Admins" /domain
ECHO -------------------------------------------------------------------
ECHO.

@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique:  Modify Existing Service (T1031)
ECHO.
ECHO [+] Simulating Modifing binPath of Existing "FAX" Service
ECHO -------------------------------------------------------------------
cmd /c sc config Fax binPath= "C:\windows\system32\WindowsPowerShell\v1.0\powershell.exe -noexit -c \"write-host 'APT19-T1031-Modifies Existing Service'\""
cmd /c sc start Fax
cmd /c sc config Fax binPath= "C:\WINDOWS\system32\fxssvc.exe"
ECHO.
::net stop wuauserv
::sc config wuauserv start= disabled
::net stop MpsSvc
::sc config MpsSvc start= disabled
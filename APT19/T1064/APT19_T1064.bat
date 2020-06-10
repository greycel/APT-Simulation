@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: WScript or CScript Dropper	(T1064)
ECHO.
ECHO [+] WScript or CScript Dropper  
ECHO -------------------------------------------------------------------
copy C:\Windows\System32\Printing_Admin_Scripts\en-US\pubprn.vbs %programdata%
cscript.exe /b %programdata%\pubprn.vbs
wscript.exe %programdata%\pubprn.vbs
ECHO.


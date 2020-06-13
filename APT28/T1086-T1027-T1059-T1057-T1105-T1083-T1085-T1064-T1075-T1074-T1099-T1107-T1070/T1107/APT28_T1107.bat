@ECHO OFF
CLS
color 0E


ECHO ================================================================
ECHO Technique: File Deletion (T1107)
ECHO.
ECHO [+] Deleting files to cover the tracks
ECHO ----------------------------------------------------------------
copy %utilities%\MessageBox32.dll %appdata%\
ping 127.0.0.1 -n 2 > nul
del /f "%appdata%\MessageBox32.dll"
ECHO.

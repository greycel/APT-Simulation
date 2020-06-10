@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Standard Application Layer Protocol (T1071) + External Remote Services (T1133)
ECHO.
ECHO [+] Simulate Exfil over HTTP port "80"
ECHO [+] T1071	-	Standard Application Layer Protocol
ECHO [+] T1043	-	Commonly Used Port
ECHO [+] T1133	-	External Remote Services
ECHO -------------------------------------------------------------------
powershell -ep bypass ./APT18/T1071-T1043-T1133/Exfil_Over_HTTP.ps1
ECHO.


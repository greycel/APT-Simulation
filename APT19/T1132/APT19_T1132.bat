@ECHO OFF
CLS
color 0E


ECHO ===================================================================
ECHO Technique: Data Encoding (T1132)
ECHO.
ECHO [+] Data Encoding for Exfiltration
ECHO -------------------------------------------------------------------
powershell -ep bypass "$File1='%temp%\APT19\sysinfo';$Content1=get-content $File1;$Bytes=[System.Text.Encoding]::UTF8.GetBytes($Content1);$Encoded=[System.Convert]::ToBase64String($Bytes);$Encoded | set-content ($File1 + '.b64'); "
ECHO.

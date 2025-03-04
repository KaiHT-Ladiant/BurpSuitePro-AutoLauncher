Function GetBurpInstallPath()
    Dim paths(3), fso
    Set fso = CreateObject("Scripting.FileSystemObject")
    

    paths(0) = "C:\Program Files\BurpSuitePro"
    paths(1) = "C:\Program Files\PortSwigger\Burp Suite Professional"
    paths(2) = ReadRegistryPath("HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Burp Suite Professional", "InstallLocation")
    
    For Each path In paths
        If fso.FolderExists(path) Then
            GetBurpInstallPath = path
            Exit Function
        End If
    Next
	REM Edit to your Inatalled BurpsuitePro    
    GetBurpInstallPath = "C:\Program Files\BurpSuitePro"
End Function

Function ReadRegistryPath(regKey, valueName)
    On Error Resume Next
    Dim WshShell, oExec
    Set WshShell = CreateObject("WScript.Shell")
    Set oExec = WshShell.Exec("reg query """ & regKey & """ /v " & valueName)
    
    Do While oExec.Status = 0
        WScript.Sleep 100
    Loop
    
    If InStr(oExec.StdOut.ReadAll(), valueName) > 0 Then
        ReadRegistryPath = Trim(Split(Split(oExec.StdOut.ReadAll(), "REG_SZ")(1), vbCrLf)(0))
    End If
End Function

Dim WshShell, desktopPath, installPath
Set WshShell = CreateObject("WScript.Shell")
desktopPath = WshShell.SpecialFolders("Desktop")
installPath = GetBurpInstallPath()

Set fso = CreateObject("Scripting.FileSystemObject")
If Not fso.FileExists(installPath & "\BurpSuitePro.exe") Then
    MsgBox "Didn't Find BurpSuitePro.exe!" & vbCrLf & _
           "Path: " & installPath, vbCritical, "CRITICAL ERROR"
    WScript.Quit 1
End If

Set shortcut = WshShell.CreateShortcut(desktopPath & "\BurpSuitePro.lnk")
shortcut.TargetPath = "wscript.exe"
shortcut.Arguments = Chr(34) & installPath & "\loader.vbs" & Chr(34)
shortcut.IconLocation = installPath & "\BurpSuitePro.exe, 0" 
shortcut.Save

MsgBox "Patch: " & installPath & vbCrLf & _
       "Create Link Complete.", vbInformation, "Create Complete."

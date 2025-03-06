' BurpSuite Pro Desktop Shortcut Creator
' Version 1.3 (2025-03-06)
' Scriptting From Kai_HT

Option Explicit

Dim objShell, objFSO, desktopPath, scriptFolder, targetPath

Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

scriptFolder = objFSO.GetParentFolderName(WScript.ScriptFullName)

' loader.vbs Full Path Create
targetPath = scriptFolder & "\loader.vbs"

' Exist File Confirm.
If Not objFSO.FileExists(targetPath) Then
    MsgBox "[ERROR] loader.vbs Not Founded." & vbCrLf & _
           "Path: " & targetPath, vbCritical, "Not Found"
    WScript.Quit(1)
End If

' Bring Desktop Path
desktopPath = objShell.SpecialFolders("Desktop")

' Create lnk File
With objShell.CreateShortcut(desktopPath & "\Burpsuite Pro.lnk")
    .TargetPath = targetPath     
    .WorkingDirectory = scriptFolder  
    .Description = "BurpSuite Professional Launcher"
    .IconLocation = "%BurpSuitePath%\BurpSuitePro.exe"
    .WindowStyle = 1            
    .Save
End With

MsgBox "Create Lnk File Successful.", vbInformation, "Complete"

Set objShell = Nothing
Set objFSO = Nothing

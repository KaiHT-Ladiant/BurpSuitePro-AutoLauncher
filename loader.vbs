Dim WshShell, installPath
Set WshShell = CreateObject("WScript.Shell")
installPath = WshShell.ExpandEnvironmentStrings("%BurpSuitePath%")

WshShell.Run Chr(34) & installPath & ".\code.bat" & Chr(34), 0
Set WshShell = Nothing

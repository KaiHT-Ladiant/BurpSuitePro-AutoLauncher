Set WshShell = CreateObject("WScript.Shell")
WshShell.Run chr(34) & "C:\\Program Files\\BurpSuitePro\\code.bat" & Chr(34), 0
Set WshShell = Nothing
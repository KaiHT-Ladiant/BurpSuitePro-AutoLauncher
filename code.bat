@echo off
title BurpSuitePro Launcher

REM BurpsuitePro Run with Keygen
REM Code By Kai_HT
REM Will be updated later
REM Version 1.0
REM Set Encoding Type "ANSI" to save

REM Set Width length
setlocal enabledelayedexpansion
for /f %%W in ('powershell -Command "(Get-Host).UI.RawUI.WindowSize.Width"') do set "width=%%W"
set "line="

REM set "INSTALL_DIR=C:\Program Files\BurpSuitePro"

set /p INSTALL_DIR=Installed BurpsuitePro PATH: 
set "JAVA_EXE=%INSTALL_DIR%\jre\bin\java.exe"
set "LOADER_JAR=%INSTALL_DIR%\BurpLoaderKeygen_v1.17.jar"

echo.
echo ¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦Á
echo ¦¢            BurpsuitePro Run with Keygen           ¦­
echo ¦¢               Scripting From Kai_HT               ¦­
echo ¦Æ¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦°

echo [+] Initializing BurpSuite Professional...
for /l %%i in (1,1,%width%) do set "line=!line!¦¡"

"%INSTALL_DIR%\jre\bin\java.exe" "--add-opens=java.desktop/javax.swing=ALL-UNNAMED" "--add-opens=java.base/java.lang=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED" "-javaagent:%INSTALL_DIR%/BurpLoaderKeygen_v1.17.jar" "-noverify" "-jar" "%INSTALL_DIR%\burpsuite_pro.jar" 
REM java.exe "--add-opens=java.desktop/javax.swing=ALL-UNNAMED" "--add-opens=java.base/java.lang=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED" "-javaagent:%INSTALL_DIR%/BurpLoaderKeygen_v1.17.jar" "-noverify" "-jar" "%INSTALL_DIR%\burpsuite_pro.jar" 


for /l %%i in (1,1,%width%) do set "line=!line!¦¡"
echo [+] Launch sequence completed
pause

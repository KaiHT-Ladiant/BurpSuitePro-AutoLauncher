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

set "INSTALL_DIR=C:\Program Files\BurpSuitePro"
set "JAVA_EXE=%INSTALL_DIR%\jre\bin\java.exe"
set "LOADER_JAR=%INSTALL_DIR%\BurpLoaderKeygen_v1.17.jar"

echo.
echo ����������������������������������������������������������������������������������������������������������
echo ��            BurpsuitePro Run with Keygen           ��
echo ��               Scripting From Kai_HT               ��
echo �Ʀ�������������������������������������������������������������������������������������������������������

echo [+] Initializing BurpSuite Professional...
for /l %%i in (1,1,%width%) do set "line=!line!��"

REM "C:\Program Files\BurpSuitePro\jre\bin\java.exe" "--add-opens=java.desktop/javax.swing=ALL-UNNAMED" "--add-opens=java.base/java.lang=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED" "-javaagent:C:/Program Files/BurpSuitePro/BurpLoaderKeygen_v1.17.jar" "-noverify" "-jar" "C:\Program Files\BurpSuitePro\burpsuite_pro.jar" 
java.exe "--add-opens=java.desktop/javax.swing=ALL-UNNAMED" "--add-opens=java.base/java.lang=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED" "-javaagent:C:/Program Files/BurpSuitePro/BurpLoaderKeygen_v1.17.jar" "-noverify" "-jar" "C:\Program Files\BurpSuitePro\burpsuite_pro.jar" 


for /l %%i in (1,1,%width%) do set "line=!line!��"
echo [+] Launch sequence completed
pause
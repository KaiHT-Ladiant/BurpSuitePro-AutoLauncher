@echo off
title BurpSuitePro Launcher v2.1
setlocal enabledelayedexpansion

:: BurpsuitePro Run with Keygen
:: Code By Kai_HT
:: Will be updated later
:: Version 2.1
:: Set Encoding Type "ANSI" to save
:: Set Width length

:: Auto-detect BurpSuite installation path

echo.
echo ┌────────────────────────────────────────────────────┒
echo │            BurpsuitePro Run with Keygen            ┃
echo │               Scripting From Kai_HT                ┃
echo ┕━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
echo.

echo [*] Detecting BurpSuite Pro installation...
set "PS_COMMAND=powershell -Command "$ErrorActionPreference='Silent'; Get-ItemProperty -Path 'HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*' ^| Where-Object { $_.DisplayName -like '*Burp Suite*' } ^| Select-Object -First 1 InstallLocation ^| %%{ $_.InstallLocation }""

for /f "delims=" %%i in ('%PS_COMMAND%') do set "AUTO_DIR=%%i"

:: Path validation
if defined AUTO_DIR (
    if exist "!AUTO_DIR!\burpsuite_pro.jar" (
        set "INSTALL_DIR=!AUTO_DIR!"
        echo [+] Auto-detected path: !INSTALL_DIR!
    ) else (
        echo [!] Invalid registry entry: !AUTO_DIR!
        set "AUTO_DIR="
    )
)

:: Fallback to manual input
if not defined AUTO_DIR (
    :RETRY_INPUT
    set /p "INSTALL_DIR=Input BurpSuitePro path: "
    if not exist "!INSTALL_DIR!\burpsuite_pro.jar" (
        echo [!] Invalid installation directory
        goto RETRY_INPUT
    )
)

:: Set environment variables
set "JAVA_EXEC=%INSTALL_DIR%\jre\bin\java.exe"
set "LOADER_JAR=%INSTALL_DIR%\BurpLoaderKeygen_v1.17.jar"

:: Dynamic UI elements
for /f %%W in ('powershell -Command "(Get-Host).UI.RawUI.WindowSize.Width"') do set width=%%W
for /f "delims=" %%a in ('powershell "'─' * %width% -join ''"') do set "line=%%a"

echo.
echo.

:: Execution block
echo %line%
echo      BurpSuite Professional Launcher (v2.1)
echo      Auto-Path Detection Enabled
echo %line%

echo.
echo.

echo [+] Launching BurpSuite Pro...
echo.
"%JAVA_EXEC%" ^
--add-opens=java.desktop/javax.swing=ALL-UNNAMED ^
--add-opens=java.base/java.lang=ALL-UNNAMED ^
--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED ^
--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED ^
--add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED ^
-javaagent:"%LOADER_JAR%" ^
-noverify ^
-jar "%INSTALL_DIR%\burpsuite_pro.jar" 
echo.
echo %line%
echo.
echo [-] Burpsuite Exit.
echo [*] Create By Kai_HT
echo.
pause

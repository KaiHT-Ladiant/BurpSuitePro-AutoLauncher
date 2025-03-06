@echo off
title BurpSuitePro Launcher

REM BurpsuitePro Run with Keygen
REM Code By Kai_HT
REM Will be updated later
REM Version 2.0
REM Set Encoding Type "ANSI" to save

REM Get Administrator Permition
if not "%1"=="am_admin" (
    %SYSTEMROOT%\System32\runas.exe /user:Administrator "%~0 am_admin"
    exit /b
)

REM Set Width length
for /f %%W in ('powershell -Command "(Get-Host).UI.RawUI.WindowSize.Width"') do set "width=%%W"
set "line="
:RETRY_PATH

REM set "INSTALL_DIR=C:\Program Files\BurpSuitePro"

set /p INSTALL_DIR=Installed BurpsuitePro PATH: 
set "JAVA_EXEC=%INSTALL_DIR%\jre\bin\java.exe"
set "LOADER_JAR=%INSTALL_DIR%\BurpLoaderKeygen_v1.17.jar"

REM File Exist Check
REM if not exist "%JAVA_EXEC%" (
REM     echo [!] Where is Java? Require Java Path Setting.
REM     goto RETRY_PATH
REM )

echo.
echo ¦£¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦¡¦Á
echo ¦¢            BurpsuitePro Run with Keygen           ¦­
echo ¦¢               Scripting From Kai_HT               ¦­
echo ¦Æ¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦¬¦°

echo [+] Initializing BurpSuite Professional...
for /l %%i in (1,1,%width%) do set "line=!line!¦¡"

%JAVA_EXEC% --add-opens=java.desktop/javax.swing=ALL-UNNAMED --add-opens=java.base/java.lang=ALL-UNNAMED -javaagent:"%LOADER_JAR%" -noverify -jar "%INSTALL_DIR%\burpsuite_pro.jar"

for /l %%i in (1,1,%width%) do set "line=!line!¦¡"
echo [+] Launch sequence completed
pause

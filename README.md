# BurpSuite Pro Auto-Launcher
![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![Batch](https://img.shields.io/badge/Batch-4D4D4D?style=for-the-badge&logo=windows-terminal&logoColor=white)
![VBScript](https://img.shields.io/badge/VBScript-0175C2?style=for-the-badge&logo=.net&logoColor=white)


> **⚠️ Legal Notice**  
> For educational purposes only. Burp Suite® is a registered trademark of PortSwigger Ltd. Unauthorized use may violate [EULA](https://portswigger.net/eula).

## 🚀 Features
- Silent console execution via VBS wrapper
- One-click desktop shortcut generation
- Automatic path configuration
- Winget-based installation

## 📦 File Structure
```
📂 BurpSuitePro-AutoLauncher
├──📜 code.bat # Modified batch file
├──📜 loader.vbs # Silent launcher
└──📜 create_shortcut.vbs # Desktop shortcut generator
```

## 🔧 Modified Code Files
### code.bat (Optimized)
```bat
	...
	REM Edit to Your Path.
	java.exe "--add-opens=java.desktop/javax.swing=ALL-UNNAMED" "--add-opens=java.base/java.lang=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED" "--add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED" "-javaagent:[YourBurpsuiteProInstalledPath]/BurpLoaderKeygen_v1.17.jar" "-noverify" "-jar" "[YourBurpsuiteProInstalledPath]\burpsuite_pro.jar" 
	...
```
### create_shortcut.vbs (One-time Use)
```bat
	...
	REM Edit to your Inatalled BurpsuitePro
    GetBurpInstallPath = "[YourBurpsuiteProInstalledPath]"
	...
```

## 📥 Installation Guide
1. Install BurpSuite Pro
```powershell
winget install PortSwigger.BurpSuite.Professional --source winget
```
2. Get Keygen via Telegram
```md
1. Visit BurpLoaderKeygen GitHub
2. Follow Telegram link in repository
3. Download latest JAR file
4. Place in:   
- C:\Program Files\PortSwigger\Burp Suite Professional\
```
3. Clone repository to installation directory
```git
git clone https://github.com/KaiHT-Ladiant/BurpSuitePro-AutoLauncher.git
```
## 🛠 Usage
1. Run silently (no console)
- wscript loader.vbs
2. Create desktop shortcut (run once)
- wscript create_shortcut.vbs

## 🔍 Troubleshooting
| Error | Solution |
|-------|----------|
| 0x80070002 | Run as Administrator |
| Antivirus block | Add exclusion for Burp directory |
| Missing Java | Reinstall BurpSuite |

# BurpSuite Pro Auto-Launcher ![Java](https://camo.githubusercontent.com/6ce15b81c1f06d716d7a55fbf07913f35a9bceb3a7931c0d3d6b57e329a29b2c/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f4a6176612d4544384230303f7374796c653d666f722d7468652d6261646765266c6f676f3d6a617661266c6f676f436f6c6f723d7768697465) ![Batchfile](https://camo.githubusercontent.com/6d5e3e1a0e2c8a9a0c6e5e7d6e5e7d6e5e7d6e5e7d6e5/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f426174636866696c652d3430344430303f7374796c653d666f722d7468652d6261646765266c6f676f3d77696e646f7773266c6f676f436f6c6f723d626c7565) ![VBScript](https://camo.githubusercontent.com/6b7b4b7b4b7b4b7b4b7b4b7b4b7b4b7b4b7b4b7b4b/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f562d42617369632d3030353939453f7374796c653d666f722d7468652d6261646765266c6f676f3d76697375616c2d73747564696f2d636f6465266c6f676f436f6c6f723d7768697465)

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

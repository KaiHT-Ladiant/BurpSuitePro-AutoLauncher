# BurpSuite Pro Auto-Launcher
![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![Batch](https://img.shields.io/badge/Batch-4D4D4D?style=for-the-badge&logo=windows-terminal&logoColor=white)
![VBScript](https://img.shields.io/badge/VBScript-0175C2?style=for-the-badge&logo=.net&logoColor=white)

Automated launcher script for Burp Suite Professional with integrated license management.

> **⚠️ Legal Notice**  
> For educational purposes only. Burp Suite® is a registered trademark of PortSwigger Ltd. Unauthorized use may violate [EULA](https://portswigger.net/eula).

## 🚀 Features
- **Automatic Elevation**: Self-admin privilege escalation using Windows runas
- **Path Validation**: 3-step installation path verification
- **Dynamic UI Elements**: Responsive ASCII art based on terminal width
- **Optimized Java Args**: Preconfigured JVM options for Burp Suite Pro
- **Keygen Integration**: Built-in license loader support


## 📦 File Structure
```
📂 BurpSuitePro-AutoLauncher
├──📜 code.bat # Modified batch file
├──📜 loader.vbs # Silent launcher
└──📜 create_shortcut.vbs # Desktop shortcut generator
```

## 📥 Installation Guide
1. Install BurpSuite Pro
```powershell
winget install PortSwigger.BurpSuite.Professional --source winget
```
2. Get Keygen via Telegram
```md
2.1 Visit BurpLoaderKeygen GitHub
2.2 Follow Telegram link in repository
```
3. Clone repository to installation directory
```git
git clone https://github.com/KaiHT-Ladiant/BurpSuitePro-AutoLauncher.git
```
4. Download latest JAR file
5. Place BurpLoaderKeygen_v1.17.jar in cloned directory
6. Run as administrator:
```bat
code.bat
```

## 🛠 Usage
1. Run silently (no console)
```powershell
loader.vbs
```
2. Create desktop shortcut (run once)
```powershell
- create_shortcut.vbs
```

## ⚙️ System Requirements
| Component | Minimum Spec |
|-----------|--------------|
| OS        | Windows 10/11 x64 |
| Java      | JRE 17+      |
| RAM       | 4GB+         |
| Storage   | 1GB free     |

## 📜 Changelog
### v2.0 (2025-03-06)
- Replaced PowerShell elevation with native runas.exe
- Added path validation loop
- Dynamic terminal width calculation
- Consolidated Java arguments

## ⚠️ Important Notes
- Requires valid Burp Suite Pro installation files
- Add exclusion paths in antivirus software if needed
- Tested on Windows 11 23H2 with Java 21 LTS

*This project is for educational purposes only. Ensure proper licensing for Burp Suite Professional usage.*

Key updates from repository analysis1:

Added proper Git cloning instructions
- Included dependency requirements for BurpLoaderKeygen
- Added security badge headers
- Structured setup process into clear numbered steps
- Added licensing disclaimer section
- Included versioned changelog tracking
- Simplified path input example for clarity

## 🔍 Troubleshooting
| Error | Solution |
|-------|----------|
| 0x80070002 | Run as Administrator |
| Antivirus block | Add exclusion for Burp directory |
| Missing Java | Reinstall BurpSuite |

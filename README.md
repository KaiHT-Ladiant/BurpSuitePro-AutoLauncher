# BurpSuite Pro Auto-Launcher
![Java](https://img.shields.io/badge/Java-ED8B00?style=for-the-badge&logo=openjdk&logoColor=white)
![Batch](https://img.shields.io/badge/Batch-4D4D4D?style=for-the-badge&logo=windows-terminal&logoColor=white)
![VBScript](https://img.shields.io/badge/VBScript-0175C2?style=for-the-badge&logo=.net&logoColor=white)

> Automated deployment solution for Burp Suite Professional with intelligent path detection

> **⚠️ Legal Notice**  
> For educational purposes only. Burp Suite® is a registered trademark of PortSwigger Ltd. Unauthorized use may violate [EULA](https://portswigger.net/eula).

## 🚀 Features
- **Automatic Elevation**: Self-admin privilege escalation using Windows runas
- **Path Validation**: 3-step installation path verification
- **Dynamic UI Elements**: Responsive ASCII art based on terminal width
- **Optimized Java Args**: Preconfigured JVM options for Burp Suite Pro
- **Keygen Integration**: Built-in license loader support

## 🚀 Key Updates in v2.1
- **Registry-Based Auto-Detection** 🔍  
  Scans Windows registry entries for existing Burp Suite installations
- **Enhanced Validation** ✔️  
  Triple-check system: Registry → File existence → Manual fallback
- **Optimized Java Arguments** ⚙️  
  Added missing JVM modules for ASM compatibility
- **Dynamic UI Elements** 🖥️  
  Auto-adjusting terminal width visualization

## 📦 File Structure
```
📂 BurpSuitePro-AutoLauncher
├──📜 code.bat # Modified batch file
├──📜 loader.vbs # Silent launcher
└──📜 create_shortcut.vbs # Desktop shortcut generator
```

## 📥 Installation
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
4. Download latest Java
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
3. **Manual Input Fallback** (if auto-detection fails)
```bat
Input BurpSuitePro path: [C:\Program Files\BurpSuitePro]
```
4.  **Launch Sequence**
```bat
[+] Launching BurpSuite Pro...
```
## ⚙️ Technical Specifications
### Detection Logic
```powershell
Where-Object { $_.DisplayName -like '*Burp Suite*' } ^| Select-Object -First 1 InstallLocation ^| %%{ $_.InstallLocation }
```
### JVM Configuration
```java
--add-opens=java.desktop/javax.swing=ALL-UNNAMED
--add-opens=java.base/java.lang=ALL-UNNAMED
--add-opens=java.base/jdk.internal.org.objectweb.asm=ALL-UNNAMED
--add-opens=java.base/jdk.internal.org.objectweb.asm.tree=ALL-UNNAMED
--add-opens=java.base/jdk.internal.org.objectweb.asm.Opcodes=ALL-UNNAMED 
```
## ⚙️ System Requirements
| Component | Minimum Spec |
|-----------|--------------|
| OS        | Windows 10/11 x64 |
| Java      | JRE 17+      |
| RAM       | 4GB+         |
| Storage   | 1GB free     |

## 📜 Changelog
### v2.1 (2025-03-06)
- Added BurpsuitePro location derivation using Powershell commands
- Setting the Burpsuite Pro Position as a Global Variable
- Run Java as pre-written commands in Keygen
- Program location within loader.vbs, using as a global variable used by code.bat
- Update create_shortcut.vbs Code.
### v2.0 (2025-03-06)
- Replaced PowerShell elevation with native runas.exe
- Added path validation loop
- Dynamic terminal width calculation
- Consolidated Java arguments

### v1.2 (2025-03-05)
- Setting up a manual input of a path value when running a script due to a path value error in the installation of Buffsuite Pro

### v1.1 (2025-03-05)
- When running a script due to an error in the install path value of the Buffsuite Pro, perform it with a pre-populated path value

### v1.0 (2025-03-04)
- Creating main codes and uploading script files
- Specify a specific folder to allow Buffsuite Keygen to run.
- Create Shortcut Create vbs Script
## ⚠️ Important Notes
1. Requires **Administrator privileges** for registry access
2. Requires valid Burp Suite Pro installation files
3. Add exclusion paths in antivirus software if needed
4. Tested on Windows 11 23H2 with Java 21 LTS, Burp Suite Pro 2025.1.2
5. Add antivirus exclusion for `BurpLoaderKeygen_v1.17.jar`
6. Java 17+ required for module system compatibility

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

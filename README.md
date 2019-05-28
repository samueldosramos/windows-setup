# Windows 10 Setup Script

This is a scripts to setup `Windows 10` using `PowerShell`.  
**Note:** _You can modify the scripts to fit your own requirements._

## Installation

If you already have `Windows 10`, run these commands:

```
git clone https://github.com/samuelramox/windows-setup.git && cd windows-setup

./install/script.ps1
```

## Steps

- Set a new computer name
- Remove a few pre-installed `UWP` applications:
  - Candy Crush Saga
  - Fitbit FitbitCoach
  - Microsoft 3D Builder
  - Microsoft 3D Viewer
  - Microsoft Bing News
  - Microsoft One Connect
  - Microsoft Print 3D
  - Microsoft Solitaire Collection
  - Microsoft Windows Feedback
  - Netflix
- Install `Chocolatey` and some apps:
  - [Fluent Terminal](https://github.com/felixse/FluentTerminal)
  - [Fira Code Font](https://github.com/tonsky/FiraCode)
  - [Franz](https://meetfranz.com/)
  - [Git](https://gitforwindows.org/)
  - [Git Credential Manager for Windows](https://github.com/Microsoft/Git-Credential-Manager-for-Windows)
  - [Google Chrome](https://www.google.com/chrome/)
  - [Node.js](https://nodejs.org/)
  - [PeaZip](http://www.peazip.org/)
  - [qBittorrent](https://www.qbittorrent.org/index.php)
  - [Visual Studio Code](https://chocolatey.org/packages/vscode)
  - [Visual Studio Code Insiders](https://code.visualstudio.com/insiders/)\*
- Enable PUA Protection
- Raise UAC level
- Disable Remote Desktop
- Disable Autoplay
- Disable Autorun for all drives
- Disable built-in Adobe Flash in IE and Edge
- Disable Windows Update P2P delivery optimization (WUDO) completely
- Install WSL and Ubuntu 18.04

\* _So far, `Visual Studio Code Insiders` are required to use the [Remote - WSL](https://aka.ms/vscode-remote/download/wsl) extension._

## Manual setup after installation

### Enable clipboard history

Open the `Settings` app and go to the `System group of settings`. Select the `Clipboard` tab, and turn on `Clipboard History`.

### Install QuickLook

Allows user peek into a file content in lightning speed by just pressing the Space key.  
Link in Microsoft Store: [QuickLook](https://www.microsoft.com/pt-br/p/quicklook/9nv4bs3l1h4s?ocid=badge&rtc=1&activetab=pivot:overviewtab)

### Block non-Store apps

Settings -> Apps -> Apps & features -> The Microsoft Store only (recommended).   
**Note:** _I only do this when I've installed everything I need._

## References and more options

- [EdiWang EnvSetup](https://github.com/EdiWang/EnvSetup/)
- [Win10 Initial Setup Script](https://github.com/Disassembler0/Win10-Initial-Setup-Script)

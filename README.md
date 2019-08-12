# Windows 10 Setup Script

This is a scripts to setup `Windows 10` using `PowerShell`.
**Note:** _You can modify the scripts to fit your own requirements._

## Installation

If you already have `Windows 10`, run these commands in `PowerShell`:

```
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/samuelramox/windows-setup/master/script.ps1'))
```

## Steps

- Set a new computer name
- Remove a few pre-installed `UWP` applications:
  - Candy Crush
  - Fitbit FitbitCoach
  - Microsoft 3D Builder
  - Microsoft 3D Viewer
  - Microsoft Bing News
  - Microsoft Mixed Reality Portal
  - Microsoft One Connect
  - Microsoft Print 3D
  - Microsoft Solitaire Collection
  - Microsoft Tips
  - Microsoft Windows Feedback
  - Microsoft Xbox
  - Netflix
  - Windows Mixed Reality
- Install `Chocolatey` and some apps:
  - [Fira Code Font](https://github.com/tonsky/FiraCode)
  - [Git](https://gitforwindows.org/) (with --params "/NoShellIntegration /NoAutoCrlf /SChannel /WindowsTerminal")
  - [Google Chrome](https://www.google.com/chrome/)
  - [Node.js LTS](https://nodejs.org/)
  - [PeaZip](http://www.peazip.org/)
  - [qBittorrent](https://www.qbittorrent.org/index.php)
  - [Visual Studio Code](https://chocolatey.org/packages/vscode)
- Enable PUA Protection
- Disable Autoplay
- Disable Autorun for all drives
- Disable built-in Adobe Flash in IE and Edge
- Disable Windows Update P2P delivery optimization (WUDO) completely
- Install WSL and enable Hyper-V

## Manual setup after installation (optional)

### Terminal options:

- [Windows Terminal](https://www.microsoft.com/en-us/p/windows-terminal-preview/9n0dx20hk701?activetab=pivot%3Aoverviewtab)
- [Terminus](https://eugeny.github.io/terminus/)
- [Fluent Terminal](https://github.com/felixse/FluentTerminal)

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
- [QuickLook](https://pooi.moe/QuickLook/)

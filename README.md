# Windows 11 Setup Script

This is a scripts to setup `Windows 11` using `PowerShell`.  
**Note:** _You can modify the scripts to fit your own requirements._

## Installation

If you already have `Windows 11`, run these commands in `PowerShell`:

```
Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/samuelramox/windows-setup/master/script.ps1'))
```

## Steps

- Remove a few pre-installed `UWP` applications:
  - Disney.37853FC22B2CE
  - Microsoft.BingNews
  - Microsoft.GetHelp
  - Microsoft.Getstarted
  - Microsoft.MicrosoftSolitaireCollection
  - Microsoft.MicrosoftOfficeHub
  - Microsoft.WindowsFeedbackHub
  - SpotifyAB.SpotifyMusic
- Install `Winget` and some apps:
  - [Git](https://gitforwindows.org/)
  - [Google Chrome](https://www.google.com/chrome/)
  - [Oh My Posh](https://ohmyposh.dev)
  - [Postman](https://www.postman.com)
  - [PowerToys](https://github.com/microsoft/PowerToys)
  - [QuickLook](https://pooi.moe/QuickLook/)
  - [Slack](https://slack.com/intl/pt-br/)
  - [Visual Studio Code](https://chocolatey.org/packages/vscode)
- Enable PUA Protection
- Disable Autoplay
- Disable Autorun for all drives
- Disable Windows Update P2P delivery optimization (WUDO) completely
- Install WSL
- Install Nerd Font via OhMyPosh

## Manual setup after installation (optional)

### Enable clipboard history

Open the `Settings` app and go to the `System group of settings`. Select the `Clipboard` tab, and turn on `Clipboard History`.

### Block non-Store apps

Settings -> Apps -> Apps & features -> The Microsoft Store only (recommended).
**Note:** _I only do this when I've installed everything I need._

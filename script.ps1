# Windows 10 Setup Script
# Run this script in PowerShell

# -----------------------------------------------------------------------------
# Self elevate administrative permissions in this script
if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")) { Start-Process powershell.exe "-NoProfile -ExecutionPolicy Bypass -File `"$PSCommandPath`"" -Verb RunAs; exit }

function Check-Command($cmdname) {
  return [bool](Get-Command -Name $cmdname -ErrorAction SilentlyContinue)
}

# -----------------------------------------------------------------------------
# Install Chocolatey and apps
if (Check-Command -cmdname 'choco') {
  Write-Host "Choco is already installed, skip installation."
}
else {
  Write-Host ""
  Write-Host "Installing Chocolatey for Windows..." -ForegroundColor Green
  Write-Host "------------------------------------" -ForegroundColor Green
  Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
}

Write-Host ""
Write-Host "Installing Windows apps..." -ForegroundColor Green
Write-Host "------------------------------------" -ForegroundColor Green

if (Check-Command -cmdname 'git') {
  Write-Host "Git is already installed, checking new version..."
  choco update git -y
}
else {
  Write-Host ""
  Write-Host "Installing Git for Windows..." -ForegroundColor Green
  choco install git --params "/NoShellIntegration /NoAutoCrlf /SChannel /WindowsTerminal" -y
}

$apps= @(
  "beekeeper-studio",
  "googlechrome",
  "insomnia-rest-api-client",
  "microsoft-windows-terminal",
  "slack",
  "vscode",
  "zoom"
)

foreach ($app in $apps) {
  choco install $app -y
}

# -----------------------------------------------------------------------------
# Install WSL and Ubuntu
Write-Host ""
Write-Host "Installing WSL..." -ForegroundColor Green
Write-Host "------------------------------------" -ForegroundColor Green
Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
Enable-WindowsOptionalFeature -Online -FeatureName VirtualMachinePlatform
wsl --set-default-version 2
wsl.exe --install -d Ubuntu

# -----------------------------------------------------------------------------
# Restart Windows
Write-Host "------------------------------------" -ForegroundColor Green
Read-Host -Prompt "Setup is done. Restart is needed, press [ENTER] to restart computer."
Restart-Computer

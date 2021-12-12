# Install web development environment


# Install packages
Write-Output "Installing packages..."
winget install Git.Git
winget install Google.Chrome
winget install OpenJS.NodeJS
winget install Docker.DockerDesktop
winget install OpenVPNTechnologies.OpenVPN
winget install Microsoft.WindowsTerminal
winget install MongoDB.Server
winget insatll MongoDB.Shell
winget install MongoDB.Compass.Community
winget install TimKosse.FileZilla.Client
winget install ApacheFriends.Xampp
winget install Microsoft.VisualStudioCode
winget install Python.Python.3


# Setup file explorer
Write-Output "Setting up file explorer..."
Push-Location
Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
Set-ItemProperty . HideFileExt "0" # Show file extensions
Set-ItemProperty . Hidden "1" # Show hidden files
Pop-Location


# Enable Developer mode
Write-Output "Setting up developer mode..."
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\AppModelUnlock" /t REG_DWORD /f /v "AllowDevelopmentWithoutDevLicense" /d "1"
# Disable auto boot recovery after failed boots
bcdedit /set `{current`} BootStatusPolicy IgnoreAllFailures | Out-Null
# Disable factory reset
reagentc /disable 2>&1 | Out-Null



Write-Output "Done."
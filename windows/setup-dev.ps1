# Install web development environment

# Winget install shorthand
function wgti {
    param( [Parameter()] [String] $Package )
    winget install --accept-package-agreements $Package
}
# --accept-package-agreements

# Install packages
Write-Output "Installing packages..."
wgti Git.Git
wgti Google.Chrome
wgti OpenJS.NodeJS
wgti Docker.DockerDesktop
wgti OpenVPNTechnologies.OpenVPN
wgti Microsoft.WindowsTerminal
wgti MongoDB.Server
wgti MongoDB.Shell
wgti MongoDB.Compass.Community
wgti TimKosse.FileZilla.Client
wgti ApacheFriends.Xampp
wgti Microsoft.VisualStudioCode
wgti Python.Python.3
wgti Microsoft.VisualStudio.2022.Community


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

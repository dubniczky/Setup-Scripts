# Winget install alias
function wgti {
    param( [Parameter()] [String] $Package )
    winget install --accept-package-agreements $Package
}

# General
wgti 7zip.7zip
wgti QL-Win.QuickLook
wgti BraveSoftware.BraveBrowser
wgti Oracle.JavaRuntimeEnvironment
wgti Microsoft.PowerToys
wgti TeamViewer.TeamViewer
wgti Notion.Notion
wgti OpenWhisperSystems.Signal
wgti Discord.Discord
wgti NordVPN.NordVPN
wgti Obsidian.Obsidian
wgti Bitwarden.Bitwarden
wgti Mozilla.Firefox
wgti 9NBHCS1LX4R0 # Paint.net
wgti 9MTFTXSJ9M7F # Rounded TB
wgti Appest.TickTick
wgti Obsidian.Obsidian

# Media & Gaming
wgti FlawlessWidescreen.FlawlessWidescreen
wgti Spotify.Spotify
wgti Valve.Steam
wgti VideoLAN.VLC

# Development
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
wgti GoLang.Go
wgti GnuPG.Gpg4win
wgti Mozilla.Firefox.DeveloperEdition

# System Specific
wgti DolbyLaboratories.DolbyAccess_rz1tebttyb220
wgti Logitech.Options
wgti Corsair.iCUE
wgti AMD.RyzenMaster

# Winget install shorthand
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
wgti AmineMouafik.Ferdi

# Media & Gaming
wgti FlawlessWidescreen.FlawlessWidescreen
wgti clsid2.mpc-hc # Media player classic
wgti 9WZDNCRFJ3TJ # Netflix
wgti Spotify.Spotify
wgti Valve.Steam
wgti VideoLAN.VLC

# Special
wgti DolbyLaboratories.DolbyAccess_rz1tebttyb220
wgti Logitech.Options
wgti Corsair.iCUE
wgti AMD.RyzenMaster

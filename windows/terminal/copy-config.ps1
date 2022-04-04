# Copying Windows Terminal settings.json to repository
Copy-Item $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json settings.json 
Write-Output "Settings copied."
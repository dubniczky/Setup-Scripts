# Install terminal app if not installed
if ( !(winget list -q Microsoft.WindowsTerminal) )
{
    Write-Output "Windows Terminal not installed, installing..."
    winget install Microsoft.WindowsTerminal
}
else
{
    Write-Output "Windows Terminal installed, skipping."
}

# Update terminal settings json
Copy-Item settings.json $env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json
Write-Output "Updated terminal settings."

# Copy custom terminal icons to user directory (~\.termicons)
Copy-Item icons\ $env:USERPROFILE\.termicons -Recurse
Write-Output "Added custom icons."


Write-Output "Done."
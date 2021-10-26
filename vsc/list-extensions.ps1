# Windows only
# List all currently installed VSC extensions with the automatic install command prepended

code --list-extensions | % { "code --install-extension $_" }
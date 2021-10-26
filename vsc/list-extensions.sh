# Linux only
# List all currently installed VSC extensions with the automatic install command prepended

code --list-extensions | xargs -L 1 echo code --install-extension
## Options
OVERRIDE_EXA="true" # Overrides ls commands with advanced exa


## Replace listing using LS with EXA
if [ $OVERRIDE_EXA ]; then
    # Use colors, use icons, group dirs, iso-time, show git status
    alias ls="exa --color=always --icons --group-directories-first --time-style=iso --git"
    # Shorter hand
    alias l="ls"
    # List style with file sizes
    alias ll="ls -bl"
    # List hidden files
    alias la="ll -a"
    # Show tree, do not include git ignored folders or .git directory
    alias tree="la --tree --git-ignore --ignore-glob=.git"
fi

## Configuration Shortcuts
alias zshconf="nano ~/.zshrc"
alias dnfconf="sudo nano /etc/dnf/dnf.conf"
alias gpgconf="nano ~/.gnupg/gpg.conf"

## Directory traversal
alias desk="cd ~/Desktop"
alias windesk="cd /mnt/c/Users/$USER/Desktop" # Used on WSL systems
alias root="cd /"

## Command simplification
alias s="sudo"
alias sdnf="sudo dnf -y" # Red Hat
alias sapt="sudo apt -y" # Debian
alias spacman="sudo pacman --noconfirm" # Arch
alias sdocker="sudo docker"

## Python 
alias py="python3"
alias python="python3"
alias pym="python manage.py" # For Django projects

## Security
alias metasploit="msfconsole"

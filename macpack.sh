#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://github.com/dubniczky/Setup-Scripts
## Install basic CLI and application packages for MAC OS using brew


# CLI apps
cli_apps=(
    bash # update to newer version, as macs ship with outdated
    bat
    exa
    jq
    openssl
    python@3.10
    tldr
    wget
    curl
    gnupg
    nmap
    gnu-tar
    go
    gradle
    pnpm
    sqlite
    zstd
)
brew install --display-times "${cli_apps[@]}"
echo "Installed ${#cli_apps[@]} cli applications."

# CLI apps
desktop_apps=(
    # Tools
    alfred
    appcleaner
    cheatsheet
    dropzone
    rectangle

    # Terminal
    iterm2
    fig

    # Dev
    firefox-developer-edition
    visual-studio-code
    git
    git-lfs
    g++

    # Web
    google-chrome
    firefox

    # Productivity
    ticktick
    teamviewer
    notion

    # Messaging
    telegram
    signal
    messenger
    slack
    zoom

    # Media
    spotify
    elmedia-player

    # Security
    nordvpn
    1password
    bitwarden
    viscosity
    autopsy
    dirb
    gobuster
    netcat
    metasploit
    john
)
brew install --display-times --cask "${desktop_apps[@]}"
echo "Installed ${#desktop_apps[@]} desktop applications."

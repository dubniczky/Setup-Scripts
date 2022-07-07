#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Installs signal messenger on debian based systems

## Install official Signal public software signing key
wget -O- https://updates.signal.org/desktop/apt/keys.asc \
    | gpg --dearmor >> /usr/share/keyrings/signal-desktop-keyring.gpg

# Add Signal repository
echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' \
    | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list

# Update package database and install signal
sudo apt update
sudo apt install -y signal-desktop

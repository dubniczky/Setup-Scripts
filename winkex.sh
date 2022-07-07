#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Install Kex desktop client on Kali WSL (interactive installation)
## For more information: https://www.kali.org/docs/wsl/win-kex/

## Install win-kex
sudo apt install -y kali-win-kex

## Remove unncecessary power management extension
# This package does not work in the container
# and thus will present an error on each startup
sudo apt purge -y xfce4-power-manager-data

## Add shortcuts
tee -a ~/.bashrc ~/.zshrc << EOF!
## Kex startup aliases recommened by the developers: https://www.kali.org/docs/wsl/win-kex/

# Win-KeX in Window Mode will run a Kali Linux desktop session in a separate window.
alias kex-window="kex --win --sound"

# Win-KeX in Enhanced Session Mode will run a Kali Linux desktop session in a separate window using protocols and clients native to Windows. ESM mode is the only supported mode on arm devices.
alias kex-enhanced="kex --esm --ip --sound"

# Win-KeX in Seamless Mode will launch a Kali Linux panel on the screen top of the Windows desktop.
alias kex-seamless="kex --sl --sound"
alias kex-stop="kex sl stop"
EOF!

## Reload shell
$SHELL

#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Updates all common package manager lists and apps
## No system will have all these package managers installed, but it will ignore those


## Do not exit when command fails
set +e

## Apt
sudo apt update -y
sudo apt upgrade -y

## Snap
sudo snap install core
sudo snap refresh

## Dnf
sudo dnf update -y

## Yum
sudo yum update

## Pacman
sudo pacman -Syyu

## Yay
yay -Syu

## Zypper
zypper update

## Flatpak
flatpak update

## Npm
sudo npm install -g npm@latest
sudo npm update -g

## Pip
pip install --upgrade pip
pip list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip install -U

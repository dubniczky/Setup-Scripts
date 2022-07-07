#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Upgrade kali luinux installation (recommended for WSL)

## Settings
KALI_METAPACKAGE="kali-linux-large" # About metapackages: https://www.kali.org/docs/general-use/metapackages/

## Do not warn about minimal installation
touch ~/.hushlogin

## Install large package
sudo apt install -y $KALI_METAPACKAGE

## Install additional packages
apt install -y \
        nano \
        mc \
        unzip \
        filezilla \
        sqlite3 \
        iputils-ping \
        traceroute \
        skipfish \
        htop \
        autopsy \
        dirb \
        hashcat \
        wordlists \
        tor \
        iproute2 \
        wfuzz \
        nfs-common \
        man

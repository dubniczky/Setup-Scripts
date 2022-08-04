#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Installs basic packages for debian systems

PKG="apt"

# OS version
lsb_release -dc

# Update pm/os
sudo $PKG update
sudo $PKG -y upgrade

# Install cli utilities
sudo $PKG install -qy \
    unzip \
    curl \
    wget \
    make \
    gnupg2 \
    ca-certificates \
    exa \
    g++ \
    git \
    git-lfs \
    mc \
    nano

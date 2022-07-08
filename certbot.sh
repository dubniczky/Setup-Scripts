#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Install certificate using certbot

## Settings
CERT_TARGET="apache" # apache, nginx, or manual


## Remove old installation
sudo apt remove -y certbot > /dev/null 2>&1 || true
sudo dnf remove -y certbot > /dev/null 2>&1 || true
sudo yum remove -y certbot > /dev/null 2>&1 || true

## Install certbot snap
sudo snap install --classic certbot

## Add to /usr/bin
sudo ln -s /snap/bin/certbot /usr/bin/certbot

## Setup certificate
sudo certbot --$CERT_TARGET

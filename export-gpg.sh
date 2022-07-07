#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Export gpg keys

## Settings
GPG_ID="nagy.richard.antal@gmail.com" # Email (or other) identification of the key
PUB_FILE="pub.pgp" # Public key file
PRV_FILE="prv.pgp" # Private key file


## Export keys
echo "Exporting key:"
gpg --list-keys --keyid-format=long $GPG_ID
gpg --armor --export $GPG_ID > $PUB_FILE
gpg --armor --export-secret-key $GPG_ID > $PRV_FILE
echo "Export successful."

## Display import info
echo "Import using following command:"
echo "gpg --import $PUB_FILE && gpg --import $PRV_FILE"

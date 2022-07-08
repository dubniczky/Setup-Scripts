#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Generates a gpg key using the given settings then displays the ID

## Options
OVERRIDE="--yes" # Override even if a key with the same email exists. Remove to turn off

## Settings
FULL_NAME="full user name"
MAIL_ADDR="full email address"
COMMENT="some comment, maybe repo url?"
PASSWORD="" # Leave empty for no password
KEY_TYPE="rsa"
KEY_BITS="4096"


## Generate key
echo "Generating key..."
GPG_OUTPUT=$(gpg --batch --passphrase \'$PASSWORD\' --yes --quick-gen-key "$FULL_NAME ($COMMENT) <$MAIL_ADDR>" "$KEY_TYPE$KEY_BITS" default never 2>&1 )

## Extract key ID
GPG_KEYID=$(echo $GPG_OUTPUT | grep -oE '[0-9A-F]{32,}' --color=never)

## Display key ID information
echo -e "Generated key ID:\n"
echo $GPG_KEYID
echo -e "\nTo setup git signing:\n"
echo "git config --global user.signingkey $GPG_KEYID"
echo "git config --global commit.gpgsign true"
echo "git config --global gpg.program \"$(command -v gpg)\""

## Display key listing
gpg --list-secret-keys --keyid-format=long $GPG_KEYID

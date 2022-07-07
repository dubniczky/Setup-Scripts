#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Generate ssh key pair if does not already exist, or replace the old one

## Options
OVERWRITE_EXISTING="true"

## Settings
PACKAGE_INSTALLER="apt install -y"
KEY_BITS="2048"
KEY_TYPE="rsa"
PRV="$HOME/.ssh/id_rsa"
PUB="$PRV.pub"

## Install OpenSSH package
if [ ! command -v ssh-keygen &> /dev/null ]; then
    echo "SSH-keygen not installed, installing openssh.."
    sudo $PACKAGE_INSTALLER openssh-client
fi

## Check current keys and backup
mkdir -p ~/.ssh
if [ -f $PRV -o -f $PUB ]; then
    echo "SSH key already exists for the current user."
    if [ ! $OVERWRITE_EXISTING ]; then
        echo "No changes were made."
        exit 0
    fi

    echo "Creating backup.."
    # Backup private key
    if [ -f $PRV ]; then
        echo "   $PRV -> $PRV.bkp"
        mv $PRV "$PRV.bkp"
        chmod 600 "$PRV.bkp"
    fi
    # Backup public key
    if [ -f $PUB ]; then
        echo "   $PUB -> $PUB.bkp"
        mv $PUB "$PUB.bkp"
        chmod 644 "$PUB.bkp"
    fi
fi

## Remove current keys
rm -f $PRV $PUB

## Generate and exatract fingerprint
FINGERPRINT=$( ssh-keygen -b $KEY_BITS -t $KEY_TYPE -N "" -f $PRV | grep "SHA256:" )

## Print key stats
echo "Key generated successfully:"
echo "   Private:      $PRV"
echo "   Public:       $PUB"
echo "   Fingerprint:  $FINGERPRINT"

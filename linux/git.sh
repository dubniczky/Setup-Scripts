#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Install and update git settings

## Settings
GIT_USERNAME="Richard Antal Nagy"
GIT_EMAIL="nagy.richard.antal@gmail.com"
GIT_SIGNINGKEY="???"
PACKAGE_INSTALLER="apt install -y"


## Install git
sudo $PACKAGE_INSTALLER git

## Set globals
git config --global user.name $GIT_USERNAME
git config --global user.email $GIT_EMAIL
git config --global credential.helper store
git config --global core.autocrlf true
git config --global init.defaultbranch main

## Setup GPG signing
git config --global user.signingkey $GIT_SIGNINGKEY
git config --global commit.gpgsign true
git config --global gpg.program $(which gpg)

## Install LFS
git lfs install

## List config
git config --list

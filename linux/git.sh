#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Install and update git settings

## Settings
GIT_USERNAME="Richard Antal Nagy"
GIT_EMAIL="nagy.richard.antal@gmail.com"
GIT_EDITOR="nano" # Commit message editor
GIT_SIGNINGKEY="" # Get using: gpg --list-secret-keys --keyid-format=long
GLOBAL_GITIGNORE="$HOME/.global.gitignore" # Global gitignore location, leave empyt for no global gitignore
PACKAGE_INSTALLER="apt install -y"


## Install git
sudo $PACKAGE_INSTALLER git

## Set globals
git config --global credential.helper store
git config --global core.autocrlf input # CRLF to LF
git config --global help.autocorrect true
git config --global color.ui auto
git config --global init.defaultbranch main # For compatibility with GitHub and GitLab
git config --global user.name "$GIT_USERNAME"
git config --global user.email "$GIT_EMAIL"
git config --global core.editor "$GIT_EDITOR"


## Setup GPG signing
if [ $GIT_SIGNINGKEY ]; then
    git config --global user.signingkey $GIT_SIGNINGKEY
    git config --global commit.gpgsign true
    git config --global gpg.program $(which gpg)
fi

## Create global gitignore
if [ $GLOBAL_GITIGNORE ]; then
    tee -a $GLOBAL_GITIGNORE > /dev/null << EOF!
.DS_Store/
node_modules/
*~
.*.swp
EOF!
    git config --global core.excludesfile "$GLOBAL_GITIGNORE"
fi

## Install LFS
git lfs install

## List config
git config --list

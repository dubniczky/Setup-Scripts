#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Installs NodeJS, NVM, package managers, and several general packages

## Settings
NVM_VERSION="v0.39.1" # Check for newest before running (https://github.com/nvm-sh/nvm#installing-and-updating)

## Install packages
sudo apt install -y nodejs npm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/$NVM_VERSION/install.sh | bash

## Check versions
node -v
npm -v

## Install yarn for faster package installation
npm i -g yarn

## Install global packages
npx yarn global add \
    nodemon \
    http-server \
    eslint \
    uglifyjs \
    webpack

## List all global packages
npm ls -g --depth=0

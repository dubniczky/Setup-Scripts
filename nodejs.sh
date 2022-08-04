#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Installs NodeJS, package managers, and several general packages

NODE_VERSION="18.9.0"

## Install PNPM
curl -fsSL https://get.pnpm.io/install.sh | sh -
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PATH:$PNPM_HOME"

## Install NPM
curl -qL https://www.npmjs.com/install.sh | sh

## Install nodejs
pnpm env use --global ${NODE_VERSION}

## Install node packages
pnpm install -g \
    yarn \
    nodemon \
    http-server \
    eslint

## Check installed packages
npm -v
yarn -v
pnpm -v
node -v

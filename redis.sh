#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Install Redis and Redis Commander packages

NPM="pnpm"

## Install Redis
sudo apt install -y redis-server

## Install redis commander
$NPM install -g redis-commander

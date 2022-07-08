#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Setup and enable firewall rules

## Set allow rules
sudo ufw allow ssh
sudo ufw allow http
sudo ufw allow https

## Set disallow rules


## Start firewall
sudo ufw enable
sudo ufw status

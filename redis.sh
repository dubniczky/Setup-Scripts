#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Install redis and GUI package

## Install Redis
sudo apt-add-repository ppa:redislabs/redis
sudo apt update -y
sudo apt install -y redis-server

## Start Redis service
sudo service redis-server restart

## Install Ruby for Redis GUI
# https://github.com/humante/redis-browser
sudo apt install -y ruby-full

## Install redis gui gem
sudo gem install redis-browser

sudo tee /etc/init.d/redis-browser.service &> /dev/null << EOF!
[Unit]
Description=Browser Interface for Redis
After=network.target
StartLimitIntervalSec=0

[Service]
Type=simple
Restart=always
RestartSec=1
User=centos
ExecStart=redis-browser --url redis://127.0.0.1:6379

[Install]
WantedBy=multi-user.target
EOF!

##
redis-browser --url redis://127.0.0.1:6379

#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Install composer and required php packages

## Install php through apache
echo "Installing php components..."
sudo apt install -y apache2

## Install php utilitites
sudo apt install -y \
    php \
    libapache2-mod-php \
    php-mbstring \
    php-xmlrpc \
    php-soap \
    php-gd \
    php-xml \
    php-cli \
    php-zip \
    php-bcmath \
    php-tokenizer \
    php-json \
    php-pear

## Install composer globally
echo "Installing composer..."
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
sudo chmod +x /usr/local/bin/composer

## Display stats
echo "Composer installed."
composer --version

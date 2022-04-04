#!/bin/bash

# Uninstall Games
echo "Uninstalling games..."
sudo apt purge -y aisleriot \
    gnome-sudoku \
    ace-of-penguins \
    gnomine \
    gbrainy \
    gnome-taquin \
    gnome-tetravex \
    gnome-robots \
    gnome-chess \
    gnome-mahjongg \
    gnome-mines

# Remove old kernels
echo "Removing old kernels..."
sudo dpkg -l linux-{image,headers}-* | awk '/^ii/{print $2}' | egrep '[0-9]+\.[0-9]+\.[0-9]+' | grep -v $(uname -r) | xargs sudo apt-get -y purge

# Remove error reporting
echo "Removing error reporting..."
sudo apt remove -y whoopsie apport apport-gtk ubuntu-report

# Uninstall unused dependencies
echo "Removing unused dependencies..."
sudo apt autoclean autoremove

echo "Reboot for all changes to take effect."
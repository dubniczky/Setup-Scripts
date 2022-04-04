#!/bin/bash

# Uninstall Games
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

# Uninstall unused dependencies
sudo apt autoremove

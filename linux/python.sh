#!/bin/bash

## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Install python and general packages

## Install python packages
sudo apt install -y \
    python3 \
    python3-pip \
    bpython

## Upgrade pip
sudo pip install --upgrade pip

## Install Packages: Testing
pip install \
    pytest \
    pylint \
    flake8 \
    prospector

## Install Packages: Math / Data Science Packages
pip install \
    numpy \
    sklearn \
    seaborn \
    pandas \
    numpy \
    matplotlib

## Install Packages: Cryptography
pip install \
    pycryptodome

# Install Packages: Automatization
pip install \
    pyautogui # IMPORTANT: This might not work in container environments

# Install Packages: Packaging
pip install \
    wheel \
    setuptools

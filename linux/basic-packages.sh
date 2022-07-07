## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Installs basic packages for debian systems

# OS version
lsb_release -dc

# Update pm/os
sudo apt -y update
sudo apt -y upgrade

# Install utilities
sudo apt install -y \
    unzip \
    curl \
    wget \
    gnome-tweak-tool \
    make \
    gnupg2

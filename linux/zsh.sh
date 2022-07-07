## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Installs zsh and updates the configuration with aliases, plugins and a custom prompt

## Settings
PACKAGE_INSTALLER="apt install -y"


# Install ZSH
sudo $PACKAGE_INSTALLER zsh
zsh --version

# Set as default terminal
chsh -s $(which zsh)

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install autosuggestions plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# Back up and replace .zshrc config
mv ~/.zshrc ~/.zshrc.bkp
cp ./zsh/.zshrc ~/.zshrc
chmod u+x ~/.zshrc

# Install SauceCodePro font
echo "Installing terminal font"
sudo mkdir -p /usr/share/fonts/saucecodepro
sudo cp ./zsh/SauceCodePro-NerdFont.ttf /usr/share/fonts/saucecodepro
sudo fc-cache -v # Update font cache

# Reload config
zsh

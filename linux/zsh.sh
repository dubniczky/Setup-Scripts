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

# Reload config
zsh
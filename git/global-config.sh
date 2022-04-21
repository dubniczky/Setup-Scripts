# Set globals
git config --global user.name "Richard Antal Nagy"
git config --global user.email "nagy.richard.antal@gmail.com"
git config --global credential.helper store
git config --global core.autocrlf true
git config --global init.defaultbranch main

# Setup GPG signing
git config --global user.signingkey 3C0B1B83DB3B010F
git config --global commit.gpgsign true
#git config --global gpg.program "C:\Program Files (x86)\gnupg\bin\gpg.exe"

# List config
git config --list

# Register gitgraph
echo -e "alias gitgraph='git log --graph --pretty=oneline --abbrev-commit --all --decorate'" >> ~/.bashrc

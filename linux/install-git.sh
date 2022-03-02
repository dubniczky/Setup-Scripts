sudo apt-get update
sudo apt-get install git -y
git --version
git config --global user.name "Richard Nagy"
git config --global user.email "nagy.richard.antal@gmail.com"
git config --global credential.helper store
git config --global core.autocrlf true
git config --global init.defaultbranch main
git config --list

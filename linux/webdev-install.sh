# web decelopment environment setup
# Target OS: Ubuntu focal

# OS version
lsb_release -dc

# Update
sudo apt-get update -y
sudo apt-get upgrade -y

# Update command line prompt
cat ./terminal-prompt.sh >> ~/.bashrc

# Install Basic apps
sudo apt-get install curl -y
sudo apt-get install unzip -y
sudo apt-get install python3 -y

# Install Node
sudo apt-get install nodejs -y
sudo apt-get install nodemon -y
node -v || nodejs -v
sudo apt-get install npm -y
npm -v

# Install MongoDB
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
sudo apt-get install -y mongodb-mongosh
sudo curl -o /etc/init.d/mongodb https://raw.githubusercontent.com/mongodb/mongo/master/debian/init.d
sudo chmod +x /etc/init.d/mongodb
sudo service mongodb start
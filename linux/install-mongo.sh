# Update PM
sudo apt-get update

# Download PM keys
wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

# Instalal packages
sudo apt-get install -y mongodb-org
sudo apt-get install -y mongodb-mongosh

# Add service
sudo curl -o /etc/init.d/mongodb https://raw.githubusercontent.com/mongodb/mongo/master/debian/init.d
sudo chmod +x /etc/init.d/mongodb
sudo service mongodb enable

# Start service
sudo service mongodb start
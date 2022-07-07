## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Installs MongoDB database and shell on a debian based system

## Settings
MONGODB_VERSION="5.0"

## Download PM keys
wget -qO - https://www.mongodb.org/static/pgp/server-$MONGODB_VERSION.asc | sudo apt-key add -
echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/$MONGODB_VERSION multiverse" \
    | sudo tee /etc/apt/sources.list.d/mongodb-org-$MONGODB_VERSION.list

## Install packages
sudo apt install -y \
    mongodb-org \
    mongodb-mongosh

## Add as a service
sudo curl -o /etc/init.d/mongodb https://raw.githubusercontent.com/mongodb/mongo/master/debian/init.d
sudo chmod +x /etc/init.d/mongodb
sudo service mongodb enable

## Start service
sudo service mongodb start

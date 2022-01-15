# Install packages
sudo apt-get install -y nodejs
sudo apt-get install npm -y

# Check versions
node -v || nodejs -v
npm -v

# Install npm packages
npm i -g nodemon           # Realtime dev
npm i -g yarn              # Alternate PM
npm i -g npm-check         # Search old/outdated packages
npm i -g http-server       # Quick serve directory
npm i -g tinypng-cli       # Resize png images
npm i -g sort-package-json # Clean up package.json

# List all global npm packages
npm ls -g --depth=0
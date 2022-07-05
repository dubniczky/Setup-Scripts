## Author: Richard Antal Nagy
## Repository: https://gitlab.com/richardnagy/system-setup-scripts
## Installs docker in debian based systems

# Remove old versions (legacy container)
sudo apt remove \
    docker \
    docker.io \
    containerd \
    runc

# Install required tools
sudo apt install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release

# Install Docker GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg \
    | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# Set up stable repository
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
    | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Update package list with new keys
sudo apt update

# Install Docker
sudo apt-get install docker-ce docker-ce-cli containerd.io

# Test installation
sudo docker run hello-world
#sudo docker run -it ubuntu bash

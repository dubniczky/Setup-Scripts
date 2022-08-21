# System Setup Scripts

Tools and scripts for setting up development environments and installing packages.

## Support ❤️

If you find the project useful, please consider supporting, or contributing.

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/dubniczky)

## Usage

Each script is a standalone installer.  
Download the script and the folder with the same name if it exists.

Some scripts are specific for certain distributions, but usually they work on their parent distributions. For example, Debian scripts will work on Ubuntu or Red Hat scripts on Fedora. If a distribution is not specified, it should work on any Linux distro (sometimes it requires settings to be edited).

> WARNING: The package install scripts assume that your package manager has the latest package list update. This is so that in case of subsequent installations it will not fetch those multiple times. Don't forget to update.

## Install Scripts

|Script|Distribution|Description|
|---|---|---|
|[bash-prompt](/bash-prompt.sh)||Installs a custom bash prompt PS1 to `~/.bashrc`|
|[cli-packages](/cli-packages.sh)|Debian|Installs basic cli packages|
|[composer](/composer.sh)|Debian|Installs `composer` and required `php` packages|
|[docker](/docker.sh)|Debian|Installs docker daemon and runs the hello-world demo|
|[git](/git.sh)||Installs git, sets up git global settings, activates gpg signing and creates a global gitignore (recommended: `generate-gpg`)|
|[kali-upgrade](/kali-upgrade.sh)|Kali, Kali WSL|Upgrades a minimal or headless Kali installation, alongside with extra packages|
|[macpack](/macpack.sh)|Mac|Install basic CLI and application packages for MAC OS using `brew`|
|[mongodb](/mongodb.sh)|Debian|Installs mongodb daemon and and `mongo-cli`, then activates it as a service|
|[nodejs](/nodejs.sh)||Installs NodeJS, package managers, and several general packages|
|[python](/python.sh)||Installs `python` and `bpython` runtime and `pip` package manager alongside with common python packages|
|[redis](/redis.sh)|Debian|Install Redis and Redis Commander packages|
|[signal](/signal.sh)|Debian|Installs signal messenger|
|[vsc](/vsc.sh)||Installs vscodium, adds the custom `config.json` and installs listed packages|
|[winkex](/winkex.sh)|Kali WSL|Installs winkex and sets up shortcuts for easy usage|
|[zsh](/vsc.sh)||Installs zsh and updates the configuration with aliases, plugins and a custom prompt|

## Utility Scripts

|Script|Description|
|---|---|
|[certbot](/certbot.sh)|Install certificate using certbot|
|[docker-clean](/docker-clean.sh)|Remove all containers from the system|
|[export-gpg](/export-gpg.sh)|Export a specified gpg key in armored format for migration|
|[firewall](/firewall.sh)|Setup and enable firewall rules|
|[generate-gpg](/generate-gpg.sh)||Generates a gpg key then displays the ID using the given settings|
|[generate-ssh](/generate-ssh.sh)|Generates an ssh key pair, optionally owerwriting the current one while creating backup|
|[generate-ssl](/generate-ssl.sh)|Generate SSL/TLS certificate using Openssl|
|[ubuntu-cleanup](/ubuntu-cleanup.sh)|Removes default installed bloat packages and cleans up the system|
|[update-pms](/update-pms.sh)|Updates all common package manager lists and apps|
|[pulseaudio-fix](/pulseaudio-fix.sh)|Fix a common audio issue with PulseAudio configuration where only mute or maximum sound is available|

## Install GPG key
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

## Add VSC to apt
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list

## Update and install
sudo apt update
sudo apt install codium

## Overwrite settings
mkdir -p $HOME/.config/Code/User/
cp -f ./vsc/settings.json $HOME/.config/Code/User/

##
## Install VSC extensions
##

alias code="codium"

## General
code --install-extension adpyke.codesnap # Pretty code screenshots
code --install-extension Gruntfuggly.todo-tree # Todo tree
code --install-extension EditorConfig.EditorConfig # .editorconfig support
code --install-extension Lorenzo-Lupetti.easy-timer # Work timer
code --install-extension PKief.material-icon-theme # Material icons

## Syntax highlight & intellisense
code --install-extension hediet.vscode-drawio # Drawio (.drawio)
code --install-extension judge2020.duckyscript # Duckiescript (.ds)
code --install-extension IronGeek.vscode-env # Environment (.env)
code --install-extension golang.go # GO (.go)
code --install-extension James-Yu.latex-workshop # LaTeX (.tex)
code --install-extension mechatroner.rainbow-csv # CSV (.csv)
code --install-extension ms-azuretools.vscode-docker # Docker (Dockerfile)
code --install-extension ms-python.python # Python (.py)
code --install-extension ms-vscode.hexeditor # Binary (.bin)
code --install-extension ms-vscode.makefile-tools # Make (Makefile)
code --install-extension qwtel.sqlite-viewer # SQLite (.sqlite)
code --install-extension neilding.language-liquid # Liquid (.liquid)
code --install-extension redhat.vscode-yaml # YAML (.yaml)

## Markdown
code --install-extension DavidAnson.vscode-markdownlint # Markdown linting
code --install-extension foam.foam-vscode # Obisian-like markdown graph
code --install-extension yzane.markdown-pdf # Markdown to pdf

## Git
code --install-extension eamodio.gitlens # Gitlens
code --install-extension mhutchie.git-graph # Git graph
code --install-extension GitLab.gitlab-workflow # GitLab support

## Client-side development
code --install-extension ritwickdey.LiveServer # Live server
code --install-extension formulahendry.auto-rename-tag # HTML tag rename

## Server-side development
code --install-extension DigitalBrainstem.javascript-ejs-support # .ejs
code --install-extension humao.rest-client # HTTP requests

## Python
code --install-extension ms-python.pylint # Pylint
code --install-extension batisteo.vscode-django # Django support
code --install-extension ms-python.vscode-pylance # Python language server
code --install-extension njpwerner.autodocstring # Inline docs snippets
code --install-extension kevinrose.vsc-python-indent # Smart indent
code --install-extension ms-toolsai.jupyter # Jupyter Notebook (.ipynb)
code --install-extension ms-toolsai.jupyter-keymap # ^
code --install-extension ms-toolsai.jupyter-renderers # ^

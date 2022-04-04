# Custom python aliases

# Runtime
alias python="python3"
alias py="python"

# Django
alias pym="python manage.py"

# Venv
alias pyv.init="python -m venv .venv"
alias pyv.load="source .venv/bin/activate"
alias pyv.save="pip freeze > ./requirements.txt"
alias pyv.inst="pip install -r ./requirements.txt"
alias pyv.exit="deactivate"

# Install venv terminal extension
git clone https://gitlab.com/richardnagy/python-venv-terminal-extension
cd python-venv-terminal-extension
./install.sh
cd ..
rm -r python-venv-terminal-extension
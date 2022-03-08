# Custom python aliases

# Runtime
alias python="python3"
alias py="python"

# Django
alias pym="python manage.py"

# Venv
alias pyv.init="python -m venv .venv"
alias pyv.save="pip freeze > ./requirements.txt"
alias pyv.load="pip install -r ./requirements.txt"
alias pyv.exit="deactivate"

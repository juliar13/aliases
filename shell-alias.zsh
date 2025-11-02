alias ..='cd ..'

if type trash-put &> /dev/null
then
    alias rm=trash-put
fi

# Config
alias sshconf='cat ~/.ssh/config'

# pre-commit
if type pre-commit &> /dev/null; then
  alias pcra='pre-commit run -a'
fi

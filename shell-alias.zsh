alias ..='cd ..'

if type trash-put &> /dev/null
then
    alias rm=trash-put
fi

# Config
alias sshconf='cat ~/.ssh/config'

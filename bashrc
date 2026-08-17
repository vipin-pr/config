export EDITOR='vim'
export LS_COLORS='di=01;34:ow=01;34:tw=01;34:st=01;34:ex=01;32:fi=0'

set -o vi
bind -m vi-insert '"jj": vi-movement-mode'

# Alias
alias ls='ls --color=auto'
alias hc='history | grep -i'
alias cls='clear'
alias grep='grep --color=always'
alias cp='cp -i'
alias rm='rm -i'
# List SSH Host Names in ~/.ssh/config
alias listhost="grep '^Host ' ~/.ssh/config | sed 's/^Host //' | tr ' ' '\n' | grep -v '^\*$' | sort -u"
alias edithost="vim .ssh/config"
alias bat='batcat'
alias k='kubecolor'
alias kubectl='kubecolor'

# Two-line prompt for Bash
prompt_color='\[\033[;32m\]'
info_color='\[\033[1;34m\]'
prompt_symbol="@"
#prompt_symbol="㉿"
if [ "$EUID" -eq 0 ]; then # Different colors for root user
    prompt_color='\[\033[;94m\]'
    info_color='\[\033[1;31m\]'
fi
export PS1="$prompt_color┌──($info_color\u$prompt_symbol\h$prompt_color)-[$info_color\w$prompt_color]\n$prompt_color└─$info_color\$\[\033[00m\] "


# SSH agent setup
#SSH_ENV="$HOME/.ssh/agent-environment"
#
#function start_agent {
#    echo "Starting new ssh-agent..."
#    /usr/bin/ssh-agent -s > "$SSH_ENV"
#    chmod 600 "$SSH_ENV"
#    source "$SSH_ENV" > /dev/null
#    ssh-add ~/.ssh/vpr-nrs-github-key
#}
#
# Load existing agent info if available
#if [ -f "$SSH_ENV" ]; then
#    source "$SSH_ENV" > /dev/null
#    # Check if the agent is running
#    if ! kill -0 "$SSH_AGENT_PID" 2>/dev/null; then
#        start_agent
#    fi
#else
#    start_agent
#fi

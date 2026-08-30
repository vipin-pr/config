setopt histignorealldups sharehistory

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Vim mode
bindkey -v
bindkey -M viins 'jj' vi-cmd-mode

# Vim text objects
autoload -U select-quoted
zle -N select-quoted
for m in visual viopp; do
    for c in {a,i}{\',\",\`}; do
        bindkey -M $m $c select-quoted
    done
done
autoload -U select-bracketed
zle -N select-bracketed
for m in visual viopp; do
    for c in {a,i}{'(',')','[',']','{','}','<','>','b','B'}; do
        bindkey -M $m $c select-bracketed
    done
done

export LS_COLORS='di=01;34:ow=01;34:tw=01;34:st=01;34:ex=01;32:fi=0'

# Alias
alias ls='ls --color=auto'
alias hc='history | grep -i'
alias cls='clear'
alias grep='grep --color=always'
alias cp='cp -i'
alias rm='rm -i'
alias rm='mv -i'
alias bat='batcat'
alias k='kubecolor'
alias kubectl='kubecolor'

# Auto Suggestions - Install the plugin
# git clone https://github.com/zsh-users/zsh-autosuggestions \
#  ~/.zsh/zsh-autosuggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

PROMPT=$'%F{blue}┌──(%F{green}%n%F{yellow}@%m%F{blue})-[%F{cyan}%~%F{blue}]\n└─%F{green}$%f '

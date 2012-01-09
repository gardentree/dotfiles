# export
export PATH=/usr/local/bin:$PATH

# alias
alias ls='ls -F'
alias ll='ls -al'
alias la='ls -a'
alias lla='ls -la'

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM functiona
rvm use 1.9.2

# nvm
source ~/.nvm/nvm.sh
nvm use default

# autoload
autoload -U compinit
compinit 

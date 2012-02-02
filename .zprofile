# export
export PATH=/usr/local/bin:$PATH

# alias
alias ls='ls -F'
alias ll='ls -al'
alias la='ls -a'
alias lla='ls -la'
alias -g C='| pbcopy '

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" # Load RVM functiona
rvm use 1.9.2

# nvm
source ~/.nvm/nvm.sh
nvm use default

# autoload
autoload -U compinit
compinit 

# history
HISTFILE=$HOME/.zsh-history
HISTSIZE=100000
SAVEHIST=100000
setopt hist_ignore_dups   #同じコマンドラインを連続で実行した場合はヒストリに登録しない
setopt hist_ignore_space  #スペースで始まるコマンドラインはヒストリに追加しない
setopt inc_append_history #すぐにヒストリファイルに追記する
setopt share_history      #zshプロセス間でヒストリを共有する

export ZSH=/Users/golechwi/.oh-my-zsh

ZSH_THEME="ys"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git jump)

source $ZSH/oh-my-zsh.sh

alias j="jump"
alias lsiz="du -d 1 -h | sort -n"
alias c="clear"
alias mkvenv="python3.6 -m venv venv"

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Custom funs

function update() {
  git checkout master && git pull && git checkout - && git rebase master
}

function grepr() {
    grep -r $1 .
}

function cd() {
    pushd "$@" 1>/dev/null && ll 
}

# added by travis gem
[ -f /Users/golechwi/.travis/travis.sh ] && source /Users/golechwi/.travis/travis.sh

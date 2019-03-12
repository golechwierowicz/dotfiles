export ZSH=/Users/grzegorz.olechwierow/.oh-my-zsh

ZSH_THEME="sobole"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git jump)

source $ZSH/oh-my-zsh.sh

alias j="jump"
alias c="clear"
alias v="vim"
alias sbt="sbt -mem 2048"

export SOBOLE_THEME_MODE=light

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/grzegorz.olechwierow/.sdkman"
[[ -s "/Users/grzegorz.olechwierow/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/grzegorz.olechwierow/.sdkman/bin/sdkman-init.sh"

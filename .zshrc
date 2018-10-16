export ZSH=/home/golechwi/.oh-my-zsh

ZSH_THEME="ys"
HIST_STAMPS="yyyy-mm-dd"

plugins=(git jump)

source $ZSH/oh-my-zsh.sh

alias j="jump"
alias c="clear"
alias pycharm="nohup /home/golechwi/pycharm-community-2018.2/bin/pycharm.sh > /dev/null &"
alias idea="nohup /home/golechwi/idea-IC-182.4129.33/bin/idea.sh > /dev/null &"
alias open="xdg-open"
alias v="vim"
alias lock="i3lock --color=000000"
alias screenshot="gnome-screenshot -i"
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/home/golechwi/.local/bin:$PATH"

# added by travis gem
[ -f /Users/golechwi/.travis/travis.sh ] && source /Users/golechwi/.travis/travis.sh

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/golechwi/.sdkman"
[[ -s "/home/golechwi/.sdkman/bin/sdkman-init.sh" ]] && source "/home/golechwi/.sdkman/bin/sdkman-init.sh"

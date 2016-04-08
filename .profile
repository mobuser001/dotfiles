PS1="\w :. "

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

export CLICOLOR=1

alias ..="cd .."
alias l="ls -al"
alias ll="ls -al"
alias g="git"
alias gs="git status"
alias gl="git log"
alias gf="git fetch --all"
alias gb="git branch"
alias gp="git push"
alias gr="git rebase"
alias gm="git merge"
alias gc="git checkout"
alias pjson="python -m json.tool"

export NVM_DIR="/Users/rbb/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm


PS1="\w :. "

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

export CLICOLOR=1

alias ..="cd .."
alias l="ls -al"
alias ll="ls -al"
alias g="git"
alias gs="git status"
alias gl="git log"
alias gf="git fetch --all --prune"
alias gb="git branch --all"
alias gp="git push"
alias gr="git rebase"
alias gm="git merge"
alias gc="git checkout"
alias gd="git diff"
alias ga="git add"
alias pjson="python -m json.tool"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"


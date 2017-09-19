PS1="\w :. "

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export CLICOLOR=1

# General
alias ..="cd .."
alias vi="vim"

# Git
alias g="git"
alias gs="git status"
alias gl="git log"
alias gf="git fetch --all --prune"
alias gb="git branch"
alias gdm="git branch --merged | egrep -v \"(^\*|master)\" | xargs git branch -d"

# Fuzzy finder FZF
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"

# Ruby version manager
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Git completion
if [ -f $HOME/.git-completion.bash ]; then
  . $HOME/.git-completion.bash
fi

# Java stuff
export MAVEN_OPTS="-Xms512m -Xmx1024m"

##
# Rainbow stuff
if lolcat --version >/dev/null 2>&1; then
  if [ -f ~/.bash_lolcat ]; then
    . ~/.bash_lolcat
  fi

  function l() {
    if [ -n "$1" ]; then
      ls -al "$1" | lolcat;
    else
      ls -al | lolcat;
    fi
  }

  if figlet -v >/dev/null 2>&1; then
    echo "COMMENCE THE HACKING YOU AWESOME STUD!" | figlet -w $(tput cols) | lolcat
  else
    echo "COMMENCE THE HACKING YOU AWESOME STUD!" | lolcat
  fi
else
  alias l="ls -al";
fi

if ccat -v >/dev/null 2>&1; then
  alias cat=ccat
fi

function fclf() {
  if [ -n "$1" ]; then
    echo $@ | figlet -c -w $(tput cols) | lolcat
  fi
}

alias clf="fclf"
alias ll="l"


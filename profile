PS1="\w :. "
PS1='$(printf "%$((COLUMNS-1))s\r")'$PS1

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
if [ -f ~/.bash_lolcat ]; then
  . ~/.bash_lolcat
fi

if lolcat --version >/dev/null 2>&1; then
  function l() {
    if [ -n "$1" ]; then
      ls -al "$1" | lolcat;
    else
      ls -al | lolcat;
    fi
  }

lolcat << EOF
# I will not produce harmful code.

  - I shall not release defects.
  - I shall not damage the structure of the code.
  - I shall not make the code harder to understand
    nor change.

# The code I produce will always be my best work.

  - I will not knowingly release code that are defective,
    either in behavior or structure.

# I will provide, with each release, a quick, sure, and
  repeatable proof that every element of the code works
  as it supposed to.

  - I will always try my best to achieve perfection
  - I will never accept a certain level of defects

# I will make frequent small releases, I will not impede
  progress

# I will fearlessly and relentlessly improve the code at
  every opportunity, I will never make the code worse.

  - With tests

# I will keep productivity, my own and my team's, high, I
  will do nothing that decreases that productivity.

# I will continously ensure that others can cover for me,
  and I can cover for them.

# I will not make promises without certainty

  - I will be able to say no.

# I will never stop learning and improving my craft.

  - I will always do it on my own time.
  - I take responsibility for my own learning.
EOF

  if figlet -v >/dev/null 2>&1; then
    echo "Focus, commitment, and sheer fn will!" | figlet -w $(tput cols) | lolcat
  else
    echo "Focus, commitment, and sheer fn will!" | lolcat
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

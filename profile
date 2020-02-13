export LC_ALL=en_US.UTF-8

PS1="\w :. "
#PS1='$(printf "%$((COLUMNS-1))s\r")'$PS1

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export CLICOLOR=1

# Aliases
alias ..="cd .."
alias vi="vim"
alias g="git"
alias gf="git fetch --all --prune"
alias gb="git branch"
alias gdm="git branch --merged | egrep -v \"(^\*|master)\" | xargs git branch -d"
alias gss="git submodule sync --recursive && git submodule update --init --recursive"
alias gs="git status"
alias gst="git status"
alias gl="git log"
alias l="ls -al"

# Fuzzy finder FZF
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"

# Node version manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Ruby version manager
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Git completion
if [ -f $HOME/.git-completion.bash ]; then
  . $HOME/.git-completion.bash
fi

if ccat -v >/dev/null 2>&1; then
  alias cat=ccat
fi

alias clf="fclf"
alias ll="l"

if [[ "$OSTYPE" == "darwin"* ]]; then
  alias jstags="ctags -f jstags -R --exclude=*.ts --exclude=*.tsx --exclude=*.html . && sed -i '' -E '/^(if|switch|function|module\.exports|it|describe).+language:js$/d' jstags"
  alias tstags="ctags -f tstags -R --exclude=*.js --exclude=*.jsx --exclude=*.html . && sed -i '' -E '/^(if|switch|function|module\.exports|it|describe).+language:ts$/d' tstags"
else
  alias jstags="ctags -f jstags -R --exclude=*.ts --exclude=*.tsx --exclude=*.html . && sed -i -E '/^(if|switch|function|module\.exports|it|describe).+language:js$/d' jstags"
  alias tstags="ctags -f tstags -R --exclude=*.js --exclude=*.jsx --exclude=*.html . && sed -i -E '/^(if|switch|function|module\.exports|it|describe).+language:ts$/d' tstags"
fi

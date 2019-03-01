#!/bin/bash

ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Symlinking dotfiles in $ABSOLUTE_PATH to $HOME"
ln -sf $ABSOLUTE_PATH/gitconfig $HOME/.gitconfig
ln -sf $ABSOLUTE_PATH/gitignore $HOME/.gitignore
ln -sf $ABSOLUTE_PATH/profile $HOME/.profile
ln -sfn $ABSOLUTE_PATH/vim $HOME/.vim
ln -sf $ABSOLUTE_PATH/vimrc $HOME/.vimrc
ln -sf $ABSOLUTE_PATH/vimrc_osx $HOME/.vimrc_osx
ln -sf $ABSOLUTE_PATH/bash_lolcat $HOME/.bash_lolcat
ln -sf $ABSOLUTE_PATH/tern-project $HOME/.tern-project
ln -sf $ABSOLUTE_PATH/npmrc $HOME/.npmrc
ln -sf $ABSOLUTE_PATH/tmux.conf $HOME/.tmux.conf

echo "Installing git-completion"
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o $HOME/.git-completion.bash

echo "Installing lolcat"
gem install lolcat

echo "Installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

echo "Installing figlet"
brew install figlet

echo "Installing ccat"
brew install ccat

echo "Installing SilverSearcher (ag)"
brew install the_silver_searcher

echo "Installing fzf"
brew install fzf

echo "Installing vim"
brew install vim --with-override-system-vi

echo "Installing editorconfig core"
brew install editorconfig

echo "##########################################"
echo "#             Setup completed            #"
echo "##########################################"
echo ""
echo "1) source ~/.profile"
echo "2) vi"
echo "3) :PlugInstall"

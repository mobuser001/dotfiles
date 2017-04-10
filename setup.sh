#!/bin/bash

ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Symlinking dotfiles in $ABSOLUTE_PATH to $HOME"
ln -s $ABSOLUTE_PATH/gitconfig $HOME/.gitconfig
ln -s $ABSOLUTE_PATH/gitignore $HOME/.gitignore
ln -s $ABSOLUTE_PATH/profile $HOME/.profile
ln -s $ABSOLUTE_PATH/vim $HOME/.vim
ln -s $ABSOLUTE_PATH/vimrc $HOME/.vimrc
ln -s $ABSOLUTE_PATH/bash_lolcat $HOME/.bash_lolcat

echo "Installing lolcat-c into /usr/bin/lolcat"
git clone https://github.com/dosentmatter/lolcat.git
cd lolcat
git submodule init
git submodule update
make lolcat
cp lolcat /usr/local/bin/

echo "Cleaning up lolcat-c installation"
cd ..
rm -rf lolcat

echo "Installing figlet"
brew install figlet

echo "Installing ccat"
brew install ccat

echo "Installing fzf"
brew install fzf

echo "##########################################"
echo "# Setup completed, now soruce ~/.profile #"
echo "##########################################"


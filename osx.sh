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
ln -sf $ABSOLUTE_PATH/ctags $HOME/.ctags

echo "Installing git-completion"
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o $HOME/.git-completion.bash

echo "Installing homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Installing lolcat-c into /usr/bin/lolcat"
git clone https://github.com/dosentmatter/lolcat.git
cd lolcat
git submodule init
git submodule update
make lolcat
echo "To symlnk lolcat your sudo password is required."
sudo cp lolcat /usr/local/bin/
cd ..
rm -rf lolcat

echo "Installing nvm"
if [! -d "$HOME/.nvm"] && mkdir $HOME/.nvm
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

echo "Installing node lts"
nvm install lts/*

echo "Installing figlet"
brew install figlet

echo "Installing ccat"
brew install ccat

echo "Installing SilverSearcher (ag)"
brew install the_silver_searcher

echo "Installing fzf"
brew install fzf

echo "Installing vim to include clipboard"
brew install vim

echo "Installing tmux"
brew install tmux

echo "Installing editorconfig core"
brew install editorconfig

echo "Installing nmap"
brew install nmap

echo "Disabling scrollbar in Terminal.app"
defaults write com.apple.Terminal AppleShowScrollBars -string WhenScrolling

echo "##########################################"
echo "#             Setup completed            #"
echo "##########################################"
echo ""
echo "1) source ~/.profile"
echo "2) vi"
echo "3) :PlugInstall"

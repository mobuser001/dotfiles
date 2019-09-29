#!/bin/bash

ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

echo "Symlinking dotfiles in $ABSOLUTE_PATH to $HOME"
ln -sf $ABSOLUTE_PATH/gitconfig $HOME/.gitconfig
ln -sf $ABSOLUTE_PATH/gitignore $HOME/.gitignore
ln -sf $ABSOLUTE_PATH/profile $HOME/.profile
ln -sfn $ABSOLUTE_PATH/vim $HOME/.vim
ln -sf $ABSOLUTE_PATH/vimrc $HOME/.vimrc
ln -sf $ABSOLUTE_PATH/vimrc_ubuntu $HOME/.vimrc_ubuntu
ln -sf $ABSOLUTE_PATH/bash_lolcat $HOME/.bash_lolcat
ln -sf $ABSOLUTE_PATH/tern-project $HOME/.tern-project
ln -sf $ABSOLUTE_PATH/npmrc $HOME/.npmrc
ln -sf $ABSOLUTE_PATH/tmux.conf $HOME/.tmux.conf
ln -sf $ABSOLUTE_PATH/ctags $HOME/.ctags

echo "Upgrading and updating apt"
sudo apt-get update -y
sudo apt-get upgrade -y

echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

echo "Installing git-completion"
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o $HOME/.git-completion.bash

echo "Installing lolcat-c into /usr/local/bin/lolcat"
git clone https://github.com/dosentmatter/lolcat.git
cd lolcat
make
sudo make install
cd ..
rm -rf lolcat

echo "Installing the silver searcher (ag)"
sudo apt install silversearcher-ag -y

echo "Installing figlet"
sudo apt install figlet -y

echo "Adding ~/.profile to ~/.bashrc"
echo ". ~/.profile" >> ~/.bashrc

echo "Installing tmux"
sudo apt install tmux -y

echo "Installing vim-gnome"
sudo apt install vim-gnome -y

echo "Installing editorconfig core"
sudo apt install editorconfig

echo "##########################################"
echo "#             Setup completed            #"
echo "##########################################"
echo ""
echo "1) source ~/.bashrc"
echo "2) vi"
echo "3) :PlugInstall"

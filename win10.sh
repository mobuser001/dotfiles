#!/bin/bash

ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf $ABSOLUTE_PATH/gitconfig $HOME/.gitconfig
ln -sf $ABSOLUTE_PATH/gitignore $HOME/.gitignore
ln -sf $ABSOLUTE_PATH/profile $HOME/.profile
ln -sfn $ABSOLUTE_PATH/vim $HOME/.vim
ln -sf $ABSOLUTE_PATH/vimrc $HOME/.vimrc
ln -sf $ABSOLUTE_PATH/vimrc_win10 $HOME/.vimrc_win10
ln -sf $ABSOLUTE_PATH/tern-project $HOME/.tern-project
ln -sf $ABSOLUTE_PATH/npmrc $HOME/.npmrc

echo "Upgrading and Updateing apt"
sudo apt-get update -y
sudo apt-get upgrade -y

echo "Installing nvm"
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

echo "Installing git-completion"
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o $HOME/.git-completion.bash

echo "Installing rvm and ruby"
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable --ruby

if gem -v >/dev/null 2>&1; then
  echo "Installing rainbows"
  gem install lolcat
  ln -sf $ABSOLUTE_PATH/bash_lolcat $HOME/.bash_lolcat
else
  echo "Failed to install ruby, skipping rainbows"
fi

echo "Installing the silver searcher (ag)"
sudo apt install silversearcher-ag -y

echo "Installing figlet"
sudo apt install figlet -y

echo "Adding ~/.profile to ~/.bashrc"
echo ". ~/.profile" >> ~/.bashrc

echo "Installing tmux"
sudo apt install tmux -y

echo "Installing vim-gtk"
sudo apt install vim-gtk -y

echo "##########################################"
echo "#             Setup completed            #"
echo "##########################################"
echo ""
echo "1) source ~/.bashrc"
echo "2) vi"
echo "3) :PlugInstall"

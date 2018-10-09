#!/bin/bash

ABSOLUTE_PATH="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

ln -sf $ABSOLUTE_PATH/gitconfig $HOME/.gitconfig
ln -sf $ABSOLUTE_PATH/gitignore $HOME/.gitignore
ln -sf $ABSOLUTE_PATH/profile $HOME/.profile
ln -sfn $ABSOLUTE_PATH/vim $HOME/.vim
ln -sf $ABSOLUTE_PATH/vimrc $HOME/.vimrc
ln -sf $ABSOLUTE_PATH/bash_lolcat $HOME/.bash_lolcat
ln -sf $ABSOLUTE_PATH/tern-project $HOME/.tern-project
ln -sf $ABSOLUTE_PATH/npmrc $HOME/.npmrc

echo "Installing chromebrew, ruby, and git"
curl -Ls git.io/vddgY | bash

echo "Installing nvm"
crew install nvm
echo "Fixing NVM_DIR"
sed 's,/usr/local/tmp/crew/dest/usr/local/share/nvm,/usr/local/share/nvm,g' ~/.bashrc

echo "Installing git-completion"
curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o $HOME/.git-completion.bash

echo "Installing crew vim"
crew install vim

echo "Installing the silver searcher (ag)"
crew install ag

echo "Installing fzf"
crew install fzf

echo "Installing go"
crew install go

echo "Making lolcat (rainbow text)"
git clone https://github.com/dosentmatter/lolcat.git
cd lolcat
git submodule init
git submodule update
make lolcat
cp lolcat /usr/local/bin/
cd ..
rm -rf lolcat

echo "Installing figlet"
crew install figlet

echo "Adding ~/.profile to ~/.bashrc"
echo ". ~/.profile" >> ~/.bashrc

echo "Move to home directory after sourcing"
echo "cd" >> ~/.bashrc

echo "Installs python27 for node-sass binding"
crew install python27

echo "Changing fzf actions to use alt instead of ctrl in ChromeOS"
echo "let g:fzf_action = { 'alt-t': 'tab split', 'alt-x': 'split', 'alt-v': 'vsplit' }" >> ~/.vimrc


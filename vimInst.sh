#!/bin/sh
cp .vimrc ~/.vimrc
sudo apt install cmake -y
sudo apt-get install python3-dev
sudo apt install npm
sudo apt install openjdk-17-jdk
sudo apt install python3-dev
sudo snap install go --classic
cd

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

#install you complete me
git clone --recurse-submodules https://github.com/ycm-core/YouCompleteMe.git ~/.vim/pack/YouCompleteMe/opt/YouCompleteMe
cd ~/.vim/pack/YouCompleteMe/opt/YouCompleteMe
./install.py --all
cd ~/config

#install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#install obssesion
cd ~/.vim/bundle
git clone https://github.com/tpope/vim-obsession.git
vim -u NONE -c "helptags vim-obsession/doc" -c q

vim +PlugInstall +PluginInstall +"helptags vim-obsession/doc" +qa

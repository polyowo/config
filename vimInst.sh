#!/bin/sh
mv .vimrc ~/.vimrc
sudo apt install cmake -y

#install you complete me
git clone --recurse-submodules https://github.com/ycm-core/YouCompleteMe.git ~/.vim/pack/YouCompleteMe/opt/YouCompleteMe
pushd ~/.vim/pack/YouCompleteMe/opt/YouCompleteMe
./install.py --all
popd

#install vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#install vimplug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


vim +PluginInstall +PlugInstall


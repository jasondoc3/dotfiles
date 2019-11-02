#!/bin/bash

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)
        echo 'Linux detected'
        echo 'Updating packages'
        sudo apt-get update
        echo 'Installing vim'
        sudo apt-get -y install vim-gnome
        echo 'Installing the_silver_searcher'
        sudo apt-get -y install silversearcher-ag
    ;;
    Darwin*)
        echo 'Mac OSX detected'
        echo 'Updating homebrew'
        brew update
        echo 'Installing vim using homebrew'
        brew install vim
        echo 'Installing the_silver_searcher using homebrew'
        brew install the_silver_searcher
    ;;
esac

echo 'Installing vundle'
git clone https://github.com/VundleVim/Vundle.vim.git ~/home/vim/bundle/Vundle.vim
echo 'Installing plugins'
echo 'vim - +PluginInstall +qall' | bash
echo 'Linking vimrc to ~/.vimrc'
ln -s ~/home/vim/vimrc ~/.vimrc
echo 'Done!'

exit 0

#!/bin/bash

cd ~/.vim
# update plugins
git submodule update --init --recursive

# vimrc
rm -f ~/.vimrc
cat ./basic.vim > ~/.vimrc
cat ./plugins.vim >> ~/.vimrc

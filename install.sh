#!/bin/bash

# terminal use vi
#echo 'set -o vi' >> ~/.bashrc
#source ~/.bashrc

# vimrc
rm -f ~/.vimrc
cat ./basic.vim > ~/.vimrc
cat ./plugins.vim >> ~/.vimrc

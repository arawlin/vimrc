#!/bin/bash

# terminal use vi
echo 'set -o vi' >> ~/.bashrc
source ~/.bashrc

# vimrc
cat ./basic.vim > ~/.vimrc

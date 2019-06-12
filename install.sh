#!/bin/bash

set -e

VIM=${VIM:-~/.vim}
REMOTE=${REMOTE:-https://github.com/snakewarhead/vimrc.git}

git clone "$REMOTE" "$VIM"

cd $VIM
# update plugins
git submodule update --init --recursive

# vimrc
rm -f ~/.vimrc
cat ./basic.vim > ~/.vimrc
cat ./plugins.vim >> ~/.vimrc

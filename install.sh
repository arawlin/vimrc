#!/bin/bash

# vimrc
rm -f ~/.vimrc
cat ./basic.vim > ~/.vimrc
cat ./plugins.vim >> ~/.vimrc

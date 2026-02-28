#!/bin/bash

set -euo pipefail

VIM=${VIM:-$HOME/.vim}
REMOTE=${REMOTE:-https://github.com/arawlin/vimrc.git}

if [ -d "$VIM/.git" ]; then
	git -C "$VIM" pull --ff-only
elif [ -e "$VIM" ]; then
	echo "Error: $VIM exists but is not a git repository."
	exit 1
else
	git clone "$REMOTE" "$VIM"
fi

cd "$VIM"
git submodule update --init --recursive

if [ -e "$HOME/.vimrc" ] || [ -L "$HOME/.vimrc" ]; then
	backup="$HOME/.vimrc.bak.$(date +%Y%m%d%H%M%S)"
	mv "$HOME/.vimrc" "$backup"
	echo "Backed up existing .vimrc to $backup"
fi

cat "$VIM/basic.vim" "$VIM/plugins.vim" > "$HOME/.vimrc"
echo "Installed vim config to $HOME/.vimrc"

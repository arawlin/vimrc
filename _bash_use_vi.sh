#!/bin/bash

set -e

append_if_missing() {
	local line="$1"
	local file="$2"
	grep -qxF "$line" "$file" || echo "$line" >> "$file"
}

for rc in "$HOME/.bashrc" "$HOME/.zshrc"; do
	[ -f "$rc" ] || touch "$rc"
	append_if_missing 'export EDITOR=vim' "$rc"
done

append_if_missing 'set -o vi' "$HOME/.bashrc"
append_if_missing 'bindkey -v' "$HOME/.zshrc"

echo "Updated ~/.bashrc and ~/.zshrc. Open a new shell session to apply changes."


#!/bin/bash

# Remove .nanorc file in home directory
if [[ -f "$HOME/.nanorc" ]]; then
	rm "$HOME/.nanorc"
fi
# Remove 'source ~/.dotfiles/etc/bashrc_custom' line from .bashrc
if [[ -f "$HOME/.bashrc" ]]; then
	sed -i '/source ~\/\.dotfiles\/etc\/bashrc_custom' "$Home/.bashrc"
fi
# Remove .TRASH directory from home directory
if [[ -d "$HOME/.TRASH" ]]; then
	rm -r "$HOME/.TRASH"
fi

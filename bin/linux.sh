#!/bin/bash

# Redirect outputs to linuxsetup.log
exec >> linuxsetup.log 2>&1
# Check if the operating system is Linux
if [[ $(uname) != "Linux" ]]; then
	#Log an error message if the OS is not Linux
	echo "Error: Linux systems only."
	exit 1
fi
# Create the .TRASH directory in the home directory if needed
if [[ ! -d "$Home/.TRASH" ]]; then
	mkdir "$HOME/.TRASH"
fi
# Rename .nanorc file to .bup_nanorc
if [[ -f "$HOME/.nanorc" ]]; then
	mv "$HOME/.nanorc" "$HOME/.bup_nanorc"
	echo "Renamed .nanorc to .bup_nanorc
fi
# Overwrite the contents of etc/nanorc to ~/.nanorc
if ! grep -Fxq "source ~/.dorfiles/etc/bashrc_custom" "$HOME/.bashrc"; then
	echo "source ~/.dotfiles/etc/bashrc_custom" >> "$HOME/.bashrc"
fi


#!/bin/bash
# shebang

if [ "$(uname)" != "Linux" ]; then
	echo "Error: Script can oly run on Linux" >> linuxsetup.log #sends error message to linuxsetup.log
	exit 1 # exit
fi
#exits the if statement

mkdir -p ~/.TRASH #making trash directory

if [ -e ~/".nanorc" ]; then
	mv ~/.nanorc ~/.bup_nanorc
	echo "Renaming '.nanorc' to '.bup_nanorc'" >> linuxsetup.log
fi

cat ./etc/nanorc > ~/.nanorc

echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

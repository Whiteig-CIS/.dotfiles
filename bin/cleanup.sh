#!/bin/bash

rm -f ~/.nanorc #removes .nanorc from home directory

sed -i '/source~\/.dotfiles\/etc\/bashrc_custom/d' ~/.bashrc

rm -rf ~/.TRASH

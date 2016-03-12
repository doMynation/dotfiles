#!/bin/bash

BACKUP_DIR_NAME="~/.dfbackups"

# CREATE A BACKUP FOLDER ONLY IF IT DOESN'T EXIST ALREADY
if [ ! -d "$BACKUP_DIR_NAME$" ]; then
    mkdir ~/.dfbackups
fi

# BACKUP EXISTING FILES
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.dfbackups/.vimrc
fi

if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.dfbackups/.bashrc
fi

if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.dfbackups/.zshrc
fi

if [ -f ~/.tmux.conf ]; then
    mv ~/.tmux.conf ~/.dfbackups/.tmux.conf
fi

if [ -f ~/.vimperatorrc ]; then
    mv ~/.vimperatorrc  ~/.dfbackups/.vimperatorrc
fi


# CREATE SYMLINKS 
ln -s "`pwd`/.vimrc" ~/.vimrc
ln -s "`pwd`/.bashrc" ~/.bashrc
ln -s "`pwd`/.zshrc" ~/.zshrc
ln -s "`pwd`/.tmux.conf" ~/.tmux.conf
ln -s "`pwd`/.vimperatorrc" ~/.vimperatorrc

echo "DONE"

#!/bin/bash


# CREATE A BACKUP FOLDER ONLY IF IT DOESN'T EXIST ALREADY
if [ ! -d "$BACKUP_DIR_NAME$" ]; then
    mkdir ~/.dfbackups
fi

# BACKUP EXISTING FILES
mv ~/.vimrc ~/.dfbackups/.vimrc
mv ~/.zshrc ~/.dfbackups/.zshrc
mv ~/.tmux.conf  ~/.dfbackups/.tmux.conf
mv ~/.vimperatorrc  ~/.dfbackups/.vimperatorrc


# CREATE SYMLINKS 
ln -s "`pwd`/.vimrc" ~/.vimrc
ln -s "`pwd`/.zshrc" ~/.zshrc
ln -s "`pwd`/.tmux.conf" ~/.tmux.conf
ln -s "`pwd`/.vimperatorrc" ~/.vimperatorrc


echo "DONE"

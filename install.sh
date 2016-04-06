#!/bin/bash

BACKUP_DIR_NAME="~/.dfbackups"

# CREATE A BACKUP FOLDER ONLY IF IT DOESN'T EXIST ALREADY
mkdir -p ~/.dfbackups
echo "created backup dir ~/.dfbackups..."
echo "created backups in $BACKUP_DIR_NAME..."

# BACKUP EXISTING FILES
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.dfbackups/.vimrc
    ln -s "`pwd`/.vimrc" ~/.vimrc
    echo "installed vimrc..."
fi

if [ -f ~/.bashrc ]; then
    mv ~/.bashrc ~/.dfbackups/.bashrc
    ln -s "`pwd`/.bashrc" ~/.bashrc

    source ~/.bashrc

    echo "installed bashrc..."
fi

if [ -f ~/.zshrc ]; then
    mv ~/.zshrc ~/.dfbackups/.zshrc
    ln -s "`pwd`/.zshrc" ~/.zshrc

    source ~/.zshrc

    echo "installed zshrc..."
fi

if [ -f ~/.tmux.conf ]; then
    mv ~/.tmux.conf ~/.dfbackups/.tmux.conf
    ln -s "`pwd`/.tmux.conf" ~/.tmux.conf

    echo "installed tmux.conf..."
fi

if [ -f ~/.vimperatorrc ]; then
    mv ~/.vimperatorrc  ~/.dfbackups/.vimperatorrc
    ln -s "`pwd`/.vimperatorrc" ~/.vimperatorrc

    echo "installed vimparatorrc..."
fi

echo "created symlinks..."


# INSTALL VUNDLE FOR VIM
if [ ! -d ~/.vim/bundle/Vundle.vim ]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    echo "installed vundle..."
fi


echo "DONE"

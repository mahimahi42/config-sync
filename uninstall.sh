#!/usr/bin/env sh

TMUX=.tmux.conf
VIM=.vimrc
TMUX_DIR=~/$TMUX
VIM_DIR=~/$VIM
BAK_DIR=~/config-backup

# Helpful message if file isn't found
skip () {
    echo "No $1 found, skipping"
}

# Prompt the user, to make sure they really want to uninstall
read -p "Uninstall configuration? [y/n]: " RESP
if [ ! "$RESP" = "y" ]; then
    exit
fi

# Uninstall tmux config
if [ -e $TMUX_DIR ]; then
    rm $TMUX_DIR
else
    skip ".tmux.conf"
fi

# Uninstall vim config
if [ -e $VIM_DIR ]; then
    rm $VIM_DIR
else
    skip ".vimrc"
fi

# Reinstall backed up configs
# If we have no backups, exit, otherwise restore them
if [ ! -d $BAK_DIR ]; then
    exit
fi

if [ -e $BAK_DIR/$TMUX]; then
    mv $BAK_DIR/$TMUX ~
fi

if [ -e $BAK_DIR/$VIM]; then
    mv $BAK_DIR/$VIM ~
fi

rm -rf $BAK_DIR

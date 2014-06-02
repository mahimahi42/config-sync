#!/usr/bin/env sh

TMUX=.tmux.conf
VIM=.vimrc
ZSH=.zshrc
TMUX_DIR=$HOME/$TMUX
VIM_DIR=$HOME/$VIM
ZSH_DIR=$HOME/$ZSH
BAK_DIR=$HOME/config-backup

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
    skip $TMUX 
fi

# Uninstall vim config
if [ -e $VIM_DIR ]; then
    rm $VIM_DIR
else
    skip $VIM
fi

# Uninstall zsh config
if [ -e $ZSH_DIR ]; then
    rm $ZSH_DIR
else
    skip $ZSH
fi

# Reinstall backed up configs
# If we have no backups, exit, otherwise restore them
if [ ! -d $BAK_DIR ]; then
    exit
fi

if [ -e $BAK_DIR/$TMUX ]; then
    mv $BAK_DIR/$TMUX $HOME
fi

if [ -e $BAK_DIR/$VIM ]; then
    mv $BAK_DIR/$VIM $HOME
fi

if [ -e $BAK_DIR/$ZSH ]; then
    mv $BAK_DIR/$ZSH $HOME
fi

rm -rf $BAK_DIR
rm $HOME/.uninstall_configs_

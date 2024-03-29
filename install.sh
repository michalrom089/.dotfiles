#!/usr/bin/env zsh

STOW_FOLDERS="nvim,tmux,zsh,bin"
DOTFILES=$HOME/.dotfiles

pushd $DOTFILES
for folder in $(echo $STOW_FOLDERS | sed "s/,/ /g")
do
    stow -D $folder
    stow $folder
done
popd


#!/bin/bash

# Git
if [ -f ~/.gitconfig ] ; then
  echo "Found existing ~/.gitconfig. Moving to ~/.gitconfig.old"
  mv ~/.gitconfig ~/.gitconfig.old
fi
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

# Vim
if [ -f ~/.vimrc ] ; then
  echo "Found existing ~/.vimrc. Moving to ~/.vimrc.old"
  mv ~/.vimrc ~/.vimrc.old
fi
ln -s ~/dotfiles/.vimrc ~/.vimrc

# Zsh
if [ -f ~/.zshrc ] ; then
  echo "Found existing .zshrc. Moving to ~/.zshrc.old"
  mv ~/.zshrc ~/.zshrc.old
fi
ln -s ~/dotfiles/.zshrc ~/.zshrc

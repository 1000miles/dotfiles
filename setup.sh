#!/bin/bash

if [ -f ~/.zshrc ] ; then
  echo "Found existing .zshrc. Moving to ~/.zshrc.old"
  mv ~/.zshrc ~/.zshrc.old
fi
ln -s ~/dotfiles/.zshrc ~/.zshrc

if [ -f ~/.gitconfig ] ; then
  echo "Found existing ~/.gitconfig. Moving to ~/.gitconfig.old"
  mv ~/.gitconfig ~/.gitconfig.old
fi
ln -s ~/dotfiles/.gitconfig ~/.gitconfig

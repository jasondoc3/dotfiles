#!/usr/bin/env bash

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo "Installing dotfiles."
echo "Creating .config directory if it doesn't exist."
mkdir -p $HOME/.config

for config in "nvim" "zellij" "kitty"; do
  ln -sf $PWD/$config $HOME/.config/$config
  echo -e "${BLUE}Created symlink for $config"
done

for file in "zshrc" "gitconfig"; do
  ln -sf $PWD/$file $HOME/.$file
  echo -e "${BLUE}created symlink for .$file"
done

GREEN='\033[0;32m'
echo -e "${GREEN}All done"

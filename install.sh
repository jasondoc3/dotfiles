#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Get the path of the script
# Change to the script's directory and suppress output
pushd $(dirname ${BASH_SOURCE[0]}) > /dev/null

# Capture the current directory as the script directory
SCRIPT_DIR=$(pwd)

# Return to the original directory and suppress output
popd > /dev/null

create_symlink() {
  local path="$1"
  local target="$2"

  if [ -e "$target" ]; then
    printf "${RED}%-10s${NC} %s\n" "Removed" "$target"
    rm -rf "$target"
  fi

  ln -s "$path" "$target"
  printf "${BLUE}%-10s${NC} %s\n" "Linked" "$path -> $target" 
}

echo "Installing dotfiles..."
mkdir -p $HOME/.config
printf "${GREEN}%-10s${NC} %s\n" "Created" "$HOME/.config" 

for config in "atuin" "abat" "lazyvim" "zellij" "ghostty"; do
  if [[ $config == "lazyvim" ]]; then
    create_symlink "$SCRIPT_DIR/$config" "$HOME/.config/nvim"
    continue
  fi
  create_symlink "$SCRIPT_DIR/$config" "$HOME/.config/$config"
done

for file in "zshrc" "gitconfig"; do
  create_symlink "$SCRIPT_DIR/$file" "$HOME/.$file"
done

bat cache --build > /dev/null
atuin import auto

echo -e "${GREEN}All done${NC}"

#!/usr/bin/env bash

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
    echo -e "Removing existing ${RED}$target${NC}"
    rm -rf "$target"
  fi

  ln -s $path $target
  echo -e "Created symlink ${BLUE}$path -> $target${NC}"
}

echo "Installing dotfiles..."
mkdir -p $HOME/.config
echo -e "Created ${BLUE}\"$HOME/.config\"${NC} directory if it did not exist"

for config in "nvim" "zellij" "kitty"; do
  create_symlink "$SCRIPT_DIR/$config" "$HOME/.config/$config"
done

for file in "zshrc" "gitconfig"; do
  create_symlink "$SCRIPT_DIR/$file" "$HOME/.$file"
done

echo -e "${GREEN}All done${NC}"

#!/usr/bin/env bash

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

echo "Installing dotfiles..."
mkdir -p $HOME/.config
echo -e "Created ${BLUE}\"$HOME/.config\"${NC} directory if it did not exist"

for config in "nvim" "zellij" "kitty"; do
  ln -sf $SCRIPT_DIR/$config $HOME/.config/$config
  echo -e "${BLUE}Created symlink for $config"
done

for file in "zshrc" "gitconfig"; do
  ln -sf $SCRIPT_DIR/$file $HOME/.$file
  echo -e "${BLUE}created symlink for .$file"
done

GREEN='\033[0;32m'
echo -e "${GREEN}All done"

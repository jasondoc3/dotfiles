# Home

My home directory and dotfiles

Contains git, nvim, tmux, and zsh configurations

## Installation

1. Clone this repository
2. Make zsh the default login shell
3. Install git, neovim, tmux, and ripgrep
4. Create sym links to configuration files

  ```bash
  # Create symlinks
  mkdir -p ~/.config/nvim
  ln -sf ~/home/config/nvim/* ~/.config/nvim/
  ln -sf ~/home/tmux.conf ~/.tmux.conf
  ln -sf ~/home/zshrc ~/.zshrc
  ln -sf ~/home/gitconfig ~/.gitconfig
  ```

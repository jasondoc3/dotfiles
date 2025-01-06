# Dotfiles

These are my dotfiles 📁

Also houses my neovim, ghostty, zellij, and various other local development configurations.

## Installation

### Prerequisities

- [ghostty](https://ghostty.org)
- [neovim](https://github.com/neovim/neovim)
- [zellij](https://github.com/zellij-org/zellij)
- [bat](https://github.com/sharkdp/bat)
- [eza](https://github.com/eza-community/eza)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [mise](https://mise.jdx.dev)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [atuin](https://github.com/atuinsh/atuin)

### Install Script

The install script creates symbolic links 🔗 between the dotfiles in this repo and your home directory.

```
git clone https://github.com/jasondoc3/dotfiles.git
./dotfiles/install.sh
```

## Neovim

- [lazy.nvim](https://github.com/folke/lazy.nvim) to manage plugins.
- [Mason](https://github.com/williamboman/mason.nvim) where possible to install LSP servers, linters, and formatters.

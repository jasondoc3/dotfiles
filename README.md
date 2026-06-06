# Dotfiles

These are my dotfiles 📁

Also houses my neovim, ghostty, zellij, and various other local development configurations.

Some of the configurations like neovim and hyprland synced are from [Omarchy](https://github.com/basecamp/omarchy), which I run as my daily driver.

## Installation

### Prerequisities

- [ghostty](https://ghostty.org)
- [neovim](https://github.com/neovim/neovim)
- [bat](https://github.com/sharkdp/bat)
- [eza](https://github.com/eza-community/eza)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [mise](https://mise.jdx.dev)
- [zoxide](https://github.com/ajeetdsouza/zoxide)
- [atuin](https://github.com/atuinsh/atuin)

### Installation

This repo uses gnu [stow](https://www.youtube.com/watch?v=NoFiYOqnC4o) to create symlinks to dotfiles in the home directory.

```
cd ~
git clone https://github.com/jasondoc3/dotfiles
cd ~/dotfiles

stow bash
stow nvim
... 
```


## Neovim

I use [LazyVim](https://www.lazyvim.org/), with a little bit of additional plugins.


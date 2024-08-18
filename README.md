# Dotfiles

These are my dotfiles 📁

Also houses my neovim, kitty, and zellij configurations.

## Installation

The install script creates symbolic links 🔗 between the dotfiles in this repo and your home directory.

```
git clone https://github.com/jasondoc3/dotfiles.git
./dotfiles/install.sh
```

## Some Other Things to Install

I like to keep my setup pretty lean. That being said there's some things to install before
getting completely up and running. I would normally add this step to the install script, but I tend to jump
back and forth between MacOS and different distros of linux. My environment is also pretty simple, and
getting an "all in one" install script just hasn't been worth the squeeze 🍊

- [kitty](https://github.com/kovidgoyal/kitty)
- [neovim](https://github.com/neovim/neovim)
- [zellij](https://github.com/zellij-org/zellij)
- [eza](https://github.com/eza-community/eza)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [chruby](https://github.com/postmodern/chruby)
- [z](https://github.com/rupa/z)

## Neovim

I use [lazy.nvim](https://github.com/folke/lazy.nvim) to manage plugins.

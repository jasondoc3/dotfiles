# My vim configuration
A minimal vim configuration. Read the comments in the `vimrc` to see the default settings.

### Included Plugins
- [auto-pairs](https://github.com/jiangmiao/auto-pairs)
- [Ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
- [NERDTree](https://github.com/scrooloose/nerdtree)
- [vim-endwise](https://github.com/tpope/vim-endwise)
- [vim-go](https://github.com/fatih/vim-go)

### Colorscheme

Uses the [gruvbox](https://github.com/morhetz/gruvbox) colorscheme.

## Installation

Run the following `curl` command
```
curl https://raw.githubusercontent.com/jasondoc3/home/vim/master/install.sh | bash
```

If the install script fails for some reason, follow these steps:

1. Clone the Repo - `git clone https://github.com/jasondoc3/home.git ~/home`
2. Install a version of `vim` with Clipboard support
	* Mac OSX               - `brew install vim`
	* Linux (Debian Only)   - `apt-get install vim-gnome`
3. Install the [silver searcher](https://github.com/ggreer/the_silver_searcher)
4. Install `vundle`
  * `git clone https://github.com/VundleVim/Vundle.vim.git ~/home/vim/bundle/Vundle.vim`
5. Install vundle plugins
  * `vim +PluginInstall +qall`
6. Symlink vimrc to `~/.vimrc`
  * `ln -s ~/home/vim/vimrc ~/.vimrc`

-- CONFIGURATION --
local set = vim.opt

-- Display line numbers
set.number = true

-- Autoindent
-- set.smartindent = true
set.autoindent = true

-- Fix indent bug with treesitter in ruby
-- See https://github.com/nvim-treesitter/nvim-treesitter/issues/3363
vim.cmd([[
  autocmd Filetype ruby setlocal indentkeys-=.
]])

-- Don't wrap text
set.wrap = false
set.tabstop = 2

-- Tabs look like 4 spaces instead
set.shiftwidth = 2

-- Use spaces by default
set.expandtab = true

-- Use the system clipboard
set.clipboard = "unnamed,unnamedplus"

-- Tab completion improvements
set.wildmode = "longest,list,full"
set.wildmenu = true

-- Case insensitive search
set.ignorecase = true

set.signcolumn = "yes"

-- Eliminate the need for CTRL-W when moving panes
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

-- Set leader key
vim.g.mapleader = ","
vim.g.maplocalleader = "/"

-- Don't show mode information
-- Let lualine handle this
--vim.opt.showmode = false

-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Sets the leader key to comma instead of space
vim.g.mapleader = ","

-- Disable weird animations
vim.g.snacks_animate = false

-- Prefer telescope
vim.g.lazyvim_picker = "telescope"

-- Use absolute line numbers
vim.opt.relativenumber = false

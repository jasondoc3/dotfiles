-- PLUGINS --
-- Use the lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Package List
require("lazy").setup({
  "tpope/vim-rails",
  "thoughtbot/vim-rspec",
  "fatih/vim-go",
  "ntpeters/vim-better-whitespace",
  "folke/tokyonight.nvim",
  "nvim-telescope/telescope.nvim",
  "ellisonleao/gruvbox.nvim",
  "Mofiqul/dracula.nvim",
  "nvim-lualine/lualine.nvim",
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "nvim-lua/plenary.nvim",
    }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    dependencies = {
      "RRethy/nvim-treesitter-endwise",
      "windwp/nvim-ts-autotag",
    }
  },
  {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  },
})

-- CONFIGURATION --
local set = vim.opt

-- Grab Operating System value
local handle = io.popen("uname -s")
local os = handle:read("*a")
handle:close()

-- Display line numbers
set.number = true

-- Autoindent
set.autoindent = true

-- Don'jt wrap text
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

-- Eliminate the need for CTRL-W when moving panes
vim.keymap.set("n", "<C-h>", "<C-w>h", {})
vim.keymap.set("n", "<C-j>", "<C-w>j", {})
vim.keymap.set("n", "<C-k>", "<C-w>k", {})
vim.keymap.set("n", "<C-l>", "<C-w>l", {})

-- Better whitespace plugin configuration
vim.g['strip_whitespace_on_save'] = 1
vim.g['strip_whitespace_confirm'] = 0

-- Telescope configuration
local telescope = require('telescope.builtin')
require('telescope').setup{
  defaults = {
    file_ignore_patterns = { "node_modules", "target", },
    layout_strategy = 'vertical',
  }
}
require("telescope").load_extension "file_browser"
vim.keymap.set('n', '<C-p>', telescope.find_files, {})
vim.keymap.set('n', '<C-t>', telescope.live_grep, {})
vim.keymap.set('n', 'fb', telescope.buffers, {})
vim.keymap.set('n', 'fh', telescope.help_tags, {})
vim.keymap.set('n', '<C-e>', ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })

-- Treesitter config
require('nvim-treesitter.configs').setup{
  endwise = { enable = true, },
  autotag = { enable = true, },
  ensure_installed = { "c", "lua", "vim", "help" },
  auto_install = true,
  highlight = {
    enable = true,
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

-- Lualine
require('lualine').setup({
  theme = 'tokyonight-night'
})

-- Colorscheme
vim.cmd[[colorscheme tokyonight-night]]

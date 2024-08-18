return {
	{
		"glepnir/lspsaga.nvim",
		event = "BufRead",
		dependencies = {
			"neovim/nvim-lspconfig",
			"nvim-tree/nvim-web-devicons",
			"nvim-treesitter/nvim-treesitter",
		},
		config = function()
			require("lspsaga").setup({})

			local keymap = vim.keymap.set

			-- LSP finder - Find the symbol's definition
			-- If there is no definition, it will instead be hidden
			-- When you use an action in finder like "open vsplit",
			-- you can use <C-t> to jump back
			keymap("n", "gh", "<cmd>Lspsaga finder<CR>")
			-- Peek definition
			-- You can edit the file containing the definition in the floating window
			-- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
			-- It also supports tagstack
			-- Use <C-t> to jump back
			keymap("n", "gd", "<cmd>Lspsaga peek_definition<CR>")
			keymap("n", "gD", "<cmd>Lspsaga goto_definition<CR>")

			-- Peek type definition
			-- You can edit the file containing the type definition in the floating window
			-- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
			-- It also supports tagstack
			-- Use <C-t> to jump back
			keymap("n", "gt", "<cmd>Lspsaga peek_type_definition<CR>")

			-- Go to type definition
			keymap("n", "gT", "<cmd>Lspsaga goto_type_definition<CR>")

			-- Hover Doc
			-- If there is no hover doc,
			-- there will be a notification stating that
			-- there is no information available.
			-- To disable it just use ":Lspsaga hover_doc ++quiet"
			-- Pressing the key twice will enter the hover window
			keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>")

			-- Rename all occurrences of the hovered word for the entire file
			keymap("n", "gr", "<cmd>Lspsaga rename<CR>")
		end,
	},
}

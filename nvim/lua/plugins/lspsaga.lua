return {
	{
		"glepnir/lspsaga.nvim",
		event = "BufRead",
		dependencies = {
			"neovim/nvim-lspconfig",
			"nvim-tree/nvim-web-devicons",
			"nvim-treesitter/nvim-treesitter",
		},
		keys = {
			-- LSP finder - Find the symbol's definition
			-- If there is no definition, it will instead be hidden
			-- When you use an action in finder like "open vsplit",
			-- you can use <C-t> to jump back
			{ "<leader>lh", "<cmd>Lspsaga finder<CR>", mode = "n", desc = "LSP Finder" },
			-- Peek definition
			-- You can edit the file containing the definition in the floating window
			-- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
			-- It also supports tagstack
			-- Use <C-t> to jump back
			{ "<leader>ld", "<cmd>Lspsaga peek_definition<CR>", mode = "n", desc = "Peek Definition" },
			{ "<leader>lD", "<cmd>Lspsaga goto_definition<CR>", mode = "n", desc = "Goto Definition" },

			-- Peek type definition
			-- You can edit the file containing the type definition in the floating window
			-- It also supports open/vsplit/etc operations, do refer to "definition_action_keys"
			-- It also supports tagstack
			-- Use <C-t> to jump back
			{ "<leader>lt", "<cmd>Lspsaga peek_type_definition<CR>", mode = "n", desc = "Peek Type Definition" },
			{ "<leader>lT", "<cmd>Lspsaga goto_type_definition<CR>", mode = "n", desc = "Goto Type Definition" },

			-- Hover Doc
			-- If there is no hover doc,
			-- there will be a notification stating that
			-- there is no information available.
			-- To disable it just use ":Lspsaga hover_doc ++quiet"
			-- Pressing the key twice will enter the hover window
			{ "<leader>lK", "<cmd>Lspsaga hover_doc<CR>", mode = "n", desc = "Hover Doc" },

			-- Rename all occurrences of the hovered word for the entire file
			-- keymap("n", "gr", "<cmd>Lspsaga rename<CR>")
		},
		config = function()
			require("lspsaga").setup({})
		end,
	},
}

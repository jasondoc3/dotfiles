return {
	"fatih/vim-go", -- TODO: Use null ls instead
	"folke/tokyonight.nvim",
	"nathom/filetype.nvim",
	"neovim/nvim-lspconfig", -- TODO: Is this needed?
	"nvim-lualine/lualine.nvim",
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup()
		end,
	},
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
}

return {
	"folke/tokyonight.nvim",
	"nathom/filetype.nvim",
	"neovim/nvim-lspconfig",
	"nvim-lualine/lualine.nvim",
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
}

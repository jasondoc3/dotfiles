return {
	"folke/tokyonight.nvim",
	"nathom/filetype.nvim",
	"nvim-lualine/lualine.nvim",
	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	},
}

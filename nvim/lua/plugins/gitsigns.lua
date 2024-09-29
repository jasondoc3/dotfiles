return {
	"lewis6991/gitsigns.nvim",
	dependencies = {
		"petertriho/nvim-scrollbar",
	},
	config = function()
		require("gitsigns").setup({
			current_line_blame = true,
		})
		require("scrollbar.handlers.gitsigns").setup()
	end,
}

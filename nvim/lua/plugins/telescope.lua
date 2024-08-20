return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-telescope/telescope-file-browser.nvim",
			"nvim-lua/plenary.nvim",
		},
		keys = {
			{
				"<leader>ff",
				function()
					require("telescope.builtin").find_files({
						find_command = { "rg", "--ignore", "--hidden", "--files" },
						prompt_prefix = "🔍",
					})
				end,
				desc = "Find Files",
			},
			{
				"<leader>fg",
				function()
					require("telescope.builtin").live_grep()
				end,
				desc = "Live Grep Files",
			},
			{
				"<leader>fb",
				function()
					require("telescope").extensions.file_browser.file_browser({
						path = vim.fn.expand("%:p:h"),
						select_buffer = true,
					})
				end,
				desc = "File Browser",
			},
		},
		config = function()
			require("telescope").setup({
				defaults = {
					file_ignore_patterns = { "node_modules", ".git" },
					layout_strategy = "vertical",
				},
			})
		end,
	},
}

return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-telescope/telescope-file-browser.nvim",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			local telescope = require("telescope.builtin")
			require("telescope").setup({
				defaults = {
					file_ignore_patterns = { "node_modules", ".git" },
					layout_strategy = "vertical",
				},
			})
			require("telescope").load_extension("file_browser")

			vim.keymap.set(
				"n",
				"<leader>f",
				":Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix=🔍 <CR>"
			)

			vim.keymap.set("n", "<leader>g", telescope.live_grep, {})
			vim.keymap.set(
				"n",
				"<leader>b",
				":Telescope file_browser path=%:p:h select_buffer=true<CR>",
				{ noremap = true }
			)
		end,
	},
}

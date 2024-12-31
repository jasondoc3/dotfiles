return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		dependencies = {
			"RRethy/nvim-treesitter-endwise",
			{
				"windwp/nvim-ts-autotag",
				config = function()
					require("nvim-ts-autotag").setup({
						aliases = {
							["erb"] = "html",
						},
					})
				end,
			},
		},
		config = function()
			require("nvim-treesitter.configs").setup({
				endwise = { enable = true },
				ensure_installed = { "c", "lua", "vim", "markdown", "markdown_inline" },
				auto_install = true,
				-- Indentation is wonky for ruby and golang. Disabling for now, relying on set autoindent
				-- Note that additional_vim_regex_highlighting needs to be true
				--
				indent = {
					enable = true,
					disable = { "ruby", "go", "golang" },
				},
				highlight = {
					enable = true,
					-- Setting this to true wilal run `:h syntax` and tree-sitter at the same time.
					-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
					-- Using this option may slow down your editor, and you may see some duplicate highlights.
					-- Instead of true it can also be a list of languages
					--					additional_vim_regex_highlighting = true,
				},
			})
		end,
	},
}

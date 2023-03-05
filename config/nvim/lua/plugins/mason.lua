return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup()

			-- GoPls LSP support
			require("lspconfig").gopls.setup({})
		end,
	},
}

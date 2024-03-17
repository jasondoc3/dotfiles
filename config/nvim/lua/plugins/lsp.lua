return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"neovim/nvim-lspconfig",
			"williamboman/mason-lspconfig.nvim",
			"hrsh7th/cmp-nvim-lsp",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup()
			local lspconfig = require("lspconfig")

			-- Use an on_attach function to only map the following keys after the language server attaches to the current buffer
			local on_attach = function(client, bufnr)
				-- Mappings.
				-- Most mappings are configured using lsp saga
			end

			-- Use autocomplete for nvim-
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			-- GoPls LSP support
			lspconfig.gopls.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				settings = {
					gopls = {
						analyses = {
							unusedparams = true,
							unreachable = true,
							unusedvariable = true,
						},
					},
				},
			})

			-- Need to install solargraph rails too
			lspconfig.solargraph.setup({
				init_options = {
					formatting = false, -- Hanlded by rubocop lsp
				},
				settings = {
					solargraph = {
						diagnostics = false, -- Handled by rubocop lsp
					},
				},
			})

			lspconfig.rubocop.setup({
				on_attach = on_attach,
				cmd = { "bundle", "exec", "rubocop", "--lsp" },
				init_options = {
					safeAutocorrect = false,
				},
			})
		end,
	},
}

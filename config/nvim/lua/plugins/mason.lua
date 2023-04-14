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

			-- Use an on_attach function to only map the following keys
			-- after the language server attaches to the current buffer
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

			-- Ruby lsp support
			-- Need to install solargraph rails
			lspconfig.solargraph.setup({
				settings = {
					solargraph = {
						diagnostics = false, -- Handled by null-ls
						formatting = false, -- Hanlded by null-ls
					},
				},
			})
		end,
	},
}
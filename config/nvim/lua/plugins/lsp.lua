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
			lspconfig.ruby_ls.setup({
				on_attach = function(client, buffer)
					-- textDocument/diagnostic support until 0.10.0 is released
					_timers = {}
					local function setup_diagnostics(client, buffer)
						if require("vim.lsp.diagnostic")._enable then
							return
						end

						local diagnostic_handler = function()
							local params = vim.lsp.util.make_text_document_params(buffer)
							client.request("textDocument/diagnostic", { textDocument = params }, function(err, result)
								if err then
									local err_msg = string.format("diagnostics error - %s", vim.inspect(err))
									vim.lsp.log.error(err_msg)
								end
								local diagnostic_items = {}
								if result then
									diagnostic_items = result.items
								end
								vim.lsp.diagnostic.on_publish_diagnostics(
									nil,
									vim.tbl_extend("keep", params, { diagnostics = diagnostic_items }),
									{ client_id = client.id }
								)
							end)
						end

						diagnostic_handler() -- to request diagnostics on buffer when first attaching

						vim.api.nvim_buf_attach(buffer, false, {
							on_lines = function()
								if _timers[buffer] then
									vim.fn.timer_stop(_timers[buffer])
								end
								_timers[buffer] = vim.fn.timer_start(200, diagnostic_handler)
							end,
							on_detach = function()
								if _timers[buffer] then
									vim.fn.timer_stop(_timers[buffer])
								end
							end,
						})
					end

					setup_diagnostics(client, buffer)
				end,
				init_options = {
					formatter = "rubocop",
				},
				capabilities = capabilities,
			})
		end,
	},
}

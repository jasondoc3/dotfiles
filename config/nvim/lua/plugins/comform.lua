return {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		conform = require("conform")
		conform.setup({
			formatters_by_ft = {
				python = { "isort" },
				lua = { "stylua" },
				go = { "gofmt", "goimports" },
				json = { "jq" },
			},
			format_on_save = {
				-- These options will be passed to conform.format()
				timeout_ms = 1000,
				lsp_fallback = true,
			},
		})

		conform.formatters.jq = {
			prepend_args = { "--indent", "4" },
		}
	end,
}

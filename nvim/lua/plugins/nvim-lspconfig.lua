return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- Use rubocop for formatting and diagnostics
      rubocop = {
        mason = false,
        cmd = { "bundle", "exec", "rubocop", "--lsp" },
        init_options = {
          safeAutocorrect = false,
        },
      },
      -- Only use solagraph for autocompletion
      solargraph = {
        mason = false,
        cmd = { "bundle", "exec", "solargraph", "stdio" },
        init_options = {
          formatting = false,
        },
        settings = {
          solargraph = {
            diagnostics = false,
          },
        },
      },
      vtsls = {},
      pyright = {},
    },
  },
}

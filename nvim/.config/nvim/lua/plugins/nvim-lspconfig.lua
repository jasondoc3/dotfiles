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
      vtsls = {},
    },
  },
}

return {
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
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
      },
    },
  },
}

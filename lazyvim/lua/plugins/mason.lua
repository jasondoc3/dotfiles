return {
  "williamboman/mason.nvim",
  opts = {
    ensure_installed = {
      "stylua",
      "shellcheck",
      "shfmt",
      "jq",
      "black",
      "isort",
      "prettier",
    },
  },
}

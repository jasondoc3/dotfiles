return {
  "olimorris/codecompanion.nvim",
  opts = {},
  config = function()
    require("codecompanion").setup({
      strategies = {
        chat = {
          adapter = "anthropic",
          keymaps = {
            send = {
              modes = { i = "<C-CR>" },
            },
          },
        },
        inline = {
          adapter = "anthropic",
        },
      },
    })
  end,
  keys = {
    {
      "<leader>cc",
      desc = "Code Companion",
      group = "Companion",
    },
    {
      "<leader>ccc",
      "<cmd>CodeCompanionChat<CR>",
      desc = "Chat",
      mode = "n",
    },
  },
}

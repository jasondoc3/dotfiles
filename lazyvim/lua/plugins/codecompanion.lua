return {
  "olimorris/codecompanion.nvim",
  opts = {},
  config = function()
    require("codecompanion").setup({
      display = {
        diff = {
          enabled = false,
        },
        chat = {
          window = {
            width = 0.3,
          },
        },
      },
      strategies = {
        chat = {
          adapter = "gemini",
          keymaps = {
            send = {
              modes = { i = "<C-CR>" },
            },
          },
          tools = {
            opts = {
              auto_submit_errors = false, -- Send any errors to the LLM automatically?
              auto_submit_success = false, -- Send any successful output to the LLM automatically?
            },
          },
        },
        inline = {
          adapter = "gemini",
        },
        cmd = {
          adapter = "gemini",
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
    {
      "<leader>cco",
      "<cmd>CodeCompanionChat openai<CR>",
      desc = "Chat Openai",
      mode = "n",
    },
    {
      "<leader>ccg",
      "<cmd>CodeCompanionChat gemini<CR>",
      desc = "Chat Gemini",
      mode = "n",
    },
    {
      "<leader>cca",
      "<cmd>CodeCompanionChat anthropic<CR>",
      desc = "Chat Claude",
      mode = "n",
    },
  },
}

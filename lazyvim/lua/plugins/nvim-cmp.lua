return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
      ["<CR>"] = cmp.mapping.confirm({ select = false }),
      ["<Tab>"] = cmp.mapping(function(fallback)
        if cmp.visible() then
          cmp.select_next_item()
        else
          fallback()
        end
      end, { "i", "s" }),
    })
  end,
}

local palette = require("poolsuite.palette").palette

local M = {}

local function hl(group, spec)
  vim.api.nvim_set_hl(0, group, spec)
end

function M.set_highlights()
  local c = palette

  local syntax = {
    Comment = { fg = c.fg_dim, italic = true },
    Constant = { fg = c.magenta },
    String = { fg = c.green },
    Character = { fg = c.green },
    Number = { fg = c.yellow },
    Boolean = { fg = c.magenta },
    Float = { fg = c.yellow },
    Identifier = { fg = c.fg },
    Function = { fg = c.blue },
    Statement = { fg = c.accent },
    Conditional = { fg = c.accent },
    Repeat = { fg = c.accent },
    Label = { fg = c.accent },
    Operator = { fg = c.fg },
    Keyword = { fg = c.accent },
    Exception = { fg = c.accent },
    PreProc = { fg = c.magenta },
    Include = { fg = c.magenta },
    Define = { fg = c.magenta },
    Macro = { fg = c.magenta },
    PreCondit = { fg = c.magenta },
    Type = { fg = c.teal },
    StorageClass = { fg = c.teal },
    Structure = { fg = c.teal },
    Typedef = { fg = c.teal },
    Special = { fg = c.yellow },
    SpecialChar = { fg = c.yellow },
    Tag = { fg = c.blue },
    Delimiter = { fg = c.fg_dim },
    SpecialComment = { fg = c.fg_dim, italic = true },
    Debug = { fg = c.yellow },
    Underlined = { fg = c.blue, underline = true },
    Error = { fg = c.accent, bg = c.error_bg },
    Todo = { fg = c.yellow, bg = c.todo_bg },
  }

  local ui = {
    NormalFloat = { fg = c.fg, bg = c.bg_alt },
    FloatBorder = { fg = c.fg_dim, bg = c.bg_alt },
    CursorLine = { bg = c.bg_alt },
    CursorLineNr = { fg = c.cursor, bold = true },
    CursorColumn = { bg = c.bg_alt },
    ColorColumn = { bg = c.fg_dim },
    Visual = { bg = c.bg_visual },
    LineNr = { fg = c.line },
    MatchParen = { fg = c.accent, bold = true },
    Search = { fg = c.white, bg = c.accent },
    CurSearch = { fg = c.white, bg = c.cursor },
    IncSearch = { fg = c.white, bg = c.cursor },
    WarningMsg = { fg = c.cursor },
    ErrorMsg = { fg = c.accent, bold = true },
    Title = { fg = c.blue, bold = true },
    Directory = { fg = c.blue },
    MoreMsg = { fg = c.green },
    Question = { fg = c.green },
    Pmenu = { fg = c.fg, bg = c.bg_alt },
    PmenuSel = { fg = c.white, bg = c.accent },
    PmenuSbar = { bg = c.line },
    PmenuThumb = { bg = c.fg_dim },
    NonText = { fg = c.line },
    Whitespace = { fg = c.line },
    EndOfBuffer = { fg = c.bg },
    Folded = { fg = c.fg_dim, bg = c.bg_alt },
    FoldColumn = { fg = c.fg_dim },
    SignColumn = { fg = c.line, bg = c.bg },
    Cursor = { fg = c.bg, bg = c.cursor },
    StatusLine = { fg = c.fg, bg = c.bg_alt },
    StatusLineNC = { fg = c.fg_dim, bg = c.bg },
    TabLine = { fg = c.fg_dim, bg = c.bg_alt },
    TabLineSel = { fg = c.white, bg = c.accent },
    TabLineFill = { bg = c.bg },
    VertSplit = { fg = c.bg_alt },
    WinSeparator = { fg = c.bg_alt },
    Normal = { fg = c.fg, bg = c.bg },
    -- LazyVim-era chrome (file tree, tab bars)
    NeoTreeNormal = { fg = c.fg, bg = c.bg_alt },
    NeoTreeNormalNC = { fg = c.fg, bg = c.bg_alt },
    NeoTreeWinSeparator = { fg = c.bg_alt },
    BufferLineBackground = { fg = c.fg_dim, bg = c.bg },
    BufferLineBuffer = { fg = c.fg_dim, bg = c.bg },
    BufferLineBufferSelected = { fg = c.fg, bg = c.bg_alt },
    BufferLineBufferVisible = { fg = c.fg_dim, bg = c.bg },
    BufferLineFill = { bg = c.bg },
    BufferLineSeparator = { fg = c.bg },
    BufferLineSeparatorSelected = { fg = c.fg },
    LualineNormal = { fg = c.fg, bg = c.bg_alt },
  }

  for group, spec in pairs(syntax) do
    hl(group, spec)
  end
  for group, spec in pairs(ui) do
    hl(group, spec)
  end

  -- Treesitter links (standard base groups)
  hl("@keyword", { link = "Keyword" })
  hl("@string", { link = "String" })
  hl("@string.regexp", { fg = c.green })
  hl("@number", { link = "Number" })
  hl("@boolean", { link = "Boolean" })
  hl("@float", { link = "Float" })
  hl("@function", { link = "Function" })
  hl("@function.call", { link = "Function" })
  hl("@method", { link = "Function" })
  hl("@constant", { link = "Constant" })
  hl("@variable", { fg = c.fg })
  hl("@variable.builtin", { fg = c.magenta })
  hl("@parameter", { fg = c.fg })
  hl("@property", { fg = c.teal })
  hl("@field", { fg = c.teal })
  hl("@type", { link = "Type" })
  hl("@type.builtin", { fg = c.teal })
  hl("@type.qualifier", { fg = c.accent })
  hl("@operator", { link = "Operator" })
  hl("@constructor", { fg = c.yellow })
  hl("@storageclass", { link = "StorageClass" })
  hl("@namespace", { fg = c.teal })
  hl("@module", { fg = c.teal })
  hl("@comment", { link = "Comment" })
  hl("@conditional", { link = "Conditional" })
  hl("@repeat", { link = "Repeat" })
  hl("@label", { link = "Label" })
  hl("@include", { link = "Include" })
  hl("@exception", { link = "Exception" })
  hl("@preproc", { link = "PreProc" })
  hl("@tag", { link = "Tag" })
  hl("@tag.attribute", { fg = c.blue })
  hl("@tag.delimiter", { fg = c.fg_dim })
  hl("@punctuation.delimiter", { fg = c.fg_dim })
  hl("@punctuation.bracket", { fg = c.fg_dim })
  hl("@punctuation.special", { fg = c.yellow })
  hl("@number.float", { link = "Float" })

  -- LSP
  hl("DiagnosticError", { fg = c.accent })
  hl("DiagnosticWarn", { fg = c.cursor })
  hl("DiagnosticInfo", { fg = c.blue })
  hl("DiagnosticHint", { fg = c.fg_dim })
  hl("DiagnosticUnderlineError", { undercurl = true, sp = c.accent })
  hl("DiagnosticUnderlineWarn", { undercurl = true, sp = c.cursor })
  hl("DiagnosticUnderlineInfo", { undercurl = true, sp = c.blue })
  hl("DiagnosticUnderlineHint", { undercurl = true, sp = c.fg_dim })
  hl("DiagnosticVirtualTextError", { fg = c.accent })
  hl("DiagnosticVirtualTextWarn", { fg = c.cursor })
  hl("DiagnosticVirtualTextInfo", { fg = c.blue })
  hl("DiagnosticVirtualTextHint", { fg = c.fg_dim })
end

return M

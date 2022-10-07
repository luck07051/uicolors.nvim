local util = require 'uima-colors.util'
local c = require 'uima-colors.colors'

local op_bg = true
local background = op_bg and 'NONE' or c.bg

return {
  ------------------------------
  -- UI (:h highlight-groups) --
  ------------------------------

  ColorColumn    = { bg = c.nontext },
  Conceal        = { }, --todo
  CurSearch      = { },
  Cursor         = { fg = c.fg,                bg = c.bg,     reverse = true },
  lCursor        = { link = 'Cursor' },
  -- CursorIM    = { },
  CursorColumn   = { link = 'CursorLine' },
  CursorLine     = { bg = c.cursor_line },
  Directory      = { fg = c.cyan }, --todo
  DiffAdd        = { fg = c.green },
  DiffChange     = { fg = c.blue },
  DiffDelete     = { fg = c.red },
  DiffText       = { fg = c.fg },
  EndOfBuffer    = { link = 'NonText' },
  TermCursor     = { link = 'Cursor' },
  TermCursorNC   = { },
  ErrorMsg       = { fg = c.red,               bold = true },
  WinSeparator   = { fg = c.nontext },
  Folded         = { fg = c.gray7,             bold = true }, --todo
  FoldColumn     = { },
  SignColumn     = { },
  IncSearch      = { link = 'Search' },
  Substitute     = { link = 'Search' },
  LineNr         = { fg = c.nontext },
  LineNrAbove    = { link = 'LineNr' },
  LineNrBelow    = { link = 'LineNr' },
  CursorLineNr   = { bg = c.cursor_line,       bold = true },
  CursorLineSign = { link = 'CursorLineNr' },
  CursorLineFlod = { link = 'CursorLineNr' },
  MatchParen     = { fg = c.fg },
  ModeMsg        = { bold = true},
  MsgArea        = { },
  MsgSeparator   = { fg = c.nontext,           strikethrough = true }, --todo  :display
  MoreMsg        = { fg = c.green },
  NonText        = { fg = c.nontext },
  Normal         = { fg = c.fg,                bg = background },
  NormalFloat    = { fg = c.fg,                bg = c.float_bg },
  NormalNC       = { link = 'Normal' },
  Pmenu          = { bg = c.gray2 },
  PmenuSel       = { bg = c.gray4 },
  PmenuSbar      = { link = 'Pmenu' },
  PmenuThumb     = { link = 'PmenuSel' },
  Question       = { fg = c.green,             bold = true },
  QuickFixLine   = { fg = c.magenta,           bold = true }, --todo
  Search         = { fg = c.black,             bg = c.yellow },
  SpecialKey     = { link = 'NonText' },
  SpellBad       = { fg = c.red,               underline = true },
  SpellCap       = { fg = c.yellow,            underline = true },
  SpellLocal     = { fg = c.yellow,            underline = true },
  SpellRare      = { fg = c.yellow,            underline = true },
  StatusLine     = { bg = c.gray4 },
  StatusLineNC   = { fg = c.gray5 },
  TabLine        = { fg = c.gray5,             bold = true },
  TabLineFill    = { },
  TabLineSel     = { bold = true },
  Title          = { fg = c.magenta,           bold = true },
  Visual         = { bg = c.gray3 },
  -- VisualNOS   = { },
  WarningMsg     = { fg = c.yellow,            bold = true },
  Whitespace     = { link = 'NonText' },
  WildMenu       = { },
  -- WinBar      = { },
  -- WinBarNC    = { },

  FloatBorder    = { fg = c.float_bg,          bg = c.float_bg },



  --------------------
  --     Syntax     --
  --------------------

  -- ['@comment'] = { fg = c.comment },
  ['TScomment'] = { fg = c.comment },



  --------------------
  --     Plugin     --
  --------------------

  DiagnosticError = { fg = c.red },
  DiagnosticWarn  = { fg = c.yellow },
  DiagnosticInfo  = { fg = c.cyan },
  DiagnosticHint  = { fg = c.white },

  -- Telescope
  TelescopeNormal       = { link = 'NormalFloat' },
  TelescopeBorder       = { link = 'FloatBorder' },
  TelescopePromptNormal = { bg = c.telescope_prompt },
  TelescopePromptBorder = { fg = c.telescope_prompt, bg = c.telescope_prompt },

  TelescopeTitle        = { },
  TelescopePreviewTitle = { fg = c.red, bold = true, reverse = true },
  TelescopePromptTitle  = { fg = c.green, bold = true, reverse = true },

  TelescopeSelection    = { bg = c.cursor_line },

  -- Cmp
  CmpItemAbbrMatch = { fg = c.blue, bg = c.none },
  CmpItemKind      = { fg = c.cyan },
  CmpItemMenu      = { fg = c.g4 },

}

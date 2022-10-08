local util = require 'uima-colors.util'
local c = require 'uima-colors.colors'

local op_bg = true
local background = op_bg and 'NONE' or c.bg

return {
  --------------------------
  --          UI          --
  --------------------------
  -- (:h highlight-groups)

  Normal             = { fg = c.fg,                bg = background },
  NormalNC           = { link = 'Normal' },
  NormalFloat        = { fg = c.fg,                bg = c.float_bg },

  Cursor             = { fg = c.fg,                bg = c.bg,     reverse = true },
  lCursor            = { link = 'Cursor' },
  -- CursorIM           = { },
  TermCursor         = { link = 'Cursor' },
  TermCursorNC       = { },

  CursorLine         = { bg = c.cursor_line },
  CursorColumn       = { link = 'CursorLine' },
  LineNr             = { fg = c.nontext },
  LineNrAbove        = { link = 'LineNr' },
  LineNrBelow        = { link = 'LineNr' },
  SignColumn         = { },
  FoldColumn         = { },
  CursorLineNr       = { bg = c.cursor_line,       bold = true },
  CursorLineSign     = { link = 'CursorLineNr' },
  CursorLineFlod     = { link = 'CursorLineNr' },

  MsgArea            = { },
  ModeMsg            = { bold = true},
  WarningMsg         = { fg = c.yellow,            bold = true },
  ErrorMsg           = { fg = c.red,               bold = true },
  MoreMsg            = { fg = c.green },
  Question           = { fg = c.green,             bold = true },
  QuickFixLine       = { fg = c.magenta,           bold = true }, --todo
  MsgSeparator       = { fg = c.nontext,           strikethrough = true }, --todo  :display
  WinSeparator       = { fg = c.nontext },

  StatusLine         = { bg = c.gray4 },
  StatusLineNC       = { fg = c.gray5 },

  TabLine            = { fg = c.gray5,             bold = true },
  TabLineSel         = { bold = true },
  TabLineFill        = { },

  WinBar             = { link = 'TabLineSel' },
  WinBarNC           = { link = 'TabLine' },

  Pmenu              = { bg = c.gray2 },
  PmenuSel           = { bg = c.gray4 },
  PmenuSbar          = { link = 'Pmenu' },
  PmenuThumb         = { link = 'PmenuSel' },
  WildMenu           = { },

  FloatBorder        = { fg = c.float_bg,          bg = c.float_bg },
  -- FloatShadow        = { },
  -- FloatShadowThrough = { },

  Visual             = { bg = c.gray3 },
  -- VisualNOS          = { },
  Search             = { fg = c.black,             bg = c.yellow },
  IncSearch          = { link = 'Search' },
  Substitute         = { link = 'Search' },
  CurSearch          = { },

  SpellBad           = { fg = c.red,               underline = true },
  SpellCap           = { fg = c.yellow,            underline = true },
  SpellLocal         = { fg = c.yellow,            underline = true },
  SpellRare          = { fg = c.yellow,            underline = true },

  DiffAdd            = { fg = c.green },
  DiffChange         = { fg = c.blue },
  DiffDelete         = { fg = c.red },
  DiffText           = { fg = c.fg },

  NonText            = { fg = c.nontext },
  EndOfBuffer        = { link = 'NonText' },
  SpecialKey         = { link = 'NonText' },
  Whitespace         = { link = 'NonText' },
  ColorColumn        = { bg = c.nontext },
  MatchParen         = { fg = c.fg },
  Folded             = { fg = c.gray7,             bold = true }, --todo
  Title              = { fg = c.magenta,           bold = true },
  Directory          = { fg = c.cyan }, --todo
  Conceal            = { }, --todo



  --------------------------
  --        Syntax        --
  --------------------------

  ['@comment']               = { fg = c.comment },

  -- Keyword --
  ['@keyword']               = { fg = c.keyword },
  ['@keyword.function']      = { link = '@keyword' },
  ['@keyword.operator']      = { fg = c.white,        bold = true },  -- 'and', 'or' in lua
  ['@keyword.return']        = { link = '@preproc' },

  ['@conditional']           = { link = '@keyword' },
  ['@repeat']                = { link = '@keyword' },
  ['@exception']             = { link = '@preproc' },
  ['@label']                 = { link = '@preproc' },

  ['@preproc']               = { fg = c.preproc },
  ['@include']               = { link = '@preproc' },
  ['@define']                = { link = '@preproc' },

  ['@operator']              = { fg = c.fg },

  ['@punctuation']           = { fg = c.punctuation },
  ['@punctuation.delimiter'] = { link = '@punctuation' },
  ['@punctuation.bracket']   = { link = '@punctuation' },
  ['@punctuation.special']   = { link = '@punctuation' },

  ['@constructor']           = { },

  -- ['@symbol']                = { },

  -- ['@annotation']            = { },
  -- ['@attribute']             = { },

  ['@tag']                   = { fg = c.white },
  ['@tag.attribute']         = { fg = c.gray8 },
  ['@tag.delimiter']         = { fg = c.gray6 },

  -- Function and Variable --
  ['@function']              = { fg = c.func },
  ['@function.call']         = { link = '@function' },
  ['@function.builtin']      = { fg = c.func,         bold = true },
  ['@function.macro']        = { link = '@function' },

  ['@method']                = { link = '@functin' },
  ['@method.call']           = { link = '@method' },

  ['@variable']              = { fg = c.variable },
  ['@variable.builtin']      = { fg = c.variable,     bold = true },

  ['@constant']              = { fg = c.constant },
  ['@constant.builtin']      = { fg = c.constant,     bold = true },
  ['@constant.macro']        = { link = '@preproc' },  -- '#define' in C.

  ['@field']                 = { fg = c.white },
  ['@property']              = { link = '@field' },
  ['@namespace']             = { fg = c.gray8 },

  ['@type']                  = { fg = c.type },
  ['@type.builtin']          = { fg = c.type,         bold = true },
  ['@type.qualifier']        = { link = '@type' },  -- 'const' in C or 'mut' in Rust  -- ERR
  ['@type.definition']       = { link = '@preproc' },
  ['@storageclass']          = { },  -- 'static' in C or 'extern' in Rust

  ['@parameter']             = { link = '@variable' },
  ['@parameter.reference']   = { fg = c.variable,     bold = true },

  -- Value --
  ['@number']                = { fg = c.value },
  ['@float']                 = { link = '@number' },
  ['@boolean']               = { link = '@number' },

  ['@character']             = { fg = c.value },
  ['@character.special']     = { fg = c.red },

  ['@string']                = { link = '@character' },
  ['@string.regex']          = { link = '@string' },
  ['@string.escape']         = { link = '@character.special' },
  ['@string.special']        = { link = '@character.special' },

  -- Text --
  ['@text']                  = { },
  ['@text.strong']           = { bold = true },
  ['@text.emphasis']         = { italic = true },
  ['@text.underline']        = { underline = true },
  ['@text.strike']           = { strikethrough = true },
  ['@text.title']            = { link = 'Title' },
  -- ['@text.literal']          = { },
  ['@text.uri']              = { fg = c.uri,          undercurl = true },
  -- ['@text.math']             = { },
  -- ['@text.reference']        = { },
  ['@text.environment']      = { link = '@keyword' },
  ['@text.environment.name'] = { fg = c.blue,         bold = true },

  -- ['@text.note']             = { },
  -- ['@text.warning']          = { },
  -- ['@text.danger']           = { },

  ['@todo']                  = { },

  -- ['@debug']                 = { },
  ['@error']                 = { },
  ['@none']                  = { },


  -- Other --
  ['@constant.comment']      = { link = '@comment' },



  ------------------------------
  --  Original Syntax Groups  --
  ------------------------------

  Comment        = { link = '@comment' },

  Constant       = { link = '@constant' },
    String         = { link = '@string' },
    Character      = { link = '@character' },
    Number         = { link = '@number' },
    Boolean        = { link = '@boolean' },
    Float          = { link = '@float' },

  Identifier     = { link = '@variable' },
    Function       = { link = '@function' },

  Statement      = { link = '@conditional' },
    Conditional    = { link = '@conditional' },
    Repeat         = { link = '@reqeat' },
    Label          = { link = '@label' },
    Operator       = { link = '@operator' },
    Keyword        = { link = '@keyword' },
    Exception      = { link = '@exception' },

  PreProc        = { link = '@preproc' },
    Include        = { link = '@include' },
    Define         = { link = '@define' },
    Macro          = { link = '@constant.macro' },
    PreCondit      = { link = '@preproc' },

  Type           = { link = '@link' },
    StorageClass   = { link = '@storageclass' },
    Structure      = { link = '@' },
    Typedef        = { link = '@type.definition' },

  Special        = { link = '@character.special' },
    SpecialChar    = { link = '@character.special' },
    Tag            = { link = '@tag' },
    Delimiter      = { link = '@punctuation.delimiter' },
    SpecialComment = { link = '@comment' },
    Debug          = { link = '@debug' },

  Underlined     = { link = '@text.underline' },
  Ignore         = { link = '@none' },
  Error          = { link = '@error' },
  Todo           = { link = '@todo' },



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
  TelescopePreviewTitle = { fg = c.red,     bold = true, reverse = true },
  TelescopePromptTitle  = { fg = c.green,   bold = true, reverse = true },

  TelescopeSelection    = { bg = c.cursor_line },

  -- Cmp
  CmpItemAbbrMatch = { fg = c.blue },
  CmpItemKind      = { fg = c.cyan },
  CmpItemMenu      = { fg = c.g4 },

}

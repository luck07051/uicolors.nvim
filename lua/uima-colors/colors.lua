local util = require 'uima-colors.util'

local c = {
  black   = '#121212',
  red     = '#E67E80',
  green   = '#87AF87',
  yellow  = '#EBCB8B',
  blue    = '#81A1C1',
  magenta = '#ECB2CF',
  cyan    = '#87AFAF',
  white   = '#D0D0D0',
}

return {
  black   = c.black,
  red     = c.red,
  green   = c.green,
  yellow  = c.yellow,
  blue    = c.blue,
  magenta = c.magenta,
  cyan    = c.cyan,
  white   = c.white,

  bg = c.black,
  fg = c.white,

  gray1 = util.blend(c.white, c.black, 0.11),
  gray2 = util.blend(c.white, c.black, 0.22),
  gray3 = util.blend(c.white, c.black, 0.33),
  gray4 = util.blend(c.white, c.black, 0.44),
  gray5 = util.blend(c.white, c.black, 0.55),
  gray6 = util.blend(c.white, c.black, 0.66),
  gray7 = util.blend(c.white, c.black, 0.77),
  gray8 = util.blend(c.white, c.black, 0.88),
}

local util = require 'uima-colors.util'
local color = require 'uima-colors.color'

color['bg'] = color.black
color['fg'] = color.white

color['gray0'] = util.blend(color.fg, color.bg, 0.05)
color['gray1'] = util.blend(color.fg, color.bg, 0.1)
color['gray2'] = util.blend(color.fg, color.bg, 0.2)
color['gray3'] = util.blend(color.fg, color.bg, 0.3)
color['gray4'] = util.blend(color.fg, color.bg, 0.4)
color['gray5'] = util.blend(color.fg, color.bg, 0.5)
color['gray6'] = util.blend(color.fg, color.bg, 0.6)
color['gray7'] = util.blend(color.fg, color.bg, 0.7)
color['gray8'] = util.blend(color.fg, color.bg, 0.8)
color['gray9'] = util.blend(color.fg, color.bg, 0.9)

-- UI --
color['cursor_line'] = color.gray1
color['nontext'] = color.gray4
color['float_bg'] = color.gray0

-- Syntax --
color['comment'] = color.gray5

-- Plugin --
color['telescope_prompt'] = color.gray1

return color

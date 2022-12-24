-- stylua: ignore
local util = require 'uicolors.util'
local colors = require 'uicolors.color'
colors['gray'] = util.blend(colors.fg, colors.bg, 0.3)
colors['none'] = 'NONE'

return {
  normal = {
    a = { bg = colors.cyan,     fg = colors.black,    gui = 'bold' },
    b = { bg = colors.gray,     fg = colors.white },
    c = { bg = colors.none,     fg = colors.white },
  },
  insert = {
    a = { bg = colors.green,    fg = colors.black,    gui = 'bold' },
  },
  visual = {
    a = { bg = colors.yellow,   fg = colors.black,    gui = 'bold' },
  },
  replace = {
    a = { bg = colors.red,      fg = colors.black,    gui = 'bold' },
  },
  command = {
    a = { bg = colors.magenta,  fg = colors.black,    gui = 'bold' },
  },
  inactive = {
    a = { bg = colors.gray,     fg = colors.white,    gui = 'bold' },
  },
}

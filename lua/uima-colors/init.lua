local M = {}

M.load = function()

  -- Reset colors
  if vim.g.colors_name then
    vim.com('hi clear')
  end

  vim.g.colors_name = 'uima-colors'
  vim.o.termguicolors = true
  vim.o.background = 'dark'

  for name, val in pairs( require 'uima-colors.theme' ) do
    vim.api.nvim_set_hl(0, name, val)
  end

end

return M

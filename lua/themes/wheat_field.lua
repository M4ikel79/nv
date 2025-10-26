-- wheat_field Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#14141E",
  darker_black = "#AAAAA7",
  black = "#F4F4EF",
  black2 = "#FFFFFF",
  one_bg = "#D1D2C5",
  one_bg2 = "#BBBBA9",
  one_bg3 = "#A4A58C",
  grey = "#8E8E70",
  grey_fg = "#717259",
  grey_fg2 = "#555543",
  light_grey = "#38392C",
  red = "#D3D65B",
  baby_pink = "#EB9D64",
  pink = "#D68F5B",
  line = "#D1D2C5",
  green = "#5BD6D6",
  vibrant_green = "#6DFFFF",
  nord_blue = "#9651C0",
  blue = "#A75BD6",
  yellow = "#65D65B",
  sun = "#6FEB64",
  purple = "#D65B96",
  dark_purple = "#EB64A5",
  teal = "#5E5BD6",
  orange = "#99D65B",
  cyan = "#5E5BD6",
  statusline_bg = "#D1D2C5",
  lightbg = "#A4A58C",
  pmenu_bg = "#A75BD6",
  folder_bg = "#5E5BD6",
}

M.base_16 = {
  base00 = "#F4F4EF",
  base01 = "#D1D2C5",
  base02 = "#A4A58C",
  base03 = "#8E8E70",
  base04 = "#555543",
  base05 = "#14141E",
  base06 = "#15151F",
  base07 = "#161621",
  base08 = "#D3D65B",
  base09 = "#99D65B",
  base0A = "#65D65B",
  base0B = "#5BD6D6",
  base0C = "#5E5BD6",
  base0D = "#A75BD6",
  base0E = "#D65B96",
  base0F = "#D68F5B",
}

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_16.base05 },
    ["@punctuation.bracket"] = { fg = M.base_30.white },
    ["@function.method.call"] = { fg = M.base_30.yellow },
    ["@function.call"] = { fg = M.base_30.yellow },
    ["@constant"] = { fg = M.base_30.orange },
    ["@variable.parameter"] = { fg = M.base_30.orange },
    ["@keyword"] = { fg = M.base_30.pink },
    ["@string"] = { fg = M.base_30.green },
    ["@number"] = { fg = M.base_30.orange },
    ["@boolean"] = { fg = M.base_30.orange },
    ["@operator"] = { fg = M.base_30.pink },
    ["@comment"] = { fg = M.base_30.grey, italic = true },
    ["@type"] = { fg = M.base_30.purple },
    ["@type.builtin"] = { fg = M.base_30.purple },
    ["@constructor"] = { fg = M.base_30.purple },
  },
}

M.type = "light"

return M

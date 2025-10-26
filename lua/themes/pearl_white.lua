-- pearl_white Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#14141E",
  darker_black = "#A9AAA8",
  black = "#F2F3F1",
  black2 = "#FFFFFF",
  one_bg = "#CDCEC9",
  one_bg2 = "#B5B5AF",
  one_bg3 = "#9C9D94",
  grey = "#83847A",
  grey_fg = "#696A61",
  grey_fg2 = "#4F4F49",
  light_grey = "#343530",
  red = "#AAAD84",
  baby_pink = "#BEA791",
  pink = "#AD9884",
  line = "#CDCEC9",
  green = "#84AAAD",
  vibrant_green = "#9ECCCF",
  nord_blue = "#90769B",
  blue = "#A084AD",
  yellow = "#85AD84",
  sun = "#92BE91",
  purple = "#AD8495",
  dark_purple = "#BE91A3",
  teal = "#8784AD",
  orange = "#96AD84",
  cyan = "#8784AD",
  statusline_bg = "#CDCEC9",
  lightbg = "#9C9D94",
  pmenu_bg = "#A084AD",
  folder_bg = "#8784AD",
}

M.base_16 = {
  base00 = "#F2F3F1",
  base01 = "#CDCEC9",
  base02 = "#9C9D94",
  base03 = "#83847A",
  base04 = "#4F4F49",
  base05 = "#14141E",
  base06 = "#15151F",
  base07 = "#161621",
  base08 = "#AAAD84",
  base09 = "#96AD84",
  base0A = "#85AD84",
  base0B = "#84AAAD",
  base0C = "#8784AD",
  base0D = "#A084AD",
  base0E = "#AD8495",
  base0F = "#AD9884",
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

-- ruby_red Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#110A0A",
  black = "#190F0F",
  black2 = "#201313",
  one_bg = "#3B2A2A",
  one_bg2 = "#593F3F",
  one_bg3 = "#775454",
  grey = "#956969",
  grey_fg = "#AA8787",
  grey_fg2 = "#BFA5A5",
  light_grey = "#D4C3C3",
  red = "#EF4242",
  baby_pink = "#FF48BB",
  pink = "#EF42AA",
  line = "#3B2A2A",
  green = "#45EF42",
  vibrant_green = "#52FF4F",
  nord_blue = "#3B79D7",
  blue = "#4287EF",
  yellow = "#EFDE42",
  sun = "#FFF448",
  purple = "#9842EF",
  dark_purple = "#A748FF",
  teal = "#42EFEF",
  orange = "#EF9542",
  cyan = "#42EFEF",
  statusline_bg = "#3B2A2A",
  lightbg = "#775454",
  pmenu_bg = "#4287EF",
  folder_bg = "#42EFEF",
}

M.base_16 = {
  base00 = "#190F0F",
  base01 = "#3B2A2A",
  base02 = "#775454",
  base03 = "#956969",
  base04 = "#BFA5A5",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#EF4242",
  base09 = "#EF9542",
  base0A = "#EFDE42",
  base0B = "#45EF42",
  base0C = "#42EFEF",
  base0D = "#4287EF",
  base0E = "#9842EF",
  base0F = "#EF42AA",
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

M.type = "dark"

return M

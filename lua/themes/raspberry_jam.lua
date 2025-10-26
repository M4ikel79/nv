-- raspberry_jam Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#110A0B",
  black = "#190F11",
  black2 = "#201316",
  one_bg = "#3B2A2E",
  one_bg2 = "#593F45",
  one_bg3 = "#77545C",
  grey = "#956974",
  grey_fg = "#AA878F",
  grey_fg2 = "#BFA5AB",
  light_grey = "#D4C3C7",
  red = "#EF426B",
  baby_pink = "#FF48E8",
  pink = "#EF42D3",
  line = "#3B2A2E",
  green = "#6FEF42",
  vibrant_green = "#85FF4F",
  nord_blue = "#3B9FD7",
  blue = "#42B1EF",
  yellow = "#EFB442",
  sun = "#FFC648",
  purple = "#6F42EF",
  dark_purple = "#7A48FF",
  teal = "#42EFC6",
  orange = "#EF6B42",
  cyan = "#42EFC6",
  statusline_bg = "#3B2A2E",
  lightbg = "#77545C",
  pmenu_bg = "#42B1EF",
  folder_bg = "#42EFC6",
}

M.base_16 = {
  base00 = "#190F11",
  base01 = "#3B2A2E",
  base02 = "#77545C",
  base03 = "#956974",
  base04 = "#BFA5AB",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#EF426B",
  base09 = "#EF6B42",
  base0A = "#EFB442",
  base0B = "#6FEF42",
  base0C = "#42EFC6",
  base0D = "#42B1EF",
  base0E = "#6F42EF",
  base0F = "#EF42D3",
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

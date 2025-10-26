-- vermillion_fire Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#110B09",
  black = "#19100E",
  black2 = "#201412",
  one_bg = "#3C2D29",
  one_bg2 = "#5A433E",
  one_bg3 = "#785A53",
  grey = "#967068",
  grey_fg = "#AB8D86",
  grey_fg2 = "#C0A9A4",
  light_grey = "#D5C6C2",
  red = "#F45E3D",
  baby_pink = "#FF4397",
  pink = "#F43D8A",
  line = "#3C2D29",
  green = "#3DF45A",
  vibrant_green = "#49FF6C",
  nord_blue = "#365ADB",
  blue = "#3D65F4",
  yellow = "#E6F43D",
  sun = "#FDFF43",
  purple = "#BA3DF4",
  dark_purple = "#CC43FF",
  teal = "#3DD3F4",
  orange = "#F4B63D",
  cyan = "#3DD3F4",
  statusline_bg = "#3C2D29",
  lightbg = "#785A53",
  pmenu_bg = "#3D65F4",
  folder_bg = "#3DD3F4",
}

M.base_16 = {
  base00 = "#19100E",
  base01 = "#3C2D29",
  base02 = "#785A53",
  base03 = "#967068",
  base04 = "#C0A9A4",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#F45E3D",
  base09 = "#F4B63D",
  base0A = "#E6F43D",
  base0B = "#3DF45A",
  base0C = "#3DD3F4",
  base0D = "#3D65F4",
  base0E = "#BA3DF4",
  base0F = "#F43D8A",
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

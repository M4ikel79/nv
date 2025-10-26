-- electric_lime Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0E1209",
  black = "#141A0E",
  black2 = "#1A2112",
  one_bg = "#333C29",
  one_bg2 = "#4C5B3D",
  one_bg3 = "#667952",
  grey = "#7F9767",
  grey_fg = "#99AC85",
  grey_fg2 = "#B2C1A3",
  light_grey = "#CCD5C2",
  red = "#99F938",
  baby_pink = "#FFFD3D",
  pink = "#F9E638",
  line = "#333C29",
  green = "#389CF9",
  vibrant_green = "#43BBFF",
  nord_blue = "#E032CF",
  blue = "#F938E6",
  yellow = "#38F985",
  sun = "#3DFF92",
  purple = "#F93838",
  dark_purple = "#FF3D3D",
  teal = "#9838F9",
  orange = "#3BF938",
  cyan = "#9838F9",
  statusline_bg = "#333C29",
  lightbg = "#667952",
  pmenu_bg = "#F938E6",
  folder_bg = "#9838F9",
}

M.base_16 = {
  base00 = "#141A0E",
  base01 = "#333C29",
  base02 = "#667952",
  base03 = "#7F9767",
  base04 = "#B2C1A3",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#99F938",
  base09 = "#3BF938",
  base0A = "#38F985",
  base0B = "#389CF9",
  base0C = "#9838F9",
  base0D = "#F938E6",
  base0E = "#F93838",
  base0F = "#F9E638",
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

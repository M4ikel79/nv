-- violet_storm Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0F0A11",
  black = "#160F19",
  black2 = "#1C1320",
  one_bg = "#352A3B",
  one_bg2 = "#504058",
  one_bg3 = "#6B5576",
  grey = "#866B93",
  grey_fg = "#9E88A9",
  grey_fg2 = "#B6A6BE",
  light_grey = "#CEC3D4",
  red = "#B647EA",
  baby_pink = "#5C4EFF",
  pink = "#5447EA",
  line = "#352A3B",
  green = "#EAB347",
  vibrant_green = "#FFD655",
  nord_blue = "#3FD269",
  blue = "#47EA75",
  yellow = "#EA478B",
  sun = "#FF4E98",
  purple = "#47CDEA",
  dark_purple = "#4EE1FF",
  teal = "#7BEA47",
  orange = "#EA47D0",
  cyan = "#7BEA47",
  statusline_bg = "#352A3B",
  lightbg = "#6B5576",
  pmenu_bg = "#47EA75",
  folder_bg = "#7BEA47",
}

M.base_16 = {
  base00 = "#160F19",
  base01 = "#352A3B",
  base02 = "#6B5576",
  base03 = "#866B93",
  base04 = "#B6A6BE",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#B647EA",
  base09 = "#EA47D0",
  base0A = "#EA478B",
  base0B = "#EAB347",
  base0C = "#7BEA47",
  base0D = "#47EA75",
  base0E = "#47CDEA",
  base0F = "#5447EA",
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

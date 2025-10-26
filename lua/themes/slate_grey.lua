-- slate_grey Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0E0C0C",
  black = "#151212",
  black2 = "#1B1717",
  one_bg = "#353030",
  one_bg2 = "#504848",
  one_bg3 = "#6B6060",
  grey = "#857979",
  grey_fg = "#9E9393",
  grey_fg2 = "#B6AEAE",
  light_grey = "#CEC9C9",
  red = "#B27F7F",
  baby_pink = "#C38BAD",
  pink = "#B27F9E",
  line = "#353030",
  green = "#80B27F",
  vibrant_green = "#99D598",
  nord_blue = "#7284A0",
  blue = "#7F93B2",
  yellow = "#B2AD7F",
  sun = "#C3BE8B",
  purple = "#987FB2",
  dark_purple = "#A78BC3",
  teal = "#7FB2B2",
  orange = "#B2977F",
  cyan = "#7FB2B2",
  statusline_bg = "#353030",
  lightbg = "#6B6060",
  pmenu_bg = "#7F93B2",
  folder_bg = "#7FB2B2",
}

M.base_16 = {
  base00 = "#151212",
  base01 = "#353030",
  base02 = "#6B6060",
  base03 = "#857979",
  base04 = "#B6AEAE",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#B27F7F",
  base09 = "#B2977F",
  base0A = "#B2AD7F",
  base0B = "#80B27F",
  base0C = "#7FB2B2",
  base0D = "#7F93B2",
  base0E = "#987FB2",
  base0F = "#B27F9E",
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

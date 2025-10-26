-- golden_hour Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#11100A",
  black = "#19170F",
  black2 = "#201D13",
  one_bg = "#3B372A",
  one_bg2 = "#585340",
  one_bg3 = "#766F55",
  grey = "#938A6B",
  grey_fg = "#A9A288",
  grey_fg2 = "#BEB9A6",
  light_grey = "#D4D0C3",
  red = "#EAC647",
  baby_pink = "#FF6E4E",
  pink = "#EA6447",
  line = "#3B372A",
  green = "#47EAC3",
  vibrant_green = "#55FFEA",
  nord_blue = "#773FD2",
  blue = "#8547EA",
  yellow = "#7BEA47",
  sun = "#87FF4E",
  purple = "#EA47BC",
  dark_purple = "#FF4ECE",
  teal = "#476BEA",
  orange = "#C0EA47",
  cyan = "#476BEA",
  statusline_bg = "#3B372A",
  lightbg = "#766F55",
  pmenu_bg = "#8547EA",
  folder_bg = "#476BEA",
}

M.base_16 = {
  base00 = "#19170F",
  base01 = "#3B372A",
  base02 = "#766F55",
  base03 = "#938A6B",
  base04 = "#BEB9A6",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#EAC647",
  base09 = "#C0EA47",
  base0A = "#7BEA47",
  base0B = "#47EAC3",
  base0C = "#476BEA",
  base0D = "#8547EA",
  base0E = "#EA47BC",
  base0F = "#EA6447",
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

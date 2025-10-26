-- turquoise_bay Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0A1011",
  black = "#0F1819",
  black2 = "#131F20",
  one_bg = "#2A3A3B",
  one_bg2 = "#405758",
  one_bg3 = "#557476",
  grey = "#6B9193",
  grey_fg = "#88A7A9",
  grey_fg2 = "#A6BDBE",
  light_grey = "#C3D3D4",
  red = "#47E0EA",
  baby_pink = "#4EFFA0",
  pink = "#47EA92",
  line = "#2A3A3B",
  green = "#EA47E4",
  vibrant_green = "#FF55FF",
  nord_blue = "#D2A13F",
  blue = "#EAB347",
  yellow = "#474DEA",
  sun = "#4E54FF",
  purple = "#8FEA47",
  dark_purple = "#9DFF4E",
  teal = "#EA5147",
  orange = "#4792EA",
  cyan = "#EA5147",
  statusline_bg = "#2A3A3B",
  lightbg = "#557476",
  pmenu_bg = "#EAB347",
  folder_bg = "#EA5147",
}

M.base_16 = {
  base00 = "#0F1819",
  base01 = "#2A3A3B",
  base02 = "#557476",
  base03 = "#6B9193",
  base04 = "#A6BDBE",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#47E0EA",
  base09 = "#4792EA",
  base0A = "#474DEA",
  base0B = "#EA47E4",
  base0C = "#EA5147",
  base0D = "#EAB347",
  base0E = "#8FEA47",
  base0F = "#47EA92",
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

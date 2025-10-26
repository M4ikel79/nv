-- caribbean_sea Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0A1011",
  black = "#0F1819",
  black2 = "#131F20",
  one_bg = "#2A393B",
  one_bg2 = "#405558",
  one_bg3 = "#557276",
  grey = "#6B8F93",
  grey_fg = "#88A5A9",
  grey_fg2 = "#A6BBBE",
  light_grey = "#C3D2D4",
  red = "#47D7EA",
  baby_pink = "#4EFFAB",
  pink = "#47EA9C",
  line = "#2A393B",
  green = "#EA47DA",
  vibrant_green = "#FF55FF",
  nord_blue = "#D2A93F",
  blue = "#EABC47",
  yellow = "#4A47EA",
  sun = "#514EFF",
  purple = "#85EA47",
  dark_purple = "#92FF4E",
  teal = "#EA5A47",
  orange = "#4788EA",
  cyan = "#EA5A47",
  statusline_bg = "#2A393B",
  lightbg = "#557276",
  pmenu_bg = "#EABC47",
  folder_bg = "#EA5A47",
}

M.base_16 = {
  base00 = "#0F1819",
  base01 = "#2A393B",
  base02 = "#557276",
  base03 = "#6B8F93",
  base04 = "#A6BBBE",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#47D7EA",
  base09 = "#4788EA",
  base0A = "#4A47EA",
  base0B = "#EA47DA",
  base0C = "#EA5A47",
  base0D = "#EABC47",
  base0E = "#85EA47",
  base0F = "#47EA9C",
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

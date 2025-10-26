-- charcoal_grey Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0E0D0D",
  black = "#151313",
  black2 = "#1B1818",
  one_bg = "#343131",
  one_bg2 = "#4E4A4A",
  one_bg3 = "#686363",
  grey = "#827C7C",
  grey_fg = "#9B9696",
  grey_fg2 = "#B4B0B0",
  light_grey = "#CDCACA",
  red = "#A38E8E",
  baby_pink = "#B39CAA",
  pink = "#A38E9B",
  line = "#343131",
  green = "#8FA38E",
  vibrant_green = "#ABC3AA",
  nord_blue = "#7F8792",
  blue = "#8E96A3",
  yellow = "#A3A18E",
  sun = "#B3B19C",
  purple = "#998EA3",
  dark_purple = "#A89CB3",
  teal = "#8EA3A3",
  orange = "#A3988E",
  cyan = "#8EA3A3",
  statusline_bg = "#343131",
  lightbg = "#686363",
  pmenu_bg = "#8E96A3",
  folder_bg = "#8EA3A3",
}

M.base_16 = {
  base00 = "#151313",
  base01 = "#343131",
  base02 = "#686363",
  base03 = "#827C7C",
  base04 = "#B4B0B0",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#A38E8E",
  base09 = "#A3988E",
  base0A = "#A3A18E",
  base0B = "#8FA38E",
  base0C = "#8EA3A3",
  base0D = "#8E96A3",
  base0E = "#998EA3",
  base0F = "#A38E9B",
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

-- dracula_pro Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F8F8F2",
  darker_black = "#191A21",
  black = "#282A36",
  black2 = "#21222C",
  one_bg = "#343746",
  one_bg2 = "#424450",
  one_bg3 = "#44475A",
  grey = "#6272A4",
  grey_fg = "#6272A4",
  grey_fg2 = "#7080B0",
  light_grey = "#8090C0",
  red = "#FF5555",
  baby_pink = "#FF6E6E",
  pink = "#FF79C6",
  line = "#343746",
  green = "#50FA7B",
  vibrant_green = "#69FF94",
  nord_blue = "#BD93F9",
  blue = "#BD93F9",
  yellow = "#F1FA8C",
  sun = "#FFFFA5",
  purple = "#BD93F9",
  dark_purple = "#D6ACFF",
  teal = "#8BE9FD",
  orange = "#FFB86C",
  cyan = "#8BE9FD",
  statusline_bg = "#343746",
  lightbg = "#44475A",
  pmenu_bg = "#BD93F9",
  folder_bg = "#8BE9FD",
}

M.base_16 = {
  base00 = "#282A36",
  base01 = "#343746",
  base02 = "#44475A",
  base03 = "#6272A4",
  base04 = "#7080B0",
  base05 = "#F8F8F2",
  base06 = "#F8F8F2",
  base07 = "#FFFFFF",
  base08 = "#FF5555",
  base09 = "#FFB86C",
  base0A = "#F1FA8C",
  base0B = "#50FA7B",
  base0C = "#8BE9FD",
  base0D = "#8BE9FD",
  base0E = "#BD93F9",
  base0F = "#FF79C6",
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

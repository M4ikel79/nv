-- wisteria_dreams Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0E0B10",
  black = "#141018",
  black2 = "#1A141F",
  one_bg = "#332B3A",
  one_bg2 = "#4D4157",
  one_bg3 = "#675774",
  grey = "#816D91",
  grey_fg = "#9A8AA7",
  grey_fg2 = "#B3A7BD",
  light_grey = "#CCC4D3",
  red = "#A151E0",
  baby_pink = "#595FF6",
  pink = "#5157E0",
  line = "#332B3A",
  green = "#E09E51",
  vibrant_green = "#FFBD61",
  nord_blue = "#48C95D",
  blue = "#51E068",
  yellow = "#E0519E",
  sun = "#F659AD",
  purple = "#51D7E0",
  dark_purple = "#59ECF6",
  teal = "#90E051",
  orange = "#E051DA",
  cyan = "#90E051",
  statusline_bg = "#332B3A",
  lightbg = "#675774",
  pmenu_bg = "#51E068",
  folder_bg = "#90E051",
}

M.base_16 = {
  base00 = "#141018",
  base01 = "#332B3A",
  base02 = "#675774",
  base03 = "#816D91",
  base04 = "#B3A7BD",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#A151E0",
  base09 = "#E051DA",
  base0A = "#E0519E",
  base0B = "#E09E51",
  base0C = "#90E051",
  base0D = "#51E068",
  base0E = "#51D7E0",
  base0F = "#5157E0",
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

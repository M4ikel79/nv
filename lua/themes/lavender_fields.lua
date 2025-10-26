-- lavender_fields Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0E0B10",
  black = "#141018",
  black2 = "#1A141F",
  one_bg = "#322C39",
  one_bg2 = "#4C4256",
  one_bg3 = "#655873",
  grey = "#7F6E90",
  grey_fg = "#998BA6",
  grey_fg2 = "#B2A8BC",
  light_grey = "#CCC5D2",
  red = "#9856DB",
  baby_pink = "#5E6CF0",
  pink = "#5663DB",
  line = "#322C39",
  green = "#DB9656",
  vibrant_green = "#FFB467",
  nord_blue = "#4DC559",
  blue = "#56DB63",
  yellow = "#DB56A6",
  sun = "#F05EB6",
  purple = "#56DBDB",
  dark_purple = "#5EF0F0",
  teal = "#99DB56",
  orange = "#D856DB",
  cyan = "#99DB56",
  statusline_bg = "#322C39",
  lightbg = "#655873",
  pmenu_bg = "#56DB63",
  folder_bg = "#99DB56",
}

M.base_16 = {
  base00 = "#141018",
  base01 = "#322C39",
  base02 = "#655873",
  base03 = "#7F6E90",
  base04 = "#B2A8BC",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#9856DB",
  base09 = "#D856DB",
  base0A = "#DB56A6",
  base0B = "#DB9656",
  base0C = "#99DB56",
  base0D = "#56DB63",
  base0E = "#56DBDB",
  base0F = "#5663DB",
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

-- mahogany_wood Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#100C0B",
  black = "#181210",
  black2 = "#1F1714",
  one_bg = "#392F2C",
  one_bg2 = "#564742",
  one_bg3 = "#735F58",
  grey = "#90766E",
  grey_fg = "#A6928B",
  grey_fg2 = "#BCADA8",
  light_grey = "#D2C8C5",
  red = "#DB7656",
  baby_pink = "#F05E93",
  pink = "#DB5686",
  line = "#392F2C",
  green = "#56DB73",
  vibrant_green = "#67FF8A",
  nord_blue = "#4D60C5",
  blue = "#566BDB",
  yellow = "#C8DB56",
  sun = "#DCF05E",
  purple = "#B856DB",
  dark_purple = "#CA5EF0",
  teal = "#56BBDB",
  orange = "#DBB656",
  cyan = "#56BBDB",
  statusline_bg = "#392F2C",
  lightbg = "#735F58",
  pmenu_bg = "#566BDB",
  folder_bg = "#56BBDB",
}

M.base_16 = {
  base00 = "#181210",
  base01 = "#392F2C",
  base02 = "#735F58",
  base03 = "#90766E",
  base04 = "#BCADA8",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#DB7656",
  base09 = "#DBB656",
  base0A = "#C8DB56",
  base0B = "#56DB73",
  base0C = "#56BBDB",
  base0D = "#566BDB",
  base0E = "#B856DB",
  base0F = "#DB5686",
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

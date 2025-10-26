-- amber_sunset Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#100E0A",
  black = "#18140F",
  black2 = "#1F1A13",
  one_bg = "#3A322B",
  one_bg2 = "#574C41",
  one_bg3 = "#756556",
  grey = "#927E6C",
  grey_fg = "#A89889",
  grey_fg2 = "#BDB2A7",
  light_grey = "#D3CBC4",
  red = "#E5954C",
  baby_pink = "#FB5367",
  pink = "#E54C5E",
  line = "#3A322B",
  green = "#4CE592",
  vibrant_green = "#5BFFAF",
  nord_blue = "#4F44CE",
  blue = "#584CE5",
  yellow = "#ABE54C",
  sun = "#BCFB53",
  purple = "#E24CE5",
  dark_purple = "#F853FB",
  teal = "#4C9CE5",
  orange = "#E5DF4C",
  cyan = "#4C9CE5",
  statusline_bg = "#3A322B",
  lightbg = "#756556",
  pmenu_bg = "#584CE5",
  folder_bg = "#4C9CE5",
}

M.base_16 = {
  base00 = "#18140F",
  base01 = "#3A322B",
  base02 = "#756556",
  base03 = "#927E6C",
  base04 = "#BDB2A7",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#E5954C",
  base09 = "#E5DF4C",
  base0A = "#ABE54C",
  base0B = "#4CE592",
  base0C = "#4C9CE5",
  base0D = "#584CE5",
  base0E = "#E24CE5",
  base0F = "#E54C5E",
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

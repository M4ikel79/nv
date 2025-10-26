-- strawberry_ice Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#100B0B",
  black = "#181011",
  black2 = "#1F1416",
  one_bg = "#3A2B2E",
  one_bg2 = "#574145",
  one_bg3 = "#74575C",
  grey = "#916D74",
  grey_fg = "#A78A8F",
  grey_fg2 = "#BDA7AB",
  light_grey = "#D3C4C7",
  red = "#E0516B",
  baby_pink = "#F659D3",
  pink = "#E051C0",
  line = "#3A2B2E",
  green = "#6EE051",
  vibrant_green = "#84FF61",
  nord_blue = "#4893C9",
  blue = "#51A4E0",
  yellow = "#E0B851",
  sun = "#F6CA59",
  purple = "#7F51E0",
  dark_purple = "#8B59F6",
  teal = "#51E0C6",
  orange = "#E07C51",
  cyan = "#51E0C6",
  statusline_bg = "#3A2B2E",
  lightbg = "#74575C",
  pmenu_bg = "#51A4E0",
  folder_bg = "#51E0C6",
}

M.base_16 = {
  base00 = "#181011",
  base01 = "#3A2B2E",
  base02 = "#74575C",
  base03 = "#916D74",
  base04 = "#BDA7AB",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#E0516B",
  base09 = "#E07C51",
  base0A = "#E0B851",
  base0B = "#6EE051",
  base0C = "#51E0C6",
  base0D = "#51A4E0",
  base0E = "#7F51E0",
  base0F = "#E051C0",
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

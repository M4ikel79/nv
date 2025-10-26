-- maroon_velvet Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#100B0A",
  black = "#18100F",
  black2 = "#1F1413",
  one_bg = "#3A2C2B",
  one_bg2 = "#574241",
  one_bg3 = "#755856",
  grey = "#926E6C",
  grey_fg = "#A88B89",
  grey_fg2 = "#BDA8A7",
  light_grey = "#D3C5C4",
  red = "#E5554C",
  baby_pink = "#FB53AE",
  pink = "#E54C9F",
  line = "#3A2C2B",
  green = "#4CE552",
  vibrant_green = "#5BFF62",
  nord_blue = "#4473CE",
  blue = "#4C80E5",
  yellow = "#E5DF4C",
  sun = "#FBF553",
  purple = "#A24CE5",
  dark_purple = "#B253FB",
  teal = "#4CDCE5",
  orange = "#E59F4C",
  cyan = "#4CDCE5",
  statusline_bg = "#3A2C2B",
  lightbg = "#755856",
  pmenu_bg = "#4C80E5",
  folder_bg = "#4CDCE5",
}

M.base_16 = {
  base00 = "#18100F",
  base01 = "#3A2C2B",
  base02 = "#755856",
  base03 = "#926E6C",
  base04 = "#BDA8A7",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#E5554C",
  base09 = "#E59F4C",
  base0A = "#E5DF4C",
  base0B = "#4CE552",
  base0C = "#4CDCE5",
  base0D = "#4C80E5",
  base0E = "#A24CE5",
  base0F = "#E54C9F",
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

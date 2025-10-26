-- peach_cobbler Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#100E0A",
  black = "#18140F",
  black2 = "#1F1A13",
  one_bg = "#3A332B",
  one_bg2 = "#574D41",
  one_bg3 = "#756756",
  grey = "#92816C",
  grey_fg = "#A89A89",
  grey_fg2 = "#BDB3A7",
  light_grey = "#D3CCC4",
  red = "#E59F4C",
  baby_pink = "#FB535D",
  pink = "#E54C55",
  line = "#3A332B",
  green = "#4CE59C",
  vibrant_green = "#5BFFBB",
  nord_blue = "#5744CE",
  blue = "#614CE5",
  yellow = "#A2E54C",
  sun = "#B2FB53",
  purple = "#E54CDF",
  dark_purple = "#FB53F5",
  teal = "#4C92E5",
  orange = "#E2E54C",
  cyan = "#4C92E5",
  statusline_bg = "#3A332B",
  lightbg = "#756756",
  pmenu_bg = "#614CE5",
  folder_bg = "#4C92E5",
}

M.base_16 = {
  base00 = "#18140F",
  base01 = "#3A332B",
  base02 = "#756756",
  base03 = "#92816C",
  base04 = "#BDB3A7",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#E59F4C",
  base09 = "#E2E54C",
  base0A = "#A2E54C",
  base0B = "#4CE59C",
  base0C = "#4C92E5",
  base0D = "#614CE5",
  base0E = "#E54CDF",
  base0F = "#E54C55",
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

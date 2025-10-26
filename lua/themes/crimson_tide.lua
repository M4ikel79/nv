-- crimson_tide Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#11090A",
  black = "#190E0F",
  black2 = "#201213",
  one_bg = "#3C292A",
  one_bg2 = "#5A3E40",
  one_bg3 = "#785355",
  grey = "#96686B",
  grey_fg = "#AB8688",
  grey_fg2 = "#C0A4A6",
  light_grey = "#D5C2C3",
  red = "#F43D48",
  baby_pink = "#FF43C8",
  pink = "#F43DB6",
  line = "#3C292A",
  green = "#4BF43D",
  vibrant_green = "#5AFF49",
  nord_blue = "#3682DB",
  blue = "#3D91F4",
  yellow = "#F4D73D",
  sun = "#FFEC43",
  purple = "#8D3DF4",
  dark_purple = "#9B43FF",
  teal = "#3DF4E9",
  orange = "#F48A3D",
  cyan = "#3DF4E9",
  statusline_bg = "#3C292A",
  lightbg = "#785355",
  pmenu_bg = "#3D91F4",
  folder_bg = "#3DF4E9",
}

M.base_16 = {
  base00 = "#190E0F",
  base01 = "#3C292A",
  base02 = "#785355",
  base03 = "#96686B",
  base04 = "#C0A4A6",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#F43D48",
  base09 = "#F48A3D",
  base0A = "#F4D73D",
  base0B = "#4BF43D",
  base0C = "#3DF4E9",
  base0D = "#3D91F4",
  base0E = "#8D3DF4",
  base0F = "#F43DB6",
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

-- blood_moon Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#110909",
  black = "#190E0E",
  black2 = "#201212",
  one_bg = "#3C2929",
  one_bg2 = "#5A3E3E",
  one_bg3 = "#785353",
  grey = "#966868",
  grey_fg = "#AB8686",
  grey_fg2 = "#C0A4A4",
  light_grey = "#D5C2C2",
  red = "#F43D3D",
  baby_pink = "#FF43BC",
  pink = "#F43DAB",
  line = "#3C2929",
  green = "#40F43D",
  vibrant_green = "#4CFF49",
  nord_blue = "#3678DB",
  blue = "#3D86F4",
  yellow = "#F4E23D",
  sun = "#FFF843",
  purple = "#983DF4",
  dark_purple = "#A743FF",
  teal = "#3DF4F4",
  orange = "#F4953D",
  cyan = "#3DF4F4",
  statusline_bg = "#3C2929",
  lightbg = "#785353",
  pmenu_bg = "#3D86F4",
  folder_bg = "#3DF4F4",
}

M.base_16 = {
  base00 = "#190E0E",
  base01 = "#3C2929",
  base02 = "#785353",
  base03 = "#966868",
  base04 = "#C0A4A4",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#F43D3D",
  base09 = "#F4953D",
  base0A = "#F4E23D",
  base0B = "#40F43D",
  base0C = "#3DF4F4",
  base0D = "#3D86F4",
  base0E = "#983DF4",
  base0F = "#F43DAB",
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

-- magenta_magic Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#110910",
  black = "#190E18",
  black2 = "#20121F",
  one_bg = "#3C293A",
  one_bg2 = "#5A3E57",
  one_bg3 = "#785374",
  grey = "#966891",
  grey_fg = "#AB86A7",
  grey_fg2 = "#C0A4BD",
  light_grey = "#D5C2D3",
  red = "#F43DE2",
  baby_pink = "#A743FF",
  pink = "#983DF4",
  line = "#3C293A",
  green = "#E6F43D",
  vibrant_green = "#FFFF49",
  nord_blue = "#36DBAA",
  blue = "#3DF4BD",
  yellow = "#F43D3D",
  sun = "#FF4343",
  purple = "#3D86F4",
  dark_purple = "#4393FF",
  teal = "#3DF44F",
  orange = "#F43D8A",
  cyan = "#3DF44F",
  statusline_bg = "#3C293A",
  lightbg = "#785374",
  pmenu_bg = "#3DF4BD",
  folder_bg = "#3DF44F",
}

M.base_16 = {
  base00 = "#190E18",
  base01 = "#3C293A",
  base02 = "#785374",
  base03 = "#966891",
  base04 = "#C0A4BD",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#F43DE2",
  base09 = "#F43D8A",
  base0A = "#F43D3D",
  base0B = "#E6F43D",
  base0C = "#3DF44F",
  base0D = "#3DF4BD",
  base0E = "#3D86F4",
  base0F = "#983DF4",
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

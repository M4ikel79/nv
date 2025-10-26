-- graphite_storm Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0E0D0D",
  black = "#151313",
  black2 = "#1B1818",
  one_bg = "#343131",
  one_bg2 = "#4E4A4A",
  one_bg3 = "#696262",
  grey = "#837B7B",
  grey_fg = "#9C9595",
  grey_fg2 = "#B4B0B0",
  light_grey = "#CDCACA",
  red = "#A88989",
  baby_pink = "#B896AB",
  pink = "#A8899C",
  line = "#343131",
  green = "#8AA889",
  vibrant_green = "#A5C9A4",
  nord_blue = "#7B8697",
  blue = "#8995A8",
  yellow = "#A8A589",
  sun = "#B8B596",
  purple = "#9889A8",
  dark_purple = "#A796B8",
  teal = "#89A8A8",
  orange = "#A89889",
  cyan = "#89A8A8",
  statusline_bg = "#343131",
  lightbg = "#696262",
  pmenu_bg = "#8995A8",
  folder_bg = "#89A8A8",
}

M.base_16 = {
  base00 = "#151313",
  base01 = "#343131",
  base02 = "#696262",
  base03 = "#837B7B",
  base04 = "#B4B0B0",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#A88989",
  base09 = "#A89889",
  base0A = "#A8A589",
  base0B = "#8AA889",
  base0C = "#89A8A8",
  base0D = "#8995A8",
  base0E = "#9889A8",
  base0F = "#A8899C",
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

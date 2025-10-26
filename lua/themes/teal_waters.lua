-- teal_waters Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0A1010",
  black = "#0F1818",
  black2 = "#131F1F",
  one_bg = "#2B3A3A",
  one_bg2 = "#415757",
  one_bg3 = "#567575",
  grey = "#6C9292",
  grey_fg = "#89A8A8",
  grey_fg2 = "#A7BDBD",
  light_grey = "#C4D3D3",
  red = "#4CE5E5",
  baby_pink = "#53FB96",
  pink = "#4CE589",
  line = "#2B3A3A",
  green = "#E24CE5",
  vibrant_green = "#FF5BFF",
  nord_blue = "#CE9744",
  blue = "#E5A84C",
  yellow = "#4C5BE5",
  sun = "#5364FB",
  purple = "#99E54C",
  dark_purple = "#A8FB53",
  teal = "#E54C4C",
  orange = "#4C9CE5",
  cyan = "#E54C4C",
  statusline_bg = "#2B3A3A",
  lightbg = "#567575",
  pmenu_bg = "#E5A84C",
  folder_bg = "#E54C4C",
}

M.base_16 = {
  base00 = "#0F1818",
  base01 = "#2B3A3A",
  base02 = "#567575",
  base03 = "#6C9292",
  base04 = "#A7BDBD",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#4CE5E5",
  base09 = "#4C9CE5",
  base0A = "#4C5BE5",
  base0B = "#E24CE5",
  base0C = "#E54C4C",
  base0D = "#E5A84C",
  base0E = "#99E54C",
  base0F = "#4CE589",
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

-- emerald_city Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0A100B",
  black = "#0F1810",
  black2 = "#131F14",
  one_bg = "#2B3A2C",
  one_bg2 = "#415743",
  one_bg3 = "#567559",
  grey = "#6C9270",
  grey_fg = "#89A88C",
  grey_fg2 = "#A7BDA9",
  light_grey = "#C4D3C5",
  red = "#4CE55B",
  baby_pink = "#A8FB53",
  pink = "#99E54C",
  line = "#2B3A2C",
  green = "#584CE5",
  vibrant_green = "#695BFF",
  nord_blue = "#CE446D",
  blue = "#E54C7A",
  yellow = "#4CE5E5",
  sun = "#53FBFB",
  purple = "#E5A84C",
  dark_purple = "#FBB853",
  teal = "#E54CD6",
  orange = "#4CE5A5",
  cyan = "#E54CD6",
  statusline_bg = "#2B3A2C",
  lightbg = "#567559",
  pmenu_bg = "#E54C7A",
  folder_bg = "#E54CD6",
}

M.base_16 = {
  base00 = "#0F1810",
  base01 = "#2B3A2C",
  base02 = "#567559",
  base03 = "#6C9270",
  base04 = "#A7BDA9",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#4CE55B",
  base09 = "#4CE5A5",
  base0A = "#4CE5E5",
  base0B = "#584CE5",
  base0C = "#E54CD6",
  base0D = "#E54C7A",
  base0E = "#E5A84C",
  base0F = "#99E54C",
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

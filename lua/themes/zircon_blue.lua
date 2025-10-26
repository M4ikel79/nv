-- zircon_blue Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0A0E10",
  black = "#0F1518",
  black2 = "#131B1F",
  one_bg = "#2B343A",
  one_bg2 = "#414E57",
  one_bg3 = "#566875",
  grey = "#6C8292",
  grey_fg = "#899BA8",
  grey_fg2 = "#A7B4BD",
  light_grey = "#C4CDD3",
  red = "#4CA5E5",
  baby_pink = "#53FBDD",
  pink = "#4CE5C9",
  line = "#2B343A",
  green = "#E54CA8",
  vibrant_green = "#FF5BC9",
  nord_blue = "#CBCE44",
  blue = "#E2E54C",
  yellow = "#7D4CE5",
  sun = "#8953FB",
  purple = "#58E54C",
  dark_purple = "#60FB53",
  teal = "#E58C4C",
  orange = "#4C5BE5",
  cyan = "#E58C4C",
  statusline_bg = "#2B343A",
  lightbg = "#566875",
  pmenu_bg = "#E2E54C",
  folder_bg = "#E58C4C",
}

M.base_16 = {
  base00 = "#0F1518",
  base01 = "#2B343A",
  base02 = "#566875",
  base03 = "#6C8292",
  base04 = "#A7B4BD",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#4CA5E5",
  base09 = "#4C5BE5",
  base0A = "#7D4CE5",
  base0B = "#E54CA8",
  base0C = "#E58C4C",
  base0D = "#E2E54C",
  base0E = "#58E54C",
  base0F = "#4CE5C9",
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

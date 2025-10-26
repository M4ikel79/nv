-- ultramarine_deep Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0A0B10",
  black = "#0F1018",
  black2 = "#13141F",
  one_bg = "#2B2C3A",
  one_bg2 = "#414357",
  one_bg3 = "#565975",
  grey = "#6C7092",
  grey_fg = "#898CA8",
  grey_fg2 = "#A7A9BD",
  light_grey = "#C4C5D3",
  red = "#4C5BE5",
  baby_pink = "#53C9FB",
  pink = "#4CB7E5",
  line = "#2B2C3A",
  green = "#E54C5E",
  vibrant_green = "#FF5B70",
  nord_blue = "#89CE44",
  blue = "#99E54C",
  yellow = "#C64CE5",
  sun = "#D953FB",
  purple = "#4CE589",
  dark_purple = "#53FB96",
  teal = "#E5D64C",
  orange = "#864CE5",
  cyan = "#E5D64C",
  statusline_bg = "#2B2C3A",
  lightbg = "#565975",
  pmenu_bg = "#99E54C",
  folder_bg = "#E5D64C",
}

M.base_16 = {
  base00 = "#0F1018",
  base01 = "#2B2C3A",
  base02 = "#565975",
  base03 = "#6C7092",
  base04 = "#A7A9BD",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#4C5BE5",
  base09 = "#864CE5",
  base0A = "#C64CE5",
  base0B = "#E54C5E",
  base0C = "#E5D64C",
  base0D = "#99E54C",
  base0E = "#4CE589",
  base0F = "#4CB7E5",
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

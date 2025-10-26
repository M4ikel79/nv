-- cherry_cola Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#100A0B",
  black = "#180F10",
  black2 = "#1F1314",
  one_bg = "#3A2B2D",
  one_bg2 = "#574143",
  one_bg3 = "#75565A",
  grey = "#926C70",
  grey_fg = "#A8898D",
  grey_fg2 = "#BDA7A9",
  light_grey = "#D3C4C6",
  red = "#E54C5E",
  baby_pink = "#FB53CC",
  pink = "#E54CBA",
  line = "#3A2B2D",
  green = "#61E54C",
  vibrant_green = "#74FF5B",
  nord_blue = "#448CCE",
  blue = "#4C9CE5",
  yellow = "#E5C34C",
  sun = "#FBD653",
  purple = "#864CE5",
  dark_purple = "#9353FB",
  teal = "#4CE5D3",
  orange = "#E5834C",
  cyan = "#4CE5D3",
  statusline_bg = "#3A2B2D",
  lightbg = "#75565A",
  pmenu_bg = "#4C9CE5",
  folder_bg = "#4CE5D3",
}

M.base_16 = {
  base00 = "#180F10",
  base01 = "#3A2B2D",
  base02 = "#75565A",
  base03 = "#926C70",
  base04 = "#BDA7A9",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#E54C5E",
  base09 = "#E5834C",
  base0A = "#E5C34C",
  base0B = "#61E54C",
  base0C = "#4CE5D3",
  base0D = "#4C9CE5",
  base0E = "#864CE5",
  base0F = "#E54CBA",
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

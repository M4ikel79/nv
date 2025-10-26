-- coral_reef Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#110B0A",
  black = "#19100F",
  black2 = "#201413",
  one_bg = "#3B2C2A",
  one_bg2 = "#59423F",
  one_bg3 = "#775854",
  grey = "#956F69",
  grey_fg = "#AA8B87",
  grey_fg2 = "#BFA8A5",
  light_grey = "#D4C5C3",
  red = "#EF5742",
  baby_pink = "#FF48A3",
  pink = "#EF4295",
  line = "#3B2C2A",
  green = "#42EF53",
  vibrant_green = "#4FFF63",
  nord_blue = "#3B66D7",
  blue = "#4272EF",
  yellow = "#ECEF42",
  sun = "#FFFF48",
  purple = "#AD42EF",
  dark_purple = "#BE48FF",
  teal = "#42DAEF",
  orange = "#EFAA42",
  cyan = "#42DAEF",
  statusline_bg = "#3B2C2A",
  lightbg = "#775854",
  pmenu_bg = "#4272EF",
  folder_bg = "#42DAEF",
}

M.base_16 = {
  base00 = "#19100F",
  base01 = "#3B2C2A",
  base02 = "#775854",
  base03 = "#956F69",
  base04 = "#BFA8A5",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#EF5742",
  base09 = "#EFAA42",
  base0A = "#ECEF42",
  base0B = "#42EF53",
  base0C = "#42DAEF",
  base0D = "#4272EF",
  base0E = "#AD42EF",
  base0F = "#EF4295",
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

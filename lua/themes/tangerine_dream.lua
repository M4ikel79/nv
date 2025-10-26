-- tangerine_dream Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#110F0A",
  black = "#19160F",
  black2 = "#201C13",
  one_bg = "#3B352A",
  one_bg2 = "#59503F",
  one_bg3 = "#776B54",
  grey = "#958669",
  grey_fg = "#AA9E87",
  grey_fg2 = "#BFB6A5",
  light_grey = "#D4CEC3",
  red = "#EFB442",
  baby_pink = "#FF5348",
  pink = "#EF4C42",
  line = "#3B352A",
  green = "#42EFB1",
  vibrant_green = "#4FFFD4",
  nord_blue = "#633BD7",
  blue = "#6F42EF",
  yellow = "#8EEF42",
  sun = "#9CFF48",
  purple = "#EF42D3",
  dark_purple = "#FF48E8",
  teal = "#427DEF",
  orange = "#D7EF42",
  cyan = "#427DEF",
  statusline_bg = "#3B352A",
  lightbg = "#776B54",
  pmenu_bg = "#6F42EF",
  folder_bg = "#427DEF",
}

M.base_16 = {
  base00 = "#19160F",
  base01 = "#3B352A",
  base02 = "#776B54",
  base03 = "#958669",
  base04 = "#BFB6A5",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#EFB442",
  base09 = "#D7EF42",
  base0A = "#8EEF42",
  base0B = "#42EFB1",
  base0C = "#427DEF",
  base0D = "#6F42EF",
  base0E = "#EF42D3",
  base0F = "#EF4C42",
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

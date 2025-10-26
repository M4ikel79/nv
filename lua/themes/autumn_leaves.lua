-- autumn_leaves Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#110C0A",
  black = "#19120F",
  black2 = "#201713",
  one_bg = "#3B2F2A",
  one_bg2 = "#59473F",
  one_bg3 = "#775F54",
  grey = "#957669",
  grey_fg = "#AA9287",
  grey_fg2 = "#BFADA5",
  light_grey = "#D4C8C3",
  red = "#EF7642",
  baby_pink = "#FF4881",
  pink = "#EF4276",
  line = "#3B2F2A",
  green = "#42EF72",
  vibrant_green = "#4FFF88",
  nord_blue = "#3B4AD7",
  blue = "#4253EF",
  yellow = "#CDEF42",
  sun = "#E1FF48",
  purple = "#CD42EF",
  dark_purple = "#E148FF",
  teal = "#42BBEF",
  orange = "#EFC942",
  cyan = "#42BBEF",
  statusline_bg = "#3B2F2A",
  lightbg = "#775F54",
  pmenu_bg = "#4253EF",
  folder_bg = "#42BBEF",
}

M.base_16 = {
  base00 = "#19120F",
  base01 = "#3B2F2A",
  base02 = "#775F54",
  base03 = "#957669",
  base04 = "#BFADA5",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#EF7642",
  base09 = "#EFC942",
  base0A = "#CDEF42",
  base0B = "#42EF72",
  base0C = "#42BBEF",
  base0D = "#4253EF",
  base0E = "#CD42EF",
  base0F = "#EF4276",
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

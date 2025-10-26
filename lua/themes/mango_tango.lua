-- mango_tango Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#110E0A",
  black = "#19150F",
  black2 = "#201B13",
  one_bg = "#3B342A",
  one_bg2 = "#594F3F",
  one_bg3 = "#776954",
  grey = "#958369",
  grey_fg = "#AA9C87",
  grey_fg2 = "#BFB5A5",
  light_grey = "#D4CDC3",
  red = "#EFAA42",
  baby_pink = "#FF4848",
  pink = "#EF4242",
  line = "#3B342A",
  green = "#42EFA6",
  vibrant_green = "#4FFFC7",
  nord_blue = "#5A3BD7",
  blue = "#6442EF",
  yellow = "#99EF42",
  sun = "#A8FF48",
  purple = "#EF42DE",
  dark_purple = "#FF48F4",
  teal = "#4287EF",
  orange = "#E1EF42",
  cyan = "#4287EF",
  statusline_bg = "#3B342A",
  lightbg = "#776954",
  pmenu_bg = "#6442EF",
  folder_bg = "#4287EF",
}

M.base_16 = {
  base00 = "#19150F",
  base01 = "#3B342A",
  base02 = "#776954",
  base03 = "#958369",
  base04 = "#BFB5A5",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#EFAA42",
  base09 = "#E1EF42",
  base0A = "#99EF42",
  base0B = "#42EFA6",
  base0C = "#4287EF",
  base0D = "#6442EF",
  base0E = "#EF42DE",
  base0F = "#EF4242",
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

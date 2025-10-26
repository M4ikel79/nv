-- fuchsia_fantasy Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#110A0F",
  black = "#190F16",
  black2 = "#20131C",
  one_bg = "#3B2A36",
  one_bg2 = "#593F52",
  one_bg3 = "#77546D",
  grey = "#956989",
  grey_fg = "#AA87A0",
  grey_fg2 = "#BFA5B8",
  light_grey = "#D4C3CF",
  red = "#EF42BF",
  baby_pink = "#CA48FF",
  pink = "#B842EF",
  line = "#3B2A36",
  green = "#C2EF42",
  vibrant_green = "#E8FF4F",
  nord_blue = "#3BD7C4",
  blue = "#42EFDA",
  yellow = "#EF6142",
  sun = "#FF6A48",
  purple = "#4268EF",
  dark_purple = "#4872FF",
  teal = "#42EF72",
  orange = "#EF426B",
  cyan = "#42EF72",
  statusline_bg = "#3B2A36",
  lightbg = "#77546D",
  pmenu_bg = "#42EFDA",
  folder_bg = "#42EF72",
}

M.base_16 = {
  base00 = "#190F16",
  base01 = "#3B2A36",
  base02 = "#77546D",
  base03 = "#956989",
  base04 = "#BFA5B8",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#EF42BF",
  base09 = "#EF426B",
  base0A = "#EF6142",
  base0B = "#C2EF42",
  base0C = "#42EF72",
  base0D = "#42EFDA",
  base0E = "#4268EF",
  base0F = "#B842EF",
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

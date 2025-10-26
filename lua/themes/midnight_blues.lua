-- midnight_blues Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0B0B10",
  black = "#101118",
  black2 = "#14161F",
  one_bg = "#2B2E3A",
  one_bg2 = "#414557",
  one_bg3 = "#575C74",
  grey = "#6D7391",
  grey_fg = "#8A8FA7",
  grey_fg2 = "#A7ABBD",
  light_grey = "#C4C7D3",
  red = "#5168E0",
  baby_pink = "#59D1F6",
  pink = "#51BEE0",
  line = "#2B2E3A",
  green = "#E0516B",
  vibrant_green = "#FF6180",
  nord_blue = "#90C948",
  blue = "#A1E051",
  yellow = "#BB51E0",
  sun = "#CD59F6",
  purple = "#51E082",
  dark_purple = "#59F68F",
  teal = "#E0C951",
  orange = "#7F51E0",
  cyan = "#E0C951",
  statusline_bg = "#2B2E3A",
  lightbg = "#575C74",
  pmenu_bg = "#A1E051",
  folder_bg = "#E0C951",
}

M.base_16 = {
  base00 = "#101118",
  base01 = "#2B2E3A",
  base02 = "#575C74",
  base03 = "#6D7391",
  base04 = "#A7ABBD",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#5168E0",
  base09 = "#7F51E0",
  base0A = "#BB51E0",
  base0B = "#E0516B",
  base0C = "#E0C951",
  base0D = "#A1E051",
  base0E = "#51E082",
  base0F = "#51BEE0",
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

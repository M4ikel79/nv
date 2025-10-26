-- berry_blast Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#110A0E",
  black = "#190F14",
  black2 = "#20131A",
  one_bg = "#3B2A32",
  one_bg2 = "#58404C",
  one_bg3 = "#765565",
  grey = "#936B7E",
  grey_fg = "#A98898",
  grey_fg2 = "#BEA6B2",
  light_grey = "#D4C3CB",
  red = "#EA4795",
  baby_pink = "#F34EFF",
  pink = "#DD47EA",
  line = "#3B2A32",
  green = "#99EA47",
  vibrant_green = "#B7FF55",
  nord_blue = "#3FC1D2",
  blue = "#47D7EA",
  yellow = "#EA8B47",
  sun = "#FF984E",
  purple = "#4A47EA",
  dark_purple = "#514EFF",
  teal = "#47EA9C",
  orange = "#EA4747",
  cyan = "#47EA9C",
  statusline_bg = "#3B2A32",
  lightbg = "#765565",
  pmenu_bg = "#47D7EA",
  folder_bg = "#47EA9C",
}

M.base_16 = {
  base00 = "#190F14",
  base01 = "#3B2A32",
  base02 = "#765565",
  base03 = "#936B7E",
  base04 = "#BEA6B2",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#EA4795",
  base09 = "#EA4747",
  base0A = "#EA8B47",
  base0B = "#99EA47",
  base0C = "#47EA9C",
  base0D = "#47D7EA",
  base0E = "#4A47EA",
  base0F = "#DD47EA",
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

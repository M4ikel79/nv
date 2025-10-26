-- ice_cave Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0B0E10",
  black = "#111517",
  black2 = "#161B1D",
  one_bg = "#2D3438",
  one_bg2 = "#444E54",
  one_bg3 = "#5B6870",
  grey = "#72838C",
  grey_fg = "#8E9BA3",
  grey_fg2 = "#AAB4BA",
  light_grey = "#C6CDD1",
  red = "#65A7CC",
  baby_pink = "#6FE0C4",
  pink = "#65CCB3",
  line = "#2D3438",
  green = "#CC65A9",
  vibrant_green = "#F479CA",
  nord_blue = "#B7B35A",
  blue = "#CCC765",
  yellow = "#8065CC",
  sun = "#8C6FE0",
  purple = "#74CC65",
  dark_purple = "#7FE06F",
  teal = "#CC8A65",
  orange = "#6576CC",
  cyan = "#CC8A65",
  statusline_bg = "#2D3438",
  lightbg = "#5B6870",
  pmenu_bg = "#CCC765",
  folder_bg = "#CC8A65",
}

M.base_16 = {
  base00 = "#111517",
  base01 = "#2D3438",
  base02 = "#5B6870",
  base03 = "#72838C",
  base04 = "#AAB4BA",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#65A7CC",
  base09 = "#6576CC",
  base0A = "#8065CC",
  base0B = "#CC65A9",
  base0C = "#CC8A65",
  base0D = "#CCC765",
  base0E = "#74CC65",
  base0F = "#65CCB3",
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

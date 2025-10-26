-- plum_wine Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0F0B10",
  black = "#161018",
  black2 = "#1C141F",
  one_bg = "#372B3A",
  one_bg2 = "#524157",
  one_bg3 = "#6E5774",
  grey = "#8A6D91",
  grey_fg = "#A18AA7",
  grey_fg2 = "#B8A7BD",
  light_grey = "#D0C4D3",
  red = "#C351E0",
  baby_pink = "#7959F6",
  pink = "#6E51E0",
  line = "#372B3A",
  green = "#E0C051",
  vibrant_green = "#FFE661",
  nord_blue = "#48C97C",
  blue = "#51E08A",
  yellow = "#E0517C",
  sun = "#F65988",
  purple = "#51B5E0",
  dark_purple = "#59C7F6",
  teal = "#6EE051",
  orange = "#E051B8",
  cyan = "#6EE051",
  statusline_bg = "#372B3A",
  lightbg = "#6E5774",
  pmenu_bg = "#51E08A",
  folder_bg = "#6EE051",
}

M.base_16 = {
  base00 = "#161018",
  base01 = "#372B3A",
  base02 = "#6E5774",
  base03 = "#8A6D91",
  base04 = "#B8A7BD",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#C351E0",
  base09 = "#E051B8",
  base0A = "#E0517C",
  base0B = "#E0C051",
  base0C = "#6EE051",
  base0D = "#51E08A",
  base0E = "#51B5E0",
  base0F = "#6E51E0",
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

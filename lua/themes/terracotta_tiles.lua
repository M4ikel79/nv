-- terracotta_tiles Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#100C0B",
  black = "#181210",
  black2 = "#1F1714",
  one_bg = "#3A302B",
  one_bg2 = "#574841",
  one_bg3 = "#746057",
  grey = "#91786D",
  grey_fg = "#A7938A",
  grey_fg2 = "#BDAEA7",
  light_grey = "#D3C9C4",
  red = "#E07C51",
  baby_pink = "#F65988",
  pink = "#E0517C",
  line = "#3A302B",
  green = "#51E079",
  vibrant_green = "#61FF91",
  nord_blue = "#4855C9",
  blue = "#515FE0",
  yellow = "#C3E051",
  sun = "#D6F659",
  purple = "#C351E0",
  dark_purple = "#D659F6",
  teal = "#51B5E0",
  orange = "#E0C051",
  cyan = "#51B5E0",
  statusline_bg = "#3A302B",
  lightbg = "#746057",
  pmenu_bg = "#515FE0",
  folder_bg = "#51B5E0",
}

M.base_16 = {
  base00 = "#181210",
  base01 = "#3A302B",
  base02 = "#746057",
  base03 = "#91786D",
  base04 = "#BDAEA7",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#E07C51",
  base09 = "#E0C051",
  base0A = "#C3E051",
  base0B = "#51E079",
  base0C = "#51B5E0",
  base0D = "#515FE0",
  base0E = "#C351E0",
  base0F = "#E0517C",
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

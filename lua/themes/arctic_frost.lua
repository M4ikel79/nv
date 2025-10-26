-- arctic_frost Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0B0E10",
  black = "#101518",
  black2 = "#141B1F",
  one_bg = "#2C3539",
  one_bg2 = "#425056",
  one_bg3 = "#586B73",
  grey = "#6E8690",
  grey_fg = "#8B9EA6",
  grey_fg2 = "#A8B6BC",
  light_grey = "#C5CED2",
  red = "#56B3DB",
  baby_pink = "#5EF0C4",
  pink = "#56DBB3",
  line = "#2C3539",
  green = "#DB56B6",
  vibrant_green = "#FF67DA",
  nord_blue = "#C5B94D",
  blue = "#DBCE56",
  yellow = "#7156DB",
  sun = "#7C5EF0",
  purple = "#71DB56",
  dark_purple = "#7CF05E",
  teal = "#DB7E56",
  orange = "#5673DB",
  cyan = "#DB7E56",
  statusline_bg = "#2C3539",
  lightbg = "#586B73",
  pmenu_bg = "#DBCE56",
  folder_bg = "#DB7E56",
}

M.base_16 = {
  base00 = "#101518",
  base01 = "#2C3539",
  base02 = "#586B73",
  base03 = "#6E8690",
  base04 = "#A8B6BC",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#56B3DB",
  base09 = "#5673DB",
  base0A = "#7156DB",
  base0B = "#DB56B6",
  base0C = "#DB7E56",
  base0D = "#DBCE56",
  base0E = "#71DB56",
  base0F = "#56DBB3",
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

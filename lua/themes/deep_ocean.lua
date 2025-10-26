-- deep_ocean Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0B0E10",
  black = "#101418",
  black2 = "#141A1F",
  one_bg = "#2B333A",
  one_bg2 = "#414C57",
  one_bg3 = "#576674",
  grey = "#6D8091",
  grey_fg = "#8A99A7",
  grey_fg2 = "#A7B2BD",
  light_grey = "#C4CCD3",
  red = "#519BE0",
  baby_pink = "#59F6E3",
  pink = "#51E0CF",
  line = "#2B333A",
  green = "#E0519E",
  vibrant_green = "#FF61BD",
  nord_blue = "#BEC948",
  blue = "#D4E051",
  yellow = "#8751E0",
  sun = "#9459F6",
  purple = "#54E051",
  dark_purple = "#5CF659",
  teal = "#E09651",
  orange = "#5157E0",
  cyan = "#E09651",
  statusline_bg = "#2B333A",
  lightbg = "#576674",
  pmenu_bg = "#D4E051",
  folder_bg = "#E09651",
}

M.base_16 = {
  base00 = "#101418",
  base01 = "#2B333A",
  base02 = "#576674",
  base03 = "#6D8091",
  base04 = "#A7B2BD",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#519BE0",
  base09 = "#5157E0",
  base0A = "#8751E0",
  base0B = "#E0519E",
  base0C = "#E09651",
  base0D = "#D4E051",
  base0E = "#54E051",
  base0F = "#51E0CF",
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

-- zinc_metal Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0E0D0D",
  black = "#151313",
  black2 = "#1B1818",
  one_bg = "#343131",
  one_bg2 = "#4F4949",
  one_bg3 = "#696262",
  grey = "#847A7A",
  grey_fg = "#9C9595",
  grey_fg2 = "#B5AFAF",
  light_grey = "#CDCACA",
  red = "#AB8686",
  baby_pink = "#BC93AB",
  pink = "#AB869C",
  line = "#343131",
  green = "#87AB86",
  vibrant_green = "#A2CDA0",
  nord_blue = "#788699",
  blue = "#8695AB",
  yellow = "#ABA786",
  sun = "#BCB793",
  purple = "#9886AB",
  dark_purple = "#A793BC",
  teal = "#86ABAB",
  orange = "#AB9886",
  cyan = "#86ABAB",
  statusline_bg = "#343131",
  lightbg = "#696262",
  pmenu_bg = "#8695AB",
  folder_bg = "#86ABAB",
}

M.base_16 = {
  base00 = "#151313",
  base01 = "#343131",
  base02 = "#696262",
  base03 = "#847A7A",
  base04 = "#B5AFAF",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#AB8686",
  base09 = "#AB9886",
  base0A = "#ABA786",
  base0B = "#87AB86",
  base0C = "#86ABAB",
  base0D = "#8695AB",
  base0E = "#9886AB",
  base0F = "#AB869C",
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

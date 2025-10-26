-- oceanic_light Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#26292f",
  darker_black = "#d1d7e2",
  black = "#d8dee9",
  black2 = "#cbd1dc",
  one_bg = "#cbd1dc",
  one_bg2 = "#c2c8d3",
  one_bg3 = "#bac0cb",
  grey = "#adb3be",
  grey_fg = "#a3a9b4",
  grey_fg2 = "#999faa",
  light_grey = "#9197a2",
  red = "#b40b11",
  baby_pink = "#ff8282",
  pink = "#ffa5a5",
  line = "#c6ccd7",
  green = "#5b9c90",
  vibrant_green = "#9fab4e",
  nord_blue = "#708db1",
  blue = "#526f93",
  yellow = "#fdb830",
  sun = "#ffc038",
  purple = "#896a98",
  dark_purple = "#6b4c7a",
  teal = "#1abc9c",
  orange = "#f99157",
  cyan = "#0b8ec6",
  statusline_bg = "#cfd5e0",
  lightbg = "#c2c8d3",
  pmenu_bg = "#5b9c90",
  folder_bg = "#526f93",
}

M.base_16 = {
  base00 = "#d8dee9",
  base01 = "#cdd3de",
  base02 = "#c0c5ce",
  base03 = "#a7adba",
  base04 = "#65737e",
  base05 = "#343d46",
  base06 = "#343d46",
  base07 = "#1b2b34",
  base08 = "#b40b11",
  base09 = "#b4713d",
  base0A = "#a48c32",
  base0B = "#869235",
  base0C = "#5b9c90",
  base0D = "#526f93",
  base0E = "#896a98",
  base0F = "#9a806d",
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

M.type = "light"

return M

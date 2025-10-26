-- steel_blue Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0B0E10",
  black = "#101418",
  black2 = "#141A1F",
  one_bg = "#2C3239",
  one_bg2 = "#424B56",
  one_bg3 = "#586473",
  grey = "#6E7E90",
  grey_fg = "#8B97A6",
  grey_fg2 = "#A8B1BC",
  light_grey = "#C5CBD2",
  red = "#5693DB",
  baby_pink = "#5EF0E8",
  pink = "#56DBD3",
  line = "#2C3239",
  green = "#DB5696",
  vibrant_green = "#FF67B4",
  nord_blue = "#B4C54D",
  blue = "#C8DB56",
  yellow = "#9156DB",
  sun = "#9F5EF0",
  purple = "#56DB5C",
  dark_purple = "#5EF065",
  teal = "#DB9E56",
  orange = "#5956DB",
  cyan = "#DB9E56",
  statusline_bg = "#2C3239",
  lightbg = "#586473",
  pmenu_bg = "#C8DB56",
  folder_bg = "#DB9E56",
}

M.base_16 = {
  base00 = "#101418",
  base01 = "#2C3239",
  base02 = "#586473",
  base03 = "#6E7E90",
  base04 = "#A8B1BC",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#5693DB",
  base09 = "#5956DB",
  base0A = "#9156DB",
  base0B = "#DB5696",
  base0C = "#DB9E56",
  base0D = "#C8DB56",
  base0E = "#56DB5C",
  base0F = "#56DBD3",
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

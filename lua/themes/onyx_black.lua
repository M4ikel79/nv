-- onyx_black Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0E0E0E",
  black = "#141414",
  black2 = "#1A1A1A",
  one_bg = "#333232",
  one_bg2 = "#4D4B4B",
  one_bg3 = "#676464",
  grey = "#807E7E",
  grey_fg = "#9A9797",
  grey_fg2 = "#B3B1B1",
  light_grey = "#CCCBCB",
  red = "#9E9393",
  baby_pink = "#ADA1A9",
  pink = "#9E939A",
  line = "#333232",
  green = "#949E93",
  vibrant_green = "#B1BDB0",
  nord_blue = "#84878E",
  blue = "#93979E",
  yellow = "#9E9D93",
  sun = "#ADACA1",
  purple = "#99939E",
  dark_purple = "#A8A1AD",
  teal = "#939E9E",
  orange = "#9E9893",
  cyan = "#939E9E",
  statusline_bg = "#333232",
  lightbg = "#676464",
  pmenu_bg = "#93979E",
  folder_bg = "#939E9E",
}

M.base_16 = {
  base00 = "#141414",
  base01 = "#333232",
  base02 = "#676464",
  base03 = "#807E7E",
  base04 = "#B3B1B1",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#9E9393",
  base09 = "#9E9893",
  base0A = "#9E9D93",
  base0B = "#949E93",
  base0C = "#939E9E",
  base0D = "#93979E",
  base0E = "#99939E",
  base0F = "#9E939A",
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

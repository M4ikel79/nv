-- scarlet_flame Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#120A09",
  black = "#1A0F0E",
  black2 = "#211312",
  one_bg = "#3C2B29",
  one_bg2 = "#5B413D",
  one_bg3 = "#795752",
  grey = "#976D67",
  grey_fg = "#AC8A85",
  grey_fg2 = "#C1A7A3",
  light_grey = "#D5C4C2",
  red = "#F94F38",
  baby_pink = "#FF3DA3",
  pink = "#F93895",
  line = "#3C2B29",
  green = "#38F94B",
  vibrant_green = "#43FF5A",
  nord_blue = "#3263E0",
  blue = "#386EF9",
  yellow = "#F6F938",
  sun = "#FFFF3D",
  purple = "#B038F9",
  dark_purple = "#C13DFF",
  teal = "#38E2F9",
  orange = "#F9AC38",
  cyan = "#38E2F9",
  statusline_bg = "#3C2B29",
  lightbg = "#795752",
  pmenu_bg = "#386EF9",
  folder_bg = "#38E2F9",
}

M.base_16 = {
  base00 = "#1A0F0E",
  base01 = "#3C2B29",
  base02 = "#795752",
  base03 = "#976D67",
  base04 = "#C1A7A3",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#F94F38",
  base09 = "#F9AC38",
  base0A = "#F6F938",
  base0B = "#38F94B",
  base0C = "#38E2F9",
  base0D = "#386EF9",
  base0E = "#B038F9",
  base0F = "#F93895",
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

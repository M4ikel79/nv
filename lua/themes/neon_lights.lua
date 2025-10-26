-- neon_lights Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#091210",
  black = "#0E1A18",
  black2 = "#12211F",
  one_bg = "#293C3A",
  one_bg2 = "#3D5B57",
  one_bg3 = "#527974",
  grey = "#679791",
  grey_fg = "#85ACA7",
  grey_fg2 = "#A3C1BD",
  light_grey = "#C2D5D3",
  red = "#38F9E2",
  baby_pink = "#3DFF79",
  pink = "#38F96E",
  line = "#293C3A",
  green = "#DE38F9",
  vibrant_green = "#FF43FF",
  nord_blue = "#E08632",
  blue = "#F99538",
  yellow = "#3862F9",
  sun = "#3D6BFF",
  purple = "#B0F938",
  dark_purple = "#C1FF3D",
  teal = "#F9384F",
  orange = "#38B4F9",
  cyan = "#F9384F",
  statusline_bg = "#293C3A",
  lightbg = "#527974",
  pmenu_bg = "#F99538",
  folder_bg = "#F9384F",
}

M.base_16 = {
  base00 = "#0E1A18",
  base01 = "#293C3A",
  base02 = "#527974",
  base03 = "#679791",
  base04 = "#A3C1BD",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#38F9E2",
  base09 = "#38B4F9",
  base0A = "#3862F9",
  base0B = "#DE38F9",
  base0C = "#F9384F",
  base0D = "#F99538",
  base0E = "#B0F938",
  base0F = "#38F96E",
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

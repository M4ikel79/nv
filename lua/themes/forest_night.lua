-- forest_night Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0B100C",
  black = "#101812",
  black2 = "#141F17",
  one_bg = "#2C392F",
  one_bg2 = "#435547",
  one_bg3 = "#59725F",
  grey = "#708E76",
  grey_fg = "#8CA592",
  grey_fg2 = "#A9BBAD",
  light_grey = "#C5D2C8",
  red = "#5BD676",
  baby_pink = "#97EB64",
  pink = "#8AD65B",
  line = "#2C392F",
  green = "#745BD6",
  vibrant_green = "#8B6DFF",
  nord_blue = "#C05165",
  blue = "#D65B71",
  yellow = "#5BC7D6",
  sun = "#64DAEB",
  purple = "#D6B35B",
  dark_purple = "#EBC464",
  teal = "#D65BBB",
  orange = "#5BD6B1",
  cyan = "#D65BBB",
  statusline_bg = "#2C392F",
  lightbg = "#59725F",
  pmenu_bg = "#D65B71",
  folder_bg = "#D65BBB",
}

M.base_16 = {
  base00 = "#101812",
  base01 = "#2C392F",
  base02 = "#59725F",
  base03 = "#708E76",
  base04 = "#A9BBAD",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#5BD676",
  base09 = "#5BD6B1",
  base0A = "#5BC7D6",
  base0B = "#745BD6",
  base0C = "#D65BBB",
  base0D = "#D65B71",
  base0E = "#D6B35B",
  base0F = "#8AD65B",
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

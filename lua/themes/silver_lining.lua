-- silver_lining Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0E0D0D",
  black = "#151313",
  black2 = "#1B1818",
  one_bg = "#353030",
  one_bg2 = "#4F4949",
  one_bg3 = "#6A6161",
  grey = "#847A7A",
  grey_fg = "#9D9494",
  grey_fg2 = "#B5AFAF",
  light_grey = "#CEC9C9",
  red = "#AD8484",
  baby_pink = "#BE91AC",
  pink = "#AD849D",
  line = "#353030",
  green = "#85AD84",
  vibrant_green = "#9FCF9E",
  nord_blue = "#76859B",
  blue = "#8494AD",
  yellow = "#ADA984",
  sun = "#BEB991",
  purple = "#9884AD",
  dark_purple = "#A791BE",
  teal = "#84ADAD",
  orange = "#AD9884",
  cyan = "#84ADAD",
  statusline_bg = "#353030",
  lightbg = "#6A6161",
  pmenu_bg = "#8494AD",
  folder_bg = "#84ADAD",
}

M.base_16 = {
  base00 = "#151313",
  base01 = "#353030",
  base02 = "#6A6161",
  base03 = "#847A7A",
  base04 = "#B5AFAF",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#AD8484",
  base09 = "#AD9884",
  base0A = "#ADA984",
  base0B = "#85AD84",
  base0C = "#84ADAD",
  base0D = "#8494AD",
  base0E = "#9884AD",
  base0F = "#AD849D",
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

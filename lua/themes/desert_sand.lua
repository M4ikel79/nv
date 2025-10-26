-- desert_sand Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#100E0B",
  black = "#171511",
  black2 = "#1D1B16",
  one_bg = "#38352D",
  one_bg2 = "#544F44",
  one_bg3 = "#706A5B",
  grey = "#8C8572",
  grey_fg = "#A39D8E",
  grey_fg2 = "#BAB5AA",
  light_grey = "#D1CEC6",
  red = "#CCAF65",
  baby_pink = "#E07D6F",
  pink = "#CC7265",
  line = "#38352D",
  green = "#65CCAD",
  vibrant_green = "#79F4CF",
  nord_blue = "#785AB7",
  blue = "#8665CC",
  yellow = "#8CCC65",
  sun = "#9AE06F",
  purple = "#CC65B5",
  dark_purple = "#E06FC7",
  teal = "#6582CC",
  orange = "#B7CC65",
  cyan = "#6582CC",
  statusline_bg = "#38352D",
  lightbg = "#706A5B",
  pmenu_bg = "#8665CC",
  folder_bg = "#6582CC",
}

M.base_16 = {
  base00 = "#171511",
  base01 = "#38352D",
  base02 = "#706A5B",
  base03 = "#8C8572",
  base04 = "#BAB5AA",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#CCAF65",
  base09 = "#B7CC65",
  base0A = "#8CCC65",
  base0B = "#65CCAD",
  base0C = "#6582CC",
  base0D = "#8665CC",
  base0E = "#CC65B5",
  base0F = "#CC7265",
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

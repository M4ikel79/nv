-- olive_branch Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0F100B",
  black = "#161711",
  black2 = "#1C1D16",
  one_bg = "#36382D",
  one_bg2 = "#515444",
  one_bg3 = "#6C705B",
  grey = "#878C72",
  grey_fg = "#9FA38E",
  grey_fg2 = "#B7BAAA",
  light_grey = "#CFD1C6",
  red = "#B7CC65",
  baby_pink = "#E0B36F",
  pink = "#CCA365",
  line = "#36382D",
  green = "#65B9CC",
  vibrant_green = "#79DEF4",
  nord_blue = "#A45AB7",
  blue = "#B765CC",
  yellow = "#65CC70",
  sun = "#6FE07B",
  purple = "#CC6584",
  dark_purple = "#E06F91",
  teal = "#7A65CC",
  orange = "#86CC65",
  cyan = "#7A65CC",
  statusline_bg = "#36382D",
  lightbg = "#6C705B",
  pmenu_bg = "#B765CC",
  folder_bg = "#7A65CC",
}

M.base_16 = {
  base00 = "#161711",
  base01 = "#36382D",
  base02 = "#6C705B",
  base03 = "#878C72",
  base04 = "#B7BAAA",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#B7CC65",
  base09 = "#86CC65",
  base0A = "#65CC70",
  base0B = "#65B9CC",
  base0C = "#7A65CC",
  base0D = "#B765CC",
  base0E = "#CC6584",
  base0F = "#CCA365",
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

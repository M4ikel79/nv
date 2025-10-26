-- sage_green Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0C100B",
  black = "#121711",
  black2 = "#171D16",
  one_bg = "#30372E",
  one_bg2 = "#485345",
  one_bg3 = "#606F5C",
  grey = "#788A74",
  grey_fg = "#93A28F",
  grey_fg2 = "#AEB9AB",
  light_grey = "#C9D0C7",
  red = "#7DC66B",
  baby_pink = "#C6D975",
  pink = "#B4C66B",
  line = "#30372E",
  green = "#6B7FC6",
  vibrant_green = "#8098ED",
  nord_blue = "#B26091",
  blue = "#C66BA2",
  yellow = "#6BC6AB",
  sun = "#75D9BC",
  purple = "#C6866B",
  dark_purple = "#D99375",
  teal = "#B46BC6",
  orange = "#6BC684",
  cyan = "#B46BC6",
  statusline_bg = "#30372E",
  lightbg = "#606F5C",
  pmenu_bg = "#C66BA2",
  folder_bg = "#B46BC6",
}

M.base_16 = {
  base00 = "#121711",
  base01 = "#30372E",
  base02 = "#606F5C",
  base03 = "#788A74",
  base04 = "#AEB9AB",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#7DC66B",
  base09 = "#6BC684",
  base0A = "#6BC6AB",
  base0B = "#6B7FC6",
  base0C = "#B46BC6",
  base0D = "#C66BA2",
  base0E = "#C6866B",
  base0F = "#B4C66B",
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

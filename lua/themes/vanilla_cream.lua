-- vanilla_cream Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#14141E",
  darker_black = "#AAAAA8",
  black = "#F3F3F0",
  black2 = "#FFFFFF",
  one_bg = "#CFCEC8",
  one_bg2 = "#B7B6AD",
  one_bg3 = "#A09D91",
  grey = "#888576",
  grey_fg = "#6D6A5E",
  grey_fg2 = "#515047",
  light_grey = "#36352F",
  red = "#BCB175",
  baby_pink = "#CE9380",
  pink = "#BC8675",
  line = "#CFCEC8",
  green = "#75BCAF",
  vibrant_green = "#8CE1D2",
  nord_blue = "#8569A9",
  blue = "#9475BC",
  yellow = "#87BC75",
  sun = "#94CE80",
  purple = "#BC75A4",
  dark_purple = "#CE80B4",
  teal = "#7580BC",
  orange = "#A5BC75",
  cyan = "#7580BC",
  statusline_bg = "#CFCEC8",
  lightbg = "#A09D91",
  pmenu_bg = "#9475BC",
  folder_bg = "#7580BC",
}

M.base_16 = {
  base00 = "#F3F3F0",
  base01 = "#CFCEC8",
  base02 = "#A09D91",
  base03 = "#888576",
  base04 = "#515047",
  base05 = "#14141E",
  base06 = "#15151F",
  base07 = "#161621",
  base08 = "#BCB175",
  base09 = "#A5BC75",
  base0A = "#87BC75",
  base0B = "#75BCAF",
  base0C = "#7580BC",
  base0D = "#9475BC",
  base0E = "#BC75A4",
  base0F = "#BC8675",
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

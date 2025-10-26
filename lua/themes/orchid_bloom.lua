-- orchid_bloom Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#100A10",
  black = "#180F18",
  black2 = "#1F131F",
  one_bg = "#392B3A",
  one_bg2 = "#564157",
  one_bg3 = "#725675",
  grey = "#8F6C92",
  grey_fg = "#A589A8",
  grey_fg2 = "#BCA7BD",
  light_grey = "#D2C4D3",
  red = "#D94CE5",
  baby_pink = "#8953FB",
  pink = "#7D4CE5",
  line = "#392B3A",
  green = "#E5D64C",
  vibrant_green = "#FFFF5B",
  nord_blue = "#44CE8C",
  blue = "#4CE59C",
  yellow = "#E54C68",
  sun = "#FB5372",
  purple = "#4CA5E5",
  dark_purple = "#53B5FB",
  teal = "#58E54C",
  orange = "#E54CA8",
  cyan = "#58E54C",
  statusline_bg = "#392B3A",
  lightbg = "#725675",
  pmenu_bg = "#4CE59C",
  folder_bg = "#58E54C",
}

M.base_16 = {
  base00 = "#180F18",
  base01 = "#392B3A",
  base02 = "#725675",
  base03 = "#8F6C92",
  base04 = "#BCA7BD",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#D94CE5",
  base09 = "#E54CA8",
  base0A = "#E54C68",
  base0B = "#E5D64C",
  base0C = "#58E54C",
  base0D = "#4CE59C",
  base0E = "#4CA5E5",
  base0F = "#7D4CE5",
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

-- copper_canyon Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#110D0A",
  black = "#19130F",
  black2 = "#201813",
  one_bg = "#3B302A",
  one_bg2 = "#584940",
  one_bg3 = "#766155",
  grey = "#93796B",
  grey_fg = "#A99488",
  grey_fg2 = "#BEAFA6",
  light_grey = "#D4C9C3",
  red = "#EA8247",
  baby_pink = "#FF4E79",
  pink = "#EA476E",
  line = "#3B302A",
  green = "#47EA7E",
  vibrant_green = "#55FF97",
  nord_blue = "#3F45D2",
  blue = "#474DEA",
  yellow = "#C0EA47",
  sun = "#D3FF4E",
  purple = "#D347EA",
  dark_purple = "#E84EFF",
  teal = "#47AFEA",
  orange = "#EAD047",
  cyan = "#47AFEA",
  statusline_bg = "#3B302A",
  lightbg = "#766155",
  pmenu_bg = "#474DEA",
  folder_bg = "#47AFEA",
}

M.base_16 = {
  base00 = "#19130F",
  base01 = "#3B302A",
  base02 = "#766155",
  base03 = "#93796B",
  base04 = "#BEAFA6",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#EA8247",
  base09 = "#EAD047",
  base0A = "#C0EA47",
  base0B = "#47EA7E",
  base0C = "#47AFEA",
  base0D = "#474DEA",
  base0E = "#D347EA",
  base0F = "#EA476E",
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

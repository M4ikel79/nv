-- rose_quartz Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#100B0C",
  black = "#181012",
  black2 = "#1F1417",
  one_bg = "#392C30",
  one_bg2 = "#554348",
  one_bg3 = "#725961",
  grey = "#8E7079",
  grey_fg = "#A58C94",
  grey_fg2 = "#BBA9AE",
  light_grey = "#D2C5C9",
  red = "#D65B80",
  baby_pink = "#EB64DD",
  pink = "#D65BC9",
  line = "#392C30",
  green = "#82D65B",
  vibrant_green = "#9CFF6D",
  nord_blue = "#519FC0",
  blue = "#5BB1D6",
  yellow = "#D6A55B",
  sun = "#EBB564",
  purple = "#745BD6",
  dark_purple = "#7F64EB",
  teal = "#5BD6B1",
  orange = "#D6715B",
  cyan = "#5BD6B1",
  statusline_bg = "#392C30",
  lightbg = "#725961",
  pmenu_bg = "#5BB1D6",
  folder_bg = "#5BD6B1",
}

M.base_16 = {
  base00 = "#181012",
  base01 = "#392C30",
  base02 = "#725961",
  base03 = "#8E7079",
  base04 = "#BBA9AE",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#D65B80",
  base09 = "#D6715B",
  base0A = "#D6A55B",
  base0B = "#82D65B",
  base0C = "#5BD6B1",
  base0D = "#5BB1D6",
  base0E = "#745BD6",
  base0F = "#D65BC9",
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

-- chocolate_mint Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0B100C",
  black = "#101812",
  black2 = "#141F17",
  one_bg = "#2C3930",
  one_bg2 = "#435548",
  one_bg3 = "#597260",
  grey = "#708E78",
  grey_fg = "#8CA593",
  grey_fg2 = "#A9BBAE",
  light_grey = "#C5D2C9",
  red = "#5BD67E",
  baby_pink = "#8FEB64",
  pink = "#82D65B",
  line = "#2C3930",
  green = "#7B5BD6",
  vibrant_green = "#936DFF",
  nord_blue = "#C0515F",
  blue = "#D65B6A",
  yellow = "#5BC0D6",
  sun = "#64D3EB",
  purple = "#D6BB5B",
  dark_purple = "#EBCD64",
  teal = "#D65BB3",
  orange = "#5BD6B8",
  cyan = "#D65BB3",
  statusline_bg = "#2C3930",
  lightbg = "#597260",
  pmenu_bg = "#D65B6A",
  folder_bg = "#D65BB3",
}

M.base_16 = {
  base00 = "#101812",
  base01 = "#2C3930",
  base02 = "#597260",
  base03 = "#708E78",
  base04 = "#A9BBAE",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#5BD67E",
  base09 = "#5BD6B8",
  base0A = "#5BC0D6",
  base0B = "#7B5BD6",
  base0C = "#D65BB3",
  base0D = "#D65B6A",
  base0E = "#D6BB5B",
  base0F = "#82D65B",
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

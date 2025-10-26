-- mint_chocolate Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0B100E",
  black = "#101814",
  black2 = "#141F1A",
  one_bg = "#2B3A33",
  one_bg2 = "#41574C",
  one_bg3 = "#577466",
  grey = "#6D9180",
  grey_fg = "#8AA799",
  grey_fg2 = "#A7BDB2",
  light_grey = "#C4D3CC",
  red = "#51E09B",
  baby_pink = "#66F659",
  pink = "#5DE051",
  line = "#2B3A33",
  green = "#9851E0",
  vibrant_green = "#B661FF",
  nord_blue = "#C95848",
  blue = "#E06251",
  yellow = "#51A4E0",
  sun = "#59B4F6",
  purple = "#DDE051",
  dark_purple = "#F3F659",
  teal = "#E05196",
  orange = "#51E0E0",
  cyan = "#E05196",
  statusline_bg = "#2B3A33",
  lightbg = "#577466",
  pmenu_bg = "#E06251",
  folder_bg = "#E05196",
}

M.base_16 = {
  base00 = "#101814",
  base01 = "#2B3A33",
  base02 = "#577466",
  base03 = "#6D9180",
  base04 = "#A7BDB2",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#51E09B",
  base09 = "#51E0E0",
  base0A = "#51A4E0",
  base0B = "#9851E0",
  base0C = "#E05196",
  base0D = "#E06251",
  base0E = "#DDE051",
  base0F = "#5DE051",
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

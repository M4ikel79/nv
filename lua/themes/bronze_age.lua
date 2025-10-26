-- bronze_age Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#100D0B",
  black = "#181310",
  black2 = "#1F1814",
  one_bg = "#3A312B",
  one_bg2 = "#574A41",
  one_bg3 = "#746357",
  grey = "#917C6D",
  grey_fg = "#A7968A",
  grey_fg2 = "#BDB0A7",
  light_grey = "#D3CAC4",
  red = "#E08D51",
  baby_pink = "#F65975",
  pink = "#E0516B",
  line = "#3A312B",
  green = "#51E08A",
  vibrant_green = "#61FFA5",
  nord_blue = "#4B48C9",
  blue = "#5451E0",
  yellow = "#B2E051",
  sun = "#C3F659",
  purple = "#D451E0",
  dark_purple = "#E959F6",
  teal = "#51A4E0",
  orange = "#E0D251",
  cyan = "#51A4E0",
  statusline_bg = "#3A312B",
  lightbg = "#746357",
  pmenu_bg = "#5451E0",
  folder_bg = "#51A4E0",
}

M.base_16 = {
  base00 = "#181310",
  base01 = "#3A312B",
  base02 = "#746357",
  base03 = "#917C6D",
  base04 = "#BDB0A7",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#E08D51",
  base09 = "#E0D251",
  base0A = "#B2E051",
  base0B = "#51E08A",
  base0C = "#51A4E0",
  base0D = "#5451E0",
  base0E = "#D451E0",
  base0F = "#E0516B",
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

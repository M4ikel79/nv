-- jade_temple Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0B100D",
  black = "#101813",
  black2 = "#141F18",
  one_bg = "#2B3A31",
  one_bg2 = "#41574A",
  one_bg3 = "#577463",
  grey = "#6D917B",
  grey_fg = "#8AA796",
  grey_fg2 = "#A7BDB0",
  light_grey = "#C4D3CA",
  red = "#51E08A",
  baby_pink = "#79F659",
  pink = "#6EE051",
  line = "#2B3A31",
  green = "#8751E0",
  vibrant_green = "#A261FF",
  nord_blue = "#C94848",
  blue = "#E05151",
  yellow = "#51B5E0",
  sun = "#59C7F6",
  purple = "#E0D251",
  dark_purple = "#F6E759",
  teal = "#E051A7",
  orange = "#51E0CF",
  cyan = "#E051A7",
  statusline_bg = "#2B3A31",
  lightbg = "#577463",
  pmenu_bg = "#E05151",
  folder_bg = "#E051A7",
}

M.base_16 = {
  base00 = "#101813",
  base01 = "#2B3A31",
  base02 = "#577463",
  base03 = "#6D917B",
  base04 = "#A7BDB0",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#51E08A",
  base09 = "#51E0CF",
  base0A = "#51B5E0",
  base0B = "#8751E0",
  base0C = "#E051A7",
  base0D = "#E05151",
  base0E = "#E0D251",
  base0F = "#6EE051",
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

-- moss_garden Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0B100B",
  black = "#111711",
  black2 = "#161D16",
  one_bg = "#2E382D",
  one_bg2 = "#455444",
  one_bg3 = "#5C715A",
  grey = "#738D71",
  grey_fg = "#8FA48D",
  grey_fg2 = "#ABBAAA",
  light_grey = "#C7D1C6",
  red = "#69D160",
  baby_pink = "#BEE569",
  pink = "#ADD160",
  line = "#2E382D",
  green = "#606CD1",
  vibrant_green = "#7381FA",
  nord_blue = "#BC5687",
  blue = "#D16096",
  yellow = "#60D1BC",
  sun = "#69E5CE",
  purple = "#D19060",
  dark_purple = "#E59E69",
  teal = "#C860D1",
  orange = "#60D18D",
  cyan = "#C860D1",
  statusline_bg = "#2E382D",
  lightbg = "#5C715A",
  pmenu_bg = "#D16096",
  folder_bg = "#C860D1",
}

M.base_16 = {
  base00 = "#111711",
  base01 = "#2E382D",
  base02 = "#5C715A",
  base03 = "#738D71",
  base04 = "#ABBAAA",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#69D160",
  base09 = "#60D18D",
  base0A = "#60D1BC",
  base0B = "#606CD1",
  base0C = "#C860D1",
  base0D = "#D16096",
  base0E = "#D19060",
  base0F = "#ADD160",
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

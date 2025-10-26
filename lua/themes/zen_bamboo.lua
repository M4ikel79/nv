-- zen_bamboo Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0B100B",
  black = "#111711",
  black2 = "#161D16",
  one_bg = "#2D382E",
  one_bg2 = "#445445",
  one_bg3 = "#5B705C",
  grey = "#728C73",
  grey_fg = "#8EA38F",
  grey_fg2 = "#AABAAB",
  light_grey = "#C6D1C7",
  red = "#65CC6A",
  baby_pink = "#AEE06F",
  pink = "#9FCC65",
  line = "#2D382E",
  green = "#6865CC",
  vibrant_green = "#7C79F4",
  nord_blue = "#B75A7C",
  blue = "#CC658A",
  yellow = "#65CCC5",
  sun = "#6FE0D8",
  purple = "#CC9D65",
  dark_purple = "#E0AC6F",
  teal = "#CC65C7",
  orange = "#65CC9B",
  cyan = "#CC65C7",
  statusline_bg = "#2D382E",
  lightbg = "#5B705C",
  pmenu_bg = "#CC658A",
  folder_bg = "#CC65C7",
}

M.base_16 = {
  base00 = "#111711",
  base01 = "#2D382E",
  base02 = "#5B705C",
  base03 = "#728C73",
  base04 = "#AABAAB",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#65CC6A",
  base09 = "#65CC9B",
  base0A = "#65CCC5",
  base0B = "#6865CC",
  base0C = "#CC65C7",
  base0D = "#CC658A",
  base0E = "#CC9D65",
  base0F = "#9FCC65",
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

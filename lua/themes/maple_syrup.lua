-- maple_syrup Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#100E0B",
  black = "#181410",
  black2 = "#1F1A14",
  one_bg = "#39322C",
  one_bg2 = "#554C43",
  one_bg3 = "#726559",
  grey = "#8E7E70",
  grey_fg = "#A5988C",
  grey_fg2 = "#BBB2A9",
  light_grey = "#D2CBC5",
  red = "#D6965B",
  baby_pink = "#EB6474",
  pink = "#D65B6A",
  line = "#39322C",
  green = "#5BD694",
  vibrant_green = "#6DFFB1",
  nord_blue = "#5A51C0",
  blue = "#655BD6",
  yellow = "#A7D65B",
  sun = "#B7EB64",
  purple = "#D35BD6",
  dark_purple = "#E864EB",
  teal = "#5B9BD6",
  orange = "#D6D15B",
  cyan = "#5B9BD6",
  statusline_bg = "#39322C",
  lightbg = "#726559",
  pmenu_bg = "#655BD6",
  folder_bg = "#5B9BD6",
}

M.base_16 = {
  base00 = "#181410",
  base01 = "#39322C",
  base02 = "#726559",
  base03 = "#8E7E70",
  base04 = "#BBB2A9",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#D6965B",
  base09 = "#D6D15B",
  base0A = "#A7D65B",
  base0B = "#5BD694",
  base0C = "#5B9BD6",
  base0D = "#655BD6",
  base0E = "#D35BD6",
  base0F = "#D65B6A",
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

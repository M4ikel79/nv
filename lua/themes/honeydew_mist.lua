-- honeydew_mist Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0D100B",
  black = "#131711",
  black2 = "#181D16",
  one_bg = "#30382D",
  one_bg2 = "#495444",
  one_bg3 = "#61715A",
  grey = "#7A8D71",
  grey_fg = "#94A48D",
  grey_fg2 = "#AFBAAA",
  light_grey = "#C9D1C6",
  red = "#84D160",
  baby_pink = "#DCE569",
  pink = "#C8D160",
  line = "#30382D",
  green = "#6087D1",
  vibrant_green = "#73A2FA",
  nord_blue = "#BC569F",
  blue = "#D160B1",
  yellow = "#60D1A1",
  sun = "#69E5B1",
  purple = "#D17560",
  dark_purple = "#E58069",
  teal = "#AD60D1",
  orange = "#60D172",
  cyan = "#AD60D1",
  statusline_bg = "#30382D",
  lightbg = "#61715A",
  pmenu_bg = "#D160B1",
  folder_bg = "#AD60D1",
}

M.base_16 = {
  base00 = "#131711",
  base01 = "#30382D",
  base02 = "#61715A",
  base03 = "#7A8D71",
  base04 = "#AFBAAA",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#84D160",
  base09 = "#60D172",
  base0A = "#60D1A1",
  base0B = "#6087D1",
  base0C = "#AD60D1",
  base0D = "#D160B1",
  base0E = "#D17560",
  base0F = "#C8D160",
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

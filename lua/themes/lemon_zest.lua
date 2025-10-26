-- lemon_zest Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#111109",
  black = "#19190E",
  black2 = "#202012",
  one_bg = "#3C3B29",
  one_bg2 = "#5A593E",
  one_bg3 = "#787653",
  grey = "#969468",
  grey_fg = "#ABA986",
  grey_fg2 = "#C0BFA4",
  light_grey = "#D5D4C2",
  red = "#F4ED3D",
  baby_pink = "#FF8B43",
  pink = "#F47F3D",
  line = "#3C3B29",
  green = "#3DF4E9",
  vibrant_green = "#49FFFF",
  nord_blue = "#9336DB",
  blue = "#A43DF4",
  yellow = "#56F43D",
  sun = "#5EFF43",
  purple = "#F43DA0",
  dark_purple = "#FF43B0",
  teal = "#3D44F4",
  orange = "#A4F43D",
  cyan = "#3D44F4",
  statusline_bg = "#3C3B29",
  lightbg = "#787653",
  pmenu_bg = "#A43DF4",
  folder_bg = "#3D44F4",
}

M.base_16 = {
  base00 = "#19190E",
  base01 = "#3C3B29",
  base02 = "#787653",
  base03 = "#969468",
  base04 = "#C0BFA4",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#F4ED3D",
  base09 = "#A4F43D",
  base0A = "#56F43D",
  base0B = "#3DF4E9",
  base0C = "#3D44F4",
  base0D = "#A43DF4",
  base0E = "#F43DA0",
  base0F = "#F47F3D",
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

-- seafoam_green Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0B100E",
  black = "#101815",
  black2 = "#141F1B",
  one_bg = "#2C3935",
  one_bg2 = "#425650",
  one_bg3 = "#58736B",
  grey = "#6E9086",
  grey_fg = "#8BA69E",
  grey_fg2 = "#A8BCB6",
  light_grey = "#C5D2CE",
  red = "#56DBB3",
  baby_pink = "#5EF06C",
  pink = "#56DB63",
  line = "#2C3935",
  green = "#B056DB",
  vibrant_green = "#D367FF",
  nord_blue = "#C5714D",
  blue = "#DB7E56",
  yellow = "#568BDB",
  sun = "#5E98F0",
  purple = "#C0DB56",
  dark_purple = "#D3F05E",
  teal = "#DB567E",
  orange = "#56C3DB",
  cyan = "#DB567E",
  statusline_bg = "#2C3935",
  lightbg = "#58736B",
  pmenu_bg = "#DB7E56",
  folder_bg = "#DB567E",
}

M.base_16 = {
  base00 = "#101815",
  base01 = "#2C3935",
  base02 = "#58736B",
  base03 = "#6E9086",
  base04 = "#A8BCB6",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#56DBB3",
  base09 = "#56C3DB",
  base0A = "#568BDB",
  base0B = "#B056DB",
  base0C = "#DB567E",
  base0D = "#DB7E56",
  base0E = "#C0DB56",
  base0F = "#56DB63",
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

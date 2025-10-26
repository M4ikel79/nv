-- indigo_night Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0B0A10",
  black = "#100F18",
  black2 = "#14131F",
  one_bg = "#2C2B3A",
  one_bg2 = "#424157",
  one_bg3 = "#595675",
  grey = "#6F6C92",
  grey_fg = "#8C89A8",
  grey_fg2 = "#A8A7BD",
  light_grey = "#C5C4D3",
  red = "#584CE5",
  baby_pink = "#53ABFB",
  pink = "#4C9CE5",
  line = "#2C2B3A",
  green = "#E5554C",
  vibrant_green = "#FF665B",
  nord_blue = "#70CE44",
  blue = "#7DE54C",
  yellow = "#E24CE5",
  sun = "#F853FB",
  purple = "#4CE5A5",
  dark_purple = "#53FBB5",
  teal = "#D9E54C",
  orange = "#A24CE5",
  cyan = "#D9E54C",
  statusline_bg = "#2C2B3A",
  lightbg = "#595675",
  pmenu_bg = "#7DE54C",
  folder_bg = "#D9E54C",
}

M.base_16 = {
  base00 = "#100F18",
  base01 = "#2C2B3A",
  base02 = "#595675",
  base03 = "#6F6C92",
  base04 = "#A8A7BD",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#584CE5",
  base09 = "#A24CE5",
  base0A = "#E24CE5",
  base0B = "#E5554C",
  base0C = "#D9E54C",
  base0D = "#7DE54C",
  base0E = "#4CE5A5",
  base0F = "#4C9CE5",
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

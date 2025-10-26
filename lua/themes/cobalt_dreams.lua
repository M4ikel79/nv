-- cobalt_dreams Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0A0C11",
  black = "#0F1219",
  black2 = "#131720",
  one_bg = "#2A2F3B",
  one_bg2 = "#404758",
  one_bg3 = "#555E76",
  grey = "#6B7693",
  grey_fg = "#8891A9",
  grey_fg2 = "#A6ADBE",
  light_grey = "#C3C8D4",
  red = "#4775EA",
  baby_pink = "#4EECFF",
  pink = "#47D7EA",
  line = "#2A2F3B",
  green = "#EA4778",
  vibrant_green = "#FF5590",
  nord_blue = "#A3D23F",
  blue = "#B6EA47",
  yellow = "#AC47EA",
  sun = "#BD4EFF",
  purple = "#47EA6B",
  dark_purple = "#4EFF75",
  teal = "#EABC47",
  orange = "#6847EA",
  cyan = "#EABC47",
  statusline_bg = "#2A2F3B",
  lightbg = "#555E76",
  pmenu_bg = "#B6EA47",
  folder_bg = "#EABC47",
}

M.base_16 = {
  base00 = "#0F1219",
  base01 = "#2A2F3B",
  base02 = "#555E76",
  base03 = "#6B7693",
  base04 = "#A6ADBE",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#4775EA",
  base09 = "#6847EA",
  base0A = "#AC47EA",
  base0B = "#EA4778",
  base0C = "#EABC47",
  base0D = "#B6EA47",
  base0E = "#47EA6B",
  base0F = "#47D7EA",
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

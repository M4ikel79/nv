-- sapphire_sky Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#F0F0FA",
  darker_black = "#0A0D11",
  black = "#0F1319",
  black2 = "#131820",
  one_bg = "#2A313B",
  one_bg2 = "#404A58",
  one_bg3 = "#556276",
  grey = "#6B7B93",
  grey_fg = "#8895A9",
  grey_fg2 = "#A6B0BE",
  light_grey = "#C3CAD4",
  red = "#4788EA",
  baby_pink = "#4EFFFF",
  pink = "#47EAEA",
  line = "#2A313B",
  green = "#EA478B",
  vibrant_green = "#FF55A6",
  nord_blue = "#B4D23F",
  blue = "#C9EA47",
  yellow = "#9847EA",
  sun = "#A74EFF",
  purple = "#47EA57",
  dark_purple = "#4EFF5F",
  teal = "#EAA947",
  orange = "#5447EA",
  cyan = "#EAA947",
  statusline_bg = "#2A313B",
  lightbg = "#556276",
  pmenu_bg = "#C9EA47",
  folder_bg = "#EAA947",
}

M.base_16 = {
  base00 = "#0F1319",
  base01 = "#2A313B",
  base02 = "#556276",
  base03 = "#6B7B93",
  base04 = "#A6B0BE",
  base05 = "#F0F0FA",
  base06 = "#FCFCFF",
  base07 = "#FFFFFF",
  base08 = "#4788EA",
  base09 = "#5447EA",
  base0A = "#9847EA",
  base0B = "#EA478B",
  base0C = "#EAA947",
  base0D = "#C9EA47",
  base0E = "#47EA57",
  base0F = "#47EAEA",
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

-- ivory_coast Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#14141E",
  darker_black = "#AAAAA8",
  black = "#F3F3F1",
  black2 = "#FFFFFF",
  one_bg = "#CFCEC8",
  one_bg2 = "#B7B6AD",
  one_bg3 = "#9F9D92",
  grey = "#878577",
  grey_fg = "#6C6A5F",
  grey_fg2 = "#515047",
  light_grey = "#36352F",
  red = "#B7B17A",
  baby_pink = "#C99A86",
  pink = "#B78C7A",
  line = "#CFCEC8",
  green = "#7AB7B0",
  vibrant_green = "#92DBD3",
  nord_blue = "#886DA4",
  blue = "#987AB7",
  yellow = "#86B77A",
  sun = "#93C986",
  purple = "#B77A9F",
  dark_purple = "#C986AE",
  teal = "#7A80B7",
  orange = "#A0B77A",
  cyan = "#7A80B7",
  statusline_bg = "#CFCEC8",
  lightbg = "#9F9D92",
  pmenu_bg = "#987AB7",
  folder_bg = "#7A80B7",
}

M.base_16 = {
  base00 = "#F3F3F1",
  base01 = "#CFCEC8",
  base02 = "#9F9D92",
  base03 = "#878577",
  base04 = "#515047",
  base05 = "#14141E",
  base06 = "#15151F",
  base07 = "#161621",
  base08 = "#B7B17A",
  base09 = "#A0B77A",
  base0A = "#86B77A",
  base0B = "#7AB7B0",
  base0C = "#7A80B7",
  base0D = "#987AB7",
  base0E = "#B77A9F",
  base0F = "#B78C7A",
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

M.type = "light"

return M

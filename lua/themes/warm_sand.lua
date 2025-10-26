-- warm_sand Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#14141E",
  darker_black = "#AAAAA8",
  black = "#F3F3F0",
  black2 = "#FFFFFF",
  one_bg = "#D0CEC7",
  one_bg2 = "#B9B6AB",
  one_bg3 = "#A29E8F",
  grey = "#8A8574",
  grey_fg = "#6F6B5C",
  grey_fg2 = "#535045",
  light_grey = "#37352E",
  red = "#C6B26B",
  baby_pink = "#D98775",
  pink = "#C67B6B",
  line = "#D0CEC7",
  green = "#6BC6B0",
  vibrant_green = "#80EDD3",
  nord_blue = "#7E60B2",
  blue = "#8D6BC6",
  yellow = "#88C66B",
  sun = "#95D975",
  purple = "#C66BAD",
  dark_purple = "#D975BE",
  teal = "#6B7FC6",
  orange = "#AFC66B",
  cyan = "#6B7FC6",
  statusline_bg = "#D0CEC7",
  lightbg = "#A29E8F",
  pmenu_bg = "#8D6BC6",
  folder_bg = "#6B7FC6",
}

M.base_16 = {
  base00 = "#F3F3F0",
  base01 = "#D0CEC7",
  base02 = "#A29E8F",
  base03 = "#8A8574",
  base04 = "#535045",
  base05 = "#14141E",
  base06 = "#15151F",
  base07 = "#161621",
  base08 = "#C6B26B",
  base09 = "#AFC66B",
  base0A = "#88C66B",
  base0B = "#6BC6B0",
  base0C = "#6B7FC6",
  base0D = "#8D6BC6",
  base0E = "#C66BAD",
  base0F = "#C67B6B",
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

-- monokai_pro Theme
-- NvChad theme implementation
local M = {}

M.base_30 = {
  white = "#f8f8f2",
  darker_black = "#1e1f1c",
  black = "#272822",
  black2 = "#2d2e28",
  one_bg = "#34352f",
  one_bg2 = "#3e3d32",
  one_bg3 = "#414339",
  grey = "#464741",
  grey_fg = "#75715e",
  grey_fg2 = "#90908a",
  light_grey = "#c2c2bf",
  red = "#f92672",
  baby_pink = "#ff6188",
  pink = "#f92672",
  line = "#34352f",
  green = "#a6e22e",
  vibrant_green = "#86b42b",
  nord_blue = "#66d9ef",
  blue = "#6a7ec8",
  yellow = "#e6db74",
  sun = "#e2e22e",
  purple = "#ae81ff",
  dark_purple = "#8c6bc8",
  teal = "#56adbc",
  orange = "#fd971f",
  cyan = "#66d9ef",
  statusline_bg = "#414339",
  lightbg = "#3e3d32",
  pmenu_bg = "#a6e22e",
  folder_bg = "#66d9ef",
}

M.base_16 = {
  base00 = "#272822",
  base01 = "#1e1f1c",
  base02 = "#34352f",
  base03 = "#75715e",
  base04 = "#90908a",
  base05 = "#f8f8f2",
  base06 = "#f8f8f0",
  base07 = "#ffffff",
  base08 = "#f92672",
  base09 = "#fd971f",
  base0A = "#e6db74",
  base0B = "#a6e22e",
  base0C = "#66d9ef",
  base0D = "#66d9ef",
  base0E = "#ae81ff",
  base0F = "#fd971f",
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

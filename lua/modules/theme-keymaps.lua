local map = vim.keymap.set
local themes = require "modules.themes"
local picker = require "modules.theme-picker"

-- ============================================================================
-- THEME KEYMAPS - Organized & Intuitive
-- ============================================================================

-- PICKER MODES (prefix: <leader>t + number pad)
map("n", "<leader>t0", function()
  local state = require "nvchad.themes.state"
  state.val = themes.favorites
  state.themes_shown = themes.favorites
  require("nvchad.themes").open()
end, { desc = "Picker: Favorites" })

map("n", "<leader>t-", function()
  local state = require "nvchad.themes.state"
  state.val = themes.dark
  state.themes_shown = themes.dark
  require("nvchad.themes").open()
end, { desc = "Picker: Dark Themes" })

map("n", "<leader>t=", function()
  local state = require "nvchad.themes.state"
  state.val = themes.light
  state.themes_shown = themes.light
  require("nvchad.themes").open()
end, { desc = "Picker: Light Themes" })

-- ============================================================================
-- QUICK SETS - Direct theme access
-- ============================================================================

map("n", "<leader>t1", function()
  picker.set_theme "tokyodark"
end, { desc = "Theme: Tokyo Dark" })

map("n", "<leader>t2", function()
  picker.set_theme "gruvchad"
end, { desc = "Theme: Gruvchad" })

map("n", "<leader>t3", function()
  picker.set_theme "catppuccin"
end, { desc = "Theme: Catppuccin" })

map("n", "<leader>t4", function()
  picker.set_theme "nord"
end, { desc = "Theme: Nord" })

map("n", "<leader>t5", function()
  picker.set_theme "onedark"
end, { desc = "Theme: Onedark" })

-- ============================================================================
-- NAVIGATION - Cycle through theme lists
-- ============================================================================

-- Cycle favorites
map("n", "<leader>]t", function()
  picker.cycle(themes.favorites, 1)
end, { desc = "Next favorite theme" })

map("n", "<leader>[t", function()
  picker.cycle(themes.favorites, -1)
end, { desc = "Previous favorite theme" })

-- Cycle all themes
map("n", "<leader>]T", function()
  picker.cycle(themes.all_themes, 1)
end, { desc = "Next theme (all)" })

map("n", "<leader>[T", function()
  picker.cycle(themes.all_themes, -1)
end, { desc = "Previous theme (all)" })

-- ============================================================================
-- RANDOM SELECTION
-- ============================================================================

map("n", "<leader>tr", function()
  picker.random(themes.favorites)
end, { desc = "Random theme (favorites)" })

map("n", "<leader>tR", function()
  picker.random(themes.all_themes)
end, { desc = "Random theme (all)" })

-- ============================================================================
-- UTILITIES
-- ============================================================================

map("n", "<leader>ts", picker.toggle, { desc = "Toggle theme" })
map("n", "<leader>ti", picker.info, { desc = "Show theme info" })
map("n", "<leader>tu", function()
  require("base46").toggle_transparency()
end, { desc = "Toggle transparency" })

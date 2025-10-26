local M = {}
local themes = require "modules.themes"

-- Core theme setter using base46 properly
M.set_theme = function(theme_name)
  if not theme_name then
    return
  end

  require("nvconfig").base46.theme = theme_name
  require("base46").load_all_highlights()
  vim.notify("Theme: " .. theme_name, vim.log.levels.INFO)
end

-- Toggle between two themes
M.toggle = function()
  local current = require("nvconfig").base46.theme
  local toggle_themes = require("nvconfig").base46.theme_toggle

  if current == toggle_themes[1] then
    M.set_theme(toggle_themes[2])
  else
    M.set_theme(toggle_themes[1])
  end
end

-- Cycle through theme lists
M.cycle = function(theme_list, direction)
  if not theme_list or #theme_list == 0 then
    return
  end

  direction = direction or 1
  local current = require("nvconfig").base46.theme
  local index = 1

  for i, theme in ipairs(theme_list) do
    if theme == current then
      index = i
      break
    end
  end

  index = index + direction
  if index > #theme_list then
    index = 1
  elseif index < 1 then
    index = #theme_list
  end

  M.set_theme(theme_list[index])
end

-- Random theme from list
M.random = function(theme_list)
  if not theme_list or #theme_list == 0 then
    return
  end

  math.randomseed(os.time())
  local random_index = math.random(1, #theme_list)
  M.set_theme(theme_list[random_index])
end

-- Get current theme info with category
M.info = function()
  local current = require("nvconfig").base46.theme
  local type = "Unknown"

  if vim.tbl_contains(themes.dark, current) then
    type = "Dark"
  elseif vim.tbl_contains(themes.light, current) then
    type = "Light"
  end

  vim.notify(string.format("Current: %s [%s]", current, type), vim.log.levels.INFO)
end

-- Open NvChad's theme picker UI
M.open_picker = function()
  require("nvchad.themes").open()
end

return M

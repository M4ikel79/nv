-- luacheck: globals vim
local M = {}
M.vc_status = function()
  -- Check for vim-visual-multi first
  if vim.b.visual_multi then
    local ok, vm_info = pcall(vim.fn.VMInfos)
    if ok and vm_info and vm_info.ratio then
      -- Define minimal highlight for vim-visual-multi
      local colors = require("base46").get_theme_tb "base_30"
      vim.api.nvim_set_hl(0, "St_VM_txt", { fg = colors.white, bg = colors.statusline_bg })
      -- Get ratio info
      local ratio = vm_info.ratio or "0/0"
      local content = "[ " .. ratio .. " ]"
      -- Return content with minimal styling
      return "%#St_VM_txt#" .. content .. " "
    end
  end
  -- Check for native visual mode
  local mode = vim.api.nvim_get_mode().mode
  -- Only show in visual modes
  if not (mode == "v" or mode == "V" or mode == "\22") then
    return ""
  end
  -- Get visual selection positions
  local start_pos = vim.fn.getpos "v"
  local end_pos = vim.fn.getpos "."
  local start_line = start_pos[2]
  local end_line = end_pos[2]
  local start_col = start_pos[3]
  local end_col = end_pos[3]
  -- Determine direction
  local direction = (end_line > start_line or (end_line == start_line and end_col >= start_col)) and "↓" or "↑"
  -- Calculate dimensions
  local lines = math.abs(end_line - start_line) + 1
  local cols = math.abs(end_col - start_col) + 1
  -- Format content based on mode
  local content = ""
  if mode == "\22" then
    -- Visual-Block: show columns × lines
    content = "[ " .. direction .. cols .. "×" .. lines .. " ]"
  else
    -- Visual/Visual-Line: show line count with direction
    content = "[ " .. direction .. tostring(lines) .. " ]"
  end

  -- Define minimal highlight: pure white text, no background
  local colors = require("base46").get_theme_tb "base_30"
  vim.api.nvim_set_hl(0, "St_VC_txt", { fg = colors.white, bg = colors.statusline_bg })

  -- Return content with minimal styling (no separators)
  return "%#St_VC_txt#" .. content .. " "
end
return M

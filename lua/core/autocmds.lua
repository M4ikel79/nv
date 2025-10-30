require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

-- Restore cursor position
autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line "'\""
    if
      line > 1
      and line <= vim.fn.line "$"
      and vim.bo.filetype ~= "commit"
      and vim.fn.index({ "xxd", "gitrebase" }, vim.bo.filetype) == -1
    then
      vim.cmd 'normal! g`"'
    end
  end,
})

-- Highlight on yank
autocmd("TextYankPost", {
  desc = "Briefly highlight yanked text (NvChad style)",
  group = vim.api.nvim_create_augroup("YankHighlight", { clear = true }),
  callback = function()
    vim.highlight.on_yank {
      higroup = "IncSearch",
      timeout = 120,
      on_visual = true,
    }
  end,
})

-- vim.api.nvim_create_autocmd({ "VimResized", "WinEnter", "BufWinEnter" }, {
--   callback = function()
--     local width = vim.api.nvim_win_get_width(0)
--     if width > vim.o.columns / 2 then
--       vim.wo.colorcolumn = tostring(math.floor(width / 2))
--     else
--       vim.wo.colorcolumn = ""
--     end
--   end,
-- })

-- Show nvdash when all buffers are closed
autocmd("BufDelete", {
  callback = function()
    local bufs = vim.t.bufs
    if #bufs == 1 and vim.api.nvim_buf_get_name(bufs[1]) == "" then
      vim.cmd "Nvdash"
    end
  end,
})

-- Use custom bashrc for terminal buffers
autocmd("TermOpen", {
  callback = function()
    vim.opt_local.shell = "/bin/bash"
    vim.opt_local.shellcmdflag = "--rcfile " .. vim.fn.stdpath "config" .. "/lua/bash/.bashrc -i"
  end,
})

-- Dynamic terminal padding
autocmd("VimEnter", {
  command = ":silent !kitty @ set-spacing padding=0 margin=0",
})

autocmd("VimLeavePre", {
  command = ":silent !kitty @ set-spacing padding=20 margin=10",
})

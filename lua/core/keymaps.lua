-- Load NvChad default mappings
require "nvchad.mappings"

-- Helper function for cleaner mapping
local map = vim.keymap.set

-------------------
-- General Mappings
-------------------

-- Your existing mappings
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>", { desc = "Exit insert mode" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { desc = "Save file" })

-- Clear search highlights
map("n", "<Esc>", ":noh<CR>", { desc = "Clear highlights", silent = true })

-- Better window navigation
map("n", "<C-h>", "<C-w>h", { desc = "Window left" })
map("n", "<C-j>", "<C-w>j", { desc = "Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "Window up" })
map("n", "<C-l>", "<C-w>l", { desc = "Window right" })

-- Resize windows with arrows
map("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-Left>", ":vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<C-Right>", ":vertical resize +2<CR>", { desc = "Increase window width" })

-- Buffer navigation (enhanced from NvChad defaults)
for i = 1, 9, 1 do
  vim.keymap.set("n", string.format("<A-%s>", i), function()
    vim.api.nvim_set_current_buf(vim.t.bufs[i])
  end)
end
map("n", "<leader>x", ":bdelete<CR>", { desc = "Close buffer" })

-- Better indenting
map("v", "<", "<gv", { desc = "Indent left" })
map("v", ">", ">gv", { desc = "Indent right" })

-- Move text up and down in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move text down" })
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move text up" })

-- Keep cursor centered when scrolling
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down (centered)" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up (centered)" })
map("n", "n", "nzzzv", { desc = "Next search result (centered)" })
map("n", "N", "Nzzzv", { desc = "Previous search result (centered)" })

-- Better paste (don't lose clipboard content)
map("x", "p", '"_dP', { desc = "Paste without yanking" })

-------------------
-- Leader: Find (Telescope) - <leader>f
-------------------

-- NvChad already provides some, we'll add more later
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<cr>",
  { desc = "Find all files" }
)
map("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Recent files" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "Find in current buffer" })
map("n", "<leader>fc", "<cmd>Telescope commands<cr>", { desc = "Commands" })
map("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" })

-------------------
-- Leader: Git - <leader>g
-------------------

-- These will be fully functional once we install the plugins
map("n", "<leader>gg", "<cmd>Neogit<cr>", { desc = "Neogit" })
map("n", "<leader>gc", "<cmd>Neogit commit<cr>", { desc = "Commit" })
map("n", "<leader>gp", "<cmd>Neogit push<cr>", { desc = "Push" })
map("n", "<leader>gP", "<cmd>Neogit pull<cr>", { desc = "Pull" })
map("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "Diffview" })
map("n", "<leader>gh", "<cmd>DiffviewFileHistory %<cr>", { desc = "File history" })
map("n", "<leader>gH", "<cmd>DiffviewFileHistory<cr>", { desc = "Project history" })
map("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Git branches" })
map("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Git status" })

-------------------
-- Leader: LSP - <leader>l
-------------------

-- These are placeholders; actual LSP mappings set in lsp.lua on_attach
map("n", "<leader>lf", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "Format buffer" })
map("n", "<leader>li", "<cmd>LspInfo<cr>", { desc = "LSP Info" })
map("n", "<leader>lI", "<cmd>Mason<cr>", { desc = "Mason Info" })
map("n", "<leader>lr", vim.lsp.buf.rename, { desc = "Rename symbol" })
map("n", "<leader>la", vim.lsp.buf.code_action, { desc = "Code action" })
map("n", "<leader>ld", vim.diagnostic.open_float, { desc = "Show diagnostic" })
map("n", "<leader>lq", vim.diagnostic.setloclist, { desc = "Quickfix" })

-- Diagnostic navigation
-- map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" }) -- Deprecated
-- map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" }) -- Deprecated
map("n", "[d", function()
  vim.diagnostic.jump { count = -1, float = true }
end, { desc = "Previous diagnostic" })
map("n", "]d", function()
  vim.diagnostic.jump { count = 1, float = true }
end, { desc = "Next diagnostic" })

-- LSP actions (work with any LSP)
map("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })
map("n", "gD", vim.lsp.buf.declaration, { desc = "Go to declaration" })
map("n", "gi", vim.lsp.buf.implementation, { desc = "Go to implementation" })
map("n", "gr", vim.lsp.buf.references, { desc = "Go to references" })
map("n", "K", vim.lsp.buf.hover, { desc = "Hover documentation" })

-------------------
-- Leader: Debug - <leader>d
-------------------

-- DAP keybindings (will work once nvim-dap is installed)
map("n", "<leader>db", function()
  require("dap").toggle_breakpoint()
end, { desc = "Toggle breakpoint" })
map("n", "<leader>dB", function()
  require("dap").set_breakpoint(vim.fn.input "Breakpoint condition: ")
end, { desc = "Conditional breakpoint" })
map("n", "<leader>dc", function()
  require("dap").continue()
end, { desc = "Continue" })
map("n", "<leader>di", function()
  require("dap").step_into()
end, { desc = "Step into" })
map("n", "<leader>do", function()
  require("dap").step_over()
end, { desc = "Step over" })
map("n", "<leader>dO", function()
  require("dap").step_out()
end, { desc = "Step out" })
map("n", "<leader>dt", function()
  require("dap").terminate()
end, { desc = "Terminate" })
map("n", "<leader>dr", function()
  require("dap").repl.toggle()
end, { desc = "Toggle REPL" })
map("n", "<leader>dl", function()
  require("dap").run_last()
end, { desc = "Run last" })
map("n", "<leader>du", function()
  require("dapui").toggle()
end, { desc = "Toggle DAP UI" })
map("n", "<leader>de", function()
  require("dapui").eval()
end, { desc = "Eval expression" })
map("v", "<leader>de", function()
  require("dapui").eval()
end, { desc = "Eval selection" })

-------------------
-- Leader: Test - <leader>t
-------------------

-- Neotest keybindings
map("n", "<leader>tt", function()
  require("neotest").run.run()
end, { desc = "Run nearest test" })
map("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand "%")
end, { desc = "Run file tests" })
map("n", "<leader>ta", function()
  require("neotest").run.run(vim.fn.getcwd())
end, { desc = "Run all tests" })
map("n", "<leader>td", function()
  require("neotest").run.run { strategy = "dap" }
end, { desc = "Debug nearest test" })
map("n", "<leader>ts", function()
  require("neotest").summary.toggle()
end, { desc = "Toggle test summary" })
map("n", "<leader>to", function()
  require("neotest").output.open { enter = true }
end, { desc = "Show test output" })
map("n", "<leader>tO", function()
  require("neotest").output_panel.toggle()
end, { desc = "Toggle output panel" })
map("n", "<leader>tS", function()
  require("neotest").run.stop()
end, { desc = "Stop tests" })

-------------------
-- Leader: AI - <leader>a
-------------------

-- AI assistant keybindings
map({ "n", "v" }, "<leader>ac", "<cmd>CodeCompanionChat<cr>", { desc = "AI Chat" })
map({ "n", "v" }, "<leader>aa", "<cmd>CodeCompanionActions<cr>", { desc = "AI Actions" })
map("n", "<leader>ai", "<cmd>CodeCompanion<cr>", { desc = "Inline AI" })
map("n", "<leader>at", "<cmd>CodeCompanionChat Toggle<cr>", { desc = "Toggle AI Chat" })

-- Copilot (inline suggestions - mapped in plugin config)
-- <M-l> = Accept suggestion
-- <M-w> = Accept word
-- <M-]> = Next suggestion
-- <M-[> = Previous suggestion

-------------------
-- Leader: Obsidian/Markdown - <leader>o
-------------------

map("n", "<leader>on", "<cmd>ObsidianNew<cr>", { desc = "New note" })
map("n", "<leader>oo", "<cmd>ObsidianOpen<cr>", { desc = "Open in Obsidian" })
map("n", "<leader>os", "<cmd>ObsidianSearch<cr>", { desc = "Search notes" })
map("n", "<leader>ot", "<cmd>ObsidianTags<cr>", { desc = "Search tags" })
map("n", "<leader>od", "<cmd>ObsidianToday<cr>", { desc = "Today's note" })
map("n", "<leader>oy", "<cmd>ObsidianYesterday<cr>", { desc = "Yesterday's note" })
map("n", "<leader>ob", "<cmd>ObsidianBacklinks<cr>", { desc = "Backlinks" })
map("n", "<leader>ol", "<cmd>ObsidianLinks<cr>", { desc = "Links" })
map("n", "<leader>mp", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Markdown preview" })

-------------------
-- Leader: Search/Replace - <leader>s
-------------------

map("n", "<leader>sr", function()
  require("spectre").open()
end, { desc = "Replace in files (Spectre)" })
map("n", "<leader>sw", function()
  require("spectre").open_visual { select_word = true }
end, { desc = "Replace word" })
map("n", "<leader>sf", function()
  require("spectre").open_file_search()
end, { desc = "Replace in current file" })

-------------------
-- Leader: Session - <leader>q
-------------------

map("n", "<leader>qs", function()
  require("persistence").load()
end, { desc = "Restore session" })
map("n", "<leader>ql", function()
  require("persistence").load { last = true }
end, { desc = "Restore last session" })
map("n", "<leader>qd", function()
  require("persistence").stop()
end, { desc = "Don't save session" })

-------------------
-- Leader: UI - <leader>x
-------------------

map("n", "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", { desc = "Diagnostics (Trouble)" })
map("n", "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", { desc = "Buffer diagnostics" })
map("n", "<leader>xq", "<cmd>Trouble quickfix toggle<cr>", { desc = "Quickfix list" })
map("n", "<leader>z", "<cmd>ZenMode<cr>", { desc = "Zen mode" })

-------------------
-- Leader: Window - <leader>w
-------------------

map("n", "<leader>|", "<C-w>v", { desc = "Split vertical" })
map("n", "<leader>\\", "<C-w>v", { desc = "Split vertical" })
map("n", "<leader>-", "<C-w>s", { desc = "Split horizontal" })
map("n", "<leader>wq", "<C-w>q", { desc = "Close window" })
map("n", "<leader>wo", "<C-w>o", { desc = "Close other windows" })
map("n", "<leader>w=", "<C-w>=", { desc = "Equal window size" })
map("n", "<leader>wv", "<C-w>t<C-w>H", { desc = "Move split to vertical" })
map("n", "<leader>wh", "<C-w>t<C-w>K", { desc = "Move split to horizontal" })
map("n", "<leader>wr", "<C-w>r", { desc = "Rotate windows" })

-------------------
-- Terminal
-------------------

-- Toggleterm mappings (in terminal mode)
map("t", "<C-x>", "<C-\\><C-n>", { desc = "Exit terminal mode" })
map("t", "<C-h>", "<C-\\><C-n><C-w>h", { desc = "Window left (terminal)" })
map("t", "<C-j>", "<C-\\><C-n><C-w>j", { desc = "Window down (terminal)" })
map("t", "<C-k>", "<C-\\><C-n><C-w>k", { desc = "Window up (terminal)" })
map("t", "<C-l>", "<C-\\><C-n><C-w>l", { desc = "Window right (terminal)" })

-------------------
-- Quick Notes
-------------------

-- Note: Some mappings depend on plugins and will only work after installation:
-- - Git commands require: neogit, diffview, gitsigns
-- - LSP format requires: conform.nvim
-- - Debug commands require: nvim-dap, nvim-dap-ui
-- - Test commands require: neotest
-- - AI commands require: copilot.lua, codecompanion.nvim
-- - Search/replace requires: nvim-spectre
-- - Session requires: persistence.nvim
-- - Diagnostics requires: trouble.nvim
-- - Obsidian requires: obsidian.nvim
-- - Zen mode requires: zen-mode.nvim

-- Press <leader> and wait to see all available mappings (which-key will show them)

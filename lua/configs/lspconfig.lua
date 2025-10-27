-- lua/configs/lspconfig.lua
-- Simple config file - actual LSP setup is in lua/plugins/lsp.lua

-- This file can remain minimal since the heavy lifting is done in plugins/lsp.lua
-- Keep this for NvChad compatibility or add any global LSP overrides here

require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
--
-- Note: Language servers are now managed by Mason
-- See lua/plugins/lsp.lua for the complete LSP configuration
-- Use :Mason to manage LSP servers through the UI
-- Use :LspInfo to see active language servers
-- Use :LspInstall <server> to install additional servers

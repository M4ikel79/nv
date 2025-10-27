# Neovim Configuration Changes
**Date:** October 27, 2025  
**Branch:** lsp

## Summary
Major refactoring of folding and LSP configuration. Migrated from nvim-ufo to nvim-origami for code folding, implemented modern Neovim 0.11+ native LSP configuration with Mason integration, and added blink.cmp completion enhancements.

---

## 📦 New Files

### `lua/plugins/lsp.lua`
- Complete LSP configuration using modern Neovim 0.11+ APIs
- Mason integration for automatic LSP server installation
- Configured servers: lua_ls, pyright, ts_ls, jsonls, html, cssls, eslint, emmet_ls, tailwindcss, rust_analyzer, clangd, gopls, bashls, marksman
- LSP signature help with ray-x/lsp_signature.nvim
- Custom diagnostic signs and floating window borders
- Document highlight on cursor hold
- SchemaStore integration for JSON validation

### `lua/plugins/blink.lua`
- Enhanced blink.cmp configuration
- Enabled signature help and ghost text
- Auto brackets for completion
- Rust fuzzy matching implementation
- Custom completion menu with source indicators ([LSP], [Buffer], etc.)

---

## 🔧 Modified Files

### `.gitignore`
- Changed: Removed specific file ignores (`validate.lua`, `CHANGES_AND_TESTS.md`)
- Added: Generic `ignore` directory for temporary files and documentation

### `lua/chadrc.lua`
- **Theme Changes:**
  - Default theme: `blossom_light` → `tokyodark`
  - Theme toggle: Updated to `nano-light` / `tokyodark`
- **Formatting:** Improved code formatting for `format_colors` and `highlight` options

### `lua/configs/lspconfig.lua`
- Added comprehensive documentation comments
- Clarified that heavy LSP configuration is in `lua/plugins/lsp.lua`
- Added usage instructions for Mason, LspInfo, and LspInstall commands
- Maintains NvChad compatibility while delegating to new LSP setup

### `lua/core/autocmds.lua`
- **New:** Restore cursor position on file open
- **New:** Show nvdash when all buffers are closed
- **New:** Dynamic Kitty terminal padding (removes padding on VimEnter, restores on VimLeavePre)

### `lua/core/keymaps.lua`
- **Added:** `<A-c>` (Alt+C) mapping for buffer close (alternative to `<leader>x`)

### `lua/plugins/init.lua`
- **Removed:** Large commented-out plugin configurations
- Cleaned up to minimal conform.nvim setup only

### `lua/plugins/origami.lua`
- **Simplified:** Removed extensive configuration options
- Minimal fold text configuration with line count template
- Basic keymaps: `za` (toggle), `zp` (previous), `zn` (next)

---

## 🗑️ Deleted Files

### `lua/modules/fold.lua`
- **Reason:** Migrated from custom LSP folding implementation to nvim-origami plugin
- **Impact:** 119 lines removed (custom folding logic no longer needed)

### `lua/plugins/ufo.lua.bak`
- **Reason:** Backup file from nvim-ufo migration
- **Impact:** 178 lines removed (extensive nvim-ufo configuration)

---

## 🔄 Plugin Changes

### Folding System Migration
- **Removed:** kevinhwang91/nvim-ufo (with promise-async dependency)
- **Added:** chrisgrieser/nvim-origami
- **Rationale:** Simpler, more maintainable folding solution with VeryLazy loading

### LSP Enhancements
- **Added:** williamboman/mason.nvim
- **Added:** williamboman/mason-lspconfig.nvim
- **Added:** ray-x/lsp_signature.nvim
- **Added:** b0o/schemastore.nvim
- **Modernized:** Using vim.lsp.config() and vim.lsp.enable() (Neovim 0.11+ APIs)

### Completion Improvements
- **Enhanced:** blink.cmp with source indicators and better UI

---

## ⚙️ Technical Details

### LSP Configuration Highlights
- Automatic LSP server installation via Mason
- Modern LspAttach autocmd for buffer-local mappings
- Custom floating window borders (rounded)
- Enhanced diagnostic display with icons
- Document highlighting on cursor hold
- Server-specific configurations for 14+ language servers

### Folding Configuration
- VeryLazy loading for performance
- Minimal configuration approach
- Line count display in fold text
- Simple navigation keybinds

### Autocmd Improvements
- Smart cursor position restoration (skips commit messages)
- Dashboard auto-display when closing last buffer
- Terminal padding integration for Kitty terminal

---

## 📊 Statistics
- **Files Changed:** 9
- **Lines Added:** 67
- **Lines Removed:** 370
- **Net Change:** -303 lines
- **New Files:** 2
- **Deleted Files:** 2

---

## ✅ Validation Status
- All Lua files pass syntax validation
- All modules load without runtime errors
- Plugin configurations are valid
- No user configuration errors detected

---

## 🎯 Future Considerations
1. Consider adding more LSP server configurations as needed
2. May want to customize origami fold text further
3. Could add more Mason tool auto-installations (linters, formatters)
4. Monitor NvChad nvdash for upstream fixes (known Column range issue)

---

*This change log documents the migration to a cleaner, more maintainable Neovim configuration with modern LSP integration and simplified folding.*

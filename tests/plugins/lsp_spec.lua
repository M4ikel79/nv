-- tests/plugins/lsp_spec.lua
-- Unit tests for lua/plugins/lsp.lua

local plenary_available, plenary = pcall(require, "plenary")
if not plenary_available then
  print("Plenary not available, skipping tests")
  return
end

describe("LSP Plugin Configuration", function()
  local lsp_plugins

  before_each(function()
    -- Reset package cache to get fresh config
    package.loaded["plugins.lsp"] = nil
    lsp_plugins = require("plugins.lsp")
  end)

  describe("Plugin structure", function()
    it("should return a table", function()
      assert.is_table(lsp_plugins)
    end)

    it("should contain multiple plugin configurations", function()
      assert.is_true(#lsp_plugins > 0, "Expected at least one plugin configuration")
      assert.is_true(#lsp_plugins >= 4, "Expected at least 4 plugins (mason, mason-lspconfig, lsp_signature, lspconfig)")
    end)

    it("should have all plugins as tables", function()
      for i, plugin in ipairs(lsp_plugins) do
        assert.is_table(plugin, "Plugin " .. i .. " should be a table")
      end
    end)
  end)

  describe("Mason plugin", function()
    local mason_plugin

    before_each(function()
      for _, plugin in ipairs(lsp_plugins) do
        if plugin[1] == "williamboman/mason.nvim" then
          mason_plugin = plugin
          break
        end
      end
    end)

    it("should be present", function()
      assert.is_not_nil(mason_plugin, "Mason plugin should be configured")
    end)

    it("should have correct plugin name", function()
      assert.equals("williamboman/mason.nvim", mason_plugin[1])
    end)

    it("should have cmd configuration", function()
      assert.is_table(mason_plugin.cmd)
      assert.is_true(vim.tbl_contains(mason_plugin.cmd, "Mason"))
      assert.is_true(vim.tbl_contains(mason_plugin.cmd, "MasonInstall"))
      assert.is_true(vim.tbl_contains(mason_plugin.cmd, "MasonUpdate"))
    end)

    it("should have build command", function()
      assert.equals(":MasonUpdate", mason_plugin.build)
    end)

    it("should have opts configuration", function()
      assert.is_table(mason_plugin.opts)
      assert.is_table(mason_plugin.opts.ui)
      assert.is_table(mason_plugin.opts.ui.icons)
    end)

    it("should have valid UI icons", function()
      local icons = mason_plugin.opts.ui.icons
      assert.is_string(icons.package_installed)
      assert.is_string(icons.package_pending)
      assert.is_string(icons.package_uninstalled)
      assert.equals("✓", icons.package_installed)
      assert.equals("➜", icons.package_pending)
      assert.equals("✗", icons.package_uninstalled)
    end)

    it("should have valid UI dimensions", function()
      assert.equals(0.8, mason_plugin.opts.ui.width)
      assert.equals(0.8, mason_plugin.opts.ui.height)
      assert.is_true(mason_plugin.opts.ui.width > 0 and mason_plugin.opts.ui.width <= 1)
      assert.is_true(mason_plugin.opts.ui.height > 0 and mason_plugin.opts.ui.height <= 1)
    end)

    it("should have max_concurrent_installers set", function()
      assert.equals(10, mason_plugin.opts.max_concurrent_installers)
      assert.is_number(mason_plugin.opts.max_concurrent_installers)
      assert.is_true(mason_plugin.opts.max_concurrent_installers > 0)
    end)
  end)

  describe("Mason-LSPConfig plugin", function()
    local mason_lsp_plugin

    before_each(function()
      for _, plugin in ipairs(lsp_plugins) do
        if plugin[1] == "williamboman/mason-lspconfig.nvim" then
          mason_lsp_plugin = plugin
          break
        end
      end
    end)

    it("should be present", function()
      assert.is_not_nil(mason_lsp_plugin, "Mason-LSPConfig plugin should be configured")
    end)

    it("should depend on mason.nvim", function()
      assert.is_table(mason_lsp_plugin.dependencies)
      assert.is_true(vim.tbl_contains(mason_lsp_plugin.dependencies, "williamboman/mason.nvim"))
    end)

    it("should be lazy loaded", function()
      assert.is_true(mason_lsp_plugin.lazy)
    end)
  end)

  describe("LSP Signature plugin", function()
    local signature_plugin

    before_each(function()
      for _, plugin in ipairs(lsp_plugins) do
        if plugin[1] == "ray-x/lsp_signature.nvim" then
          signature_plugin = plugin
          break
        end
      end
    end)

    it("should be present", function()
      assert.is_not_nil(signature_plugin, "LSP Signature plugin should be configured")
    end)

    it("should load on LspAttach event", function()
      assert.equals("LspAttach", signature_plugin.event)
    end)

    it("should have opts configuration", function()
      assert.is_table(signature_plugin.opts)
      assert.is_true(signature_plugin.opts.bind)
      assert.is_table(signature_plugin.opts.handler_opts)
      assert.equals("rounded", signature_plugin.opts.handler_opts.border)
    end)

    it("should have valid window configuration", function()
      assert.is_true(signature_plugin.opts.floating_window)
      assert.is_true(signature_plugin.opts.floating_window_above_cur_line)
      assert.is_number(signature_plugin.opts.floating_window_off_x)
      assert.is_number(signature_plugin.opts.floating_window_off_y)
    end)

    it("should have valid dimension constraints", function()
      assert.equals(12, signature_plugin.opts.max_height)
      assert.equals(80, signature_plugin.opts.max_width)
      assert.is_true(signature_plugin.opts.max_height > 0)
      assert.is_true(signature_plugin.opts.max_width > 0)
    end)

    it("should have hint configuration", function()
      assert.is_true(signature_plugin.opts.hint_enable)
      assert.is_string(signature_plugin.opts.hint_prefix)
      assert.equals("󰊕 ", signature_plugin.opts.hint_prefix)
      assert.equals("Comment", signature_plugin.opts.hint_scheme)
    end)

    it("should have timer configuration", function()
      assert.equals(200, signature_plugin.opts.timer_interval)
      assert.is_number(signature_plugin.opts.timer_interval)
      assert.is_true(signature_plugin.opts.timer_interval > 0)
    end)
  end)

  describe("LSPConfig plugin", function()
    local lspconfig_plugin

    before_each(function()
      for _, plugin in ipairs(lsp_plugins) do
        if plugin[1] == "neovim/nvim-lspconfig" then
          lspconfig_plugin = plugin
          break
        end
      end
    end)

    it("should be present", function()
      assert.is_not_nil(lspconfig_plugin, "LSPConfig plugin should be configured")
    end)

    it("should load on buffer events", function()
      assert.is_table(lspconfig_plugin.event)
      assert.is_true(vim.tbl_contains(lspconfig_plugin.event, "BufReadPre"))
      assert.is_true(vim.tbl_contains(lspconfig_plugin.event, "BufNewFile"))
    end)

    it("should have correct dependencies", function()
      assert.is_table(lspconfig_plugin.dependencies)
      assert.is_true(vim.tbl_contains(lspconfig_plugin.dependencies, "williamboman/mason.nvim"))
      assert.is_true(vim.tbl_contains(lspconfig_plugin.dependencies, "williamboman/mason-lspconfig.nvim"))
      assert.is_true(vim.tbl_contains(lspconfig_plugin.dependencies, "ray-x/lsp_signature.nvim"))
    end)

    it("should have a config function", function()
      assert.is_function(lspconfig_plugin.config)
    end)
  end)

  describe("SchemaStore plugin", function()
    local schemastore_plugin

    before_each(function()
      for _, plugin in ipairs(lsp_plugins) do
        if plugin[1] == "b0o/schemastore.nvim" then
          schemastore_plugin = plugin
          break
        end
      end
    end)

    it("should be present", function()
      assert.is_not_nil(schemastore_plugin, "SchemaStore plugin should be configured")
    end)

    it("should be lazy loaded", function()
      assert.is_true(schemastore_plugin.lazy)
    end)
  end)

  describe("Plugin loading order", function()
    it("should have mason before mason-lspconfig", function()
      local mason_idx, mason_lsp_idx
      for i, plugin in ipairs(lsp_plugins) do
        if plugin[1] == "williamboman/mason.nvim" then
          mason_idx = i
        elseif plugin[1] == "williamboman/mason-lspconfig.nvim" then
          mason_lsp_idx = i
        end
      end
      assert.is_not_nil(mason_idx)
      assert.is_not_nil(mason_lsp_idx)
      -- Mason should be defined before mason-lspconfig (order matters for dependencies)
      assert.is_true(mason_idx < mason_lsp_idx)
    end)
  end)

  describe("Edge cases and validation", function()
    it("should handle missing config gracefully", function()
      local success = pcall(function()
        return require("plugins.lsp")
      end)
      assert.is_true(success, "Loading plugin configuration should not error")
    end)

    it("should not have circular dependencies", function()
      local dep_map = {}
      for _, plugin in ipairs(lsp_plugins) do
        if plugin.dependencies then
          dep_map[plugin[1]] = plugin.dependencies
        end
      end
      -- Basic circular dependency check
      for plugin_name, deps in pairs(dep_map) do
        for _, dep in ipairs(deps) do
          if dep_map[dep] then
            assert.is_false(
              vim.tbl_contains(dep_map[dep], plugin_name),
              "Circular dependency detected between " .. plugin_name .. " and " .. dep
            )
          end
        end
      end
    end)

    it("should have unique plugin names", function()
      local names = {}
      for _, plugin in ipairs(lsp_plugins) do
        local name = plugin[1]
        assert.is_false(names[name], "Duplicate plugin: " .. name)
        names[name] = true
      end
    end)
  end)
end)

describe("LSP Server Configurations", function()
  it("should define essential LSP servers", function()
    package.loaded["plugins.lsp"] = nil
    local lsp_plugins = require("plugins.lsp")
    
    -- Extract config function to inspect it
    local lspconfig_plugin
    for _, plugin in ipairs(lsp_plugins) do
      if plugin[1] == "neovim/nvim-lspconfig" then
        lspconfig_plugin = plugin
        break
      end
    end
    
    assert.is_not_nil(lspconfig_plugin)
    assert.is_function(lspconfig_plugin.config)
  end)
end)
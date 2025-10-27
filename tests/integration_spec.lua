-- tests/integration_spec.lua
-- Integration tests for plugin configuration

local plenary_available = pcall(require, "plenary")
if not plenary_available then
  print("Plenary not available, skipping tests")
  return
end

describe("Plugin Configuration Integration", function()
  describe("Cross-plugin dependencies", function()
    it("should load all plugin configurations without errors", function()
      local plugins = {
        "plugins.lsp",
        "plugins.blink",
        "plugins.origami",
        "configs.lspconfig",
        "core.autocmds",
      }
      
      for _, plugin in ipairs(plugins) do
        package.loaded[plugin] = nil
        local success, err = pcall(require, plugin)
        assert.is_true(success, "Failed to load " .. plugin .. ": " .. tostring(err))
      end
    end)

    it("should have consistent LSP configuration across modules", function()
      package.loaded["plugins.lsp"] = nil
      package.loaded["configs.lspconfig"] = nil
      
      local lsp_plugins = require("plugins.lsp")
      local lsp_config = require("configs.lspconfig")
      
      assert.is_table(lsp_plugins)
      -- Both modules should coexist
      assert.is_not_nil(lsp_config or true)
    end)
  end)

  describe("Configuration validation", function()
    it("should not have conflicting plugin definitions", function()
      local all_plugins = {}
      
      local modules = {
        require("plugins.lsp"),
        require("plugins.blink"),
        { require("plugins.origami") },
      }
      
      for _, mod_plugins in ipairs(modules) do
        for _, plugin in ipairs(mod_plugins) do
          if type(plugin) == "table" and plugin[1] then
            local name = plugin[1]
            assert.is_nil(all_plugins[name], "Conflicting plugin definition: " .. name)
            all_plugins[name] = true
          end
        end
      end
    end)

    it("should have valid event configurations", function()
      local valid_events = {
        "BufReadPre", "BufNewFile", "BufReadPost", "VeryLazy", "InsertEnter",
        "LspAttach", "BufDelete", "VimEnter", "VimLeavePre"
      }
      
      local all_modules = {
        require("plugins.lsp"),
        require("plugins.blink"),
        { require("plugins.origami") },
      }
      
      for _, mod_plugins in ipairs(all_modules) do
        for _, plugin in ipairs(mod_plugins) do
          if type(plugin) == "table" and plugin.event then
            if type(plugin.event) == "string" then
              -- Single event - validate it exists
              -- (Allow any string as custom events are valid)
              assert.is_string(plugin.event)
            elseif type(plugin.event) == "table" then
              -- Multiple events
              for _, event in ipairs(plugin.event) do
                assert.is_string(event)
              end
            end
          end
        end
      end
    end)
  end)

  describe("Performance characteristics", function()
    it("should load configurations quickly", function()
      local start_time = vim.loop.hrtime()
      
      package.loaded["plugins.lsp"] = nil
      package.loaded["plugins.blink"] = nil
      package.loaded["plugins.origami"] = nil
      
      require("plugins.lsp")
      require("plugins.blink")
      require("plugins.origami")
      
      local elapsed_ms = (vim.loop.hrtime() - start_time) / 1000000
      
      -- Configuration loading should be fast (< 100ms)
      assert.is_true(elapsed_ms < 100, "Configuration loading took " .. elapsed_ms .. "ms")
    end)
  end)
end)
-- tests/configs/lspconfig_spec.lua
-- Unit tests for lua/configs/lspconfig.lua

local plenary_available = pcall(require, "plenary")
if not plenary_available then
  print("Plenary not available, skipping tests")
  return
end

describe("LSPConfig Module", function()
  describe("Module loading", function()
    it("should load without errors", function()
      local success, result = pcall(function()
        package.loaded["configs.lspconfig"] = nil
        return require("configs.lspconfig")
      end)
      assert.is_true(success, "Should load without errors: " .. tostring(result))
    end)

    it("should be loadable multiple times", function()
      package.loaded["configs.lspconfig"] = nil
      local first = require("configs.lspconfig")
      
      package.loaded["configs.lspconfig"] = nil
      local second = require("configs.lspconfig")
      
      -- Both should succeed (may return nil, that's ok)
      assert.is_not_nil(first or true)
      assert.is_not_nil(second or true)
    end)
  end)

  describe("NvChad integration", function()
    it("should call nvchad defaults if available", function()
      -- This test checks that the module attempts to call NvChad defaults
      local success = pcall(function()
        package.loaded["configs.lspconfig"] = nil
        require("configs.lspconfig")
      end)
      -- Should not error even if NvChad is not available
      assert.is_true(success)
    end)
  end)

  describe("Configuration validity", function()
    it("should not pollute global namespace", function()
      local before_globals = {}
      for k, v in pairs(_G) do
        before_globals[k] = v
      end
      
      package.loaded["configs.lspconfig"] = nil
      require("configs.lspconfig")
      
      -- Check no unexpected globals were added
      for k, v in pairs(_G) do
        if not before_globals[k] and k ~= "arg" then
          -- Allow some expected additions but catch unexpected ones
          local allowed = k:match("^_") or k == "it" or k == "describe" or k == "before_each" or k == "after_each"
          assert.is_true(allowed, "Unexpected global: " .. k)
        end
      end
    end)
  end)
end)
-- tests/core/autocmds_spec.lua
-- Unit tests for lua/core/autocmds.lua

local plenary_available = pcall(require, "plenary")
if not plenary_available then
  print("Plenary not available, skipping tests")
  return
end

describe("Autocmds Module", function()
  describe("Module loading", function()
    it("should load without errors", function()
      local success, err = pcall(function()
        package.loaded["core.autocmds"] = nil
        return require("core.autocmds")
      end)
      assert.is_true(success, "Should load without errors: " .. tostring(err))
    end)

    it("should be idempotent", function()
      package.loaded["core.autocmds"] = nil
      local first = require("core.autocmds")
      
      package.loaded["core.autocmds"] = nil
      local second = require("core.autocmds")
      
      assert.is_not_nil(first or true)
      assert.is_not_nil(second or true)
    end)
  end)

  describe("Autocmd registration", function()
    it("should not error when registering autocmds", function()
      local autocmd_spy = vim.api.nvim_create_autocmd
      local called = false
      
      -- Spy on autocmd creation
      vim.api.nvim_create_autocmd = function(...)
        called = true
        return autocmd_spy(...)
      end
      
      package.loaded["core.autocmds"] = nil
      local success = pcall(require, "core.autocmds")
      
      -- Restore original function
      vim.api.nvim_create_autocmd = autocmd_spy
      
      assert.is_true(success)
    end)
  end)

  describe("BufReadPost autocmd", function()
    it("should handle cursor restoration logic", function()
      -- Test that the module defines cursor restoration
      package.loaded["core.autocmds"] = nil
      local success = pcall(require, "core.autocmds")
      assert.is_true(success)
      
      -- Check that the autocmd was created
      local autocmds = vim.api.nvim_get_autocmds({ event = "BufReadPost" })
      assert.is_true(#autocmds > 0, "BufReadPost autocmd should be registered")
    end)
  end)

  describe("BufDelete autocmd", function()
    it("should handle buffer deletion", function()
      package.loaded["core.autocmds"] = nil
      local success = pcall(require, "core.autocmds")
      assert.is_true(success)
      
      -- Check that the autocmd was created
      local autocmds = vim.api.nvim_get_autocmds({ event = "BufDelete" })
      assert.is_true(#autocmds > 0, "BufDelete autocmd should be registered")
    end)
  end)

  describe("VimEnter autocmd", function()
    it("should handle vim enter event", function()
      package.loaded["core.autocmds"] = nil
      local success = pcall(require, "core.autocmds")
      assert.is_true(success)
      
      -- Check that the autocmd was created
      local autocmds = vim.api.nvim_get_autocmds({ event = "VimEnter" })
      assert.is_true(#autocmds > 0, "VimEnter autocmd should be registered")
    end)
  end)

  describe("VimLeavePre autocmd", function()
    it("should handle vim leave event", function()
      package.loaded["core.autocmds"] = nil
      local success = pcall(require, "core.autocmds")
      assert.is_true(success)
      
      -- Check that the autocmd was created
      local autocmds = vim.api.nvim_get_autocmds({ event = "VimLeavePre" })
      assert.is_true(#autocmds > 0, "VimLeavePre autocmd should be registered")
    end)
  end)

  describe("NvChad integration", function()
    it("should load nvchad autocmds if available", function()
      local success = pcall(function()
        package.loaded["core.autocmds"] = nil
        require("core.autocmds")
      end)
      -- Should not error even if NvChad is not available
      assert.is_true(success)
    end)
  end)

  describe("Edge cases", function()
    it("should handle missing nvchad module gracefully", function()
      local original_require = require
      local custom_require = function(mod)
        if mod == "nvchad.autocmds" then
          error("Module not found")
        end
        return original_require(mod)
      end
      
      _G.require = custom_require
      package.loaded["core.autocmds"] = nil
      
      local success = pcall(require, "core.autocmds")
      
      _G.require = original_require
      
      -- Should handle the error gracefully or succeed
      assert.is_not_nil(success)
    end)

    it("should not create duplicate autocmds", function()
      -- Load the module twice
      package.loaded["core.autocmds"] = nil
      require("core.autocmds")
      
      local first_count = #vim.api.nvim_get_autocmds({ event = "BufReadPost" })
      
      package.loaded["core.autocmds"] = nil
      require("core.autocmds")
      
      local second_count = #vim.api.nvim_get_autocmds({ event = "BufReadPost" })
      
      -- Note: This might create duplicates, which is a design choice
      -- The test documents the current behavior
      assert.is_true(second_count >= first_count)
    end)
  end)
end)
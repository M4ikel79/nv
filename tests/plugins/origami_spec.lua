-- tests/plugins/origami_spec.lua
-- Unit tests for lua/plugins/origami.lua

local plenary_available = pcall(require, "plenary")
if not plenary_available then
  print("Plenary not available, skipping tests")
  return
end

describe("Origami Plugin Configuration", function()
  local origami_config

  before_each(function()
    package.loaded["plugins.origami"] = nil
    origami_config = require("plugins.origami")
  end)

  describe("Plugin structure", function()
    it("should return a table", function()
      assert.is_table(origami_config)
    end)

    it("should have plugin name", function()
      assert.equals("chrisgrieser/nvim-origami", origami_config[1])
    end)

    it("should load on VeryLazy event", function()
      assert.equals("VeryLazy", origami_config.event)
    end)
  end)

  describe("Plugin options", function()
    it("should have opts configuration", function()
      assert.is_table(origami_config.opts)
    end)

    it("should configure foldtext", function()
      assert.is_table(origami_config.opts.foldtext)
      assert.is_table(origami_config.opts.foldtext.lineCount)
    end)

    it("should have line count template", function()
      assert.equals("  %d", origami_config.opts.foldtext.lineCount.template)
      assert.is_string(origami_config.opts.foldtext.lineCount.template)
    end)

    it("should have valid template format", function()
      local template = origami_config.opts.foldtext.lineCount.template
      assert.is_true(template:match("%%d") ~= nil, "Template should contain %d placeholder")
    end)
  end)

  describe("Key mappings", function()
    it("should have keys configuration", function()
      assert.is_table(origami_config.keys)
      assert.is_true(#origami_config.keys >= 3)
    end)

    it("should have toggle fold mapping", function()
      local has_toggle = false
      for _, key in ipairs(origami_config.keys) do
        if key[1] == "za" then
          has_toggle = true
          assert.equals("za", key[2])
          assert.equals("toggle fold", key.desc)
          assert.equals("n", key.mode)
          break
        end
      end
      assert.is_true(has_toggle, "Should have toggle fold mapping")
    end)

    it("should have previous fold mapping", function()
      local has_prev = false
      for _, key in ipairs(origami_config.keys) do
        if key[1] == "zp" then
          has_prev = true
          assert.equals("zk", key[2])
          assert.equals("previous fold", key.desc)
          assert.equals("n", key.mode)
          break
        end
      end
      assert.is_true(has_prev, "Should have previous fold mapping")
    end)

    it("should have next fold mapping", function()
      local has_next = false
      for _, key in ipairs(origami_config.keys) do
        if key[1] == "zn" then
          has_next = true
          assert.equals("zj", key[2])
          assert.equals("next fold", key.desc)
          assert.equals("n", key.mode)
          break
        end
      end
      assert.is_true(has_next, "Should have next fold mapping")
    end)

    it("should have descriptive key descriptions", function()
      for _, key in ipairs(origami_config.keys) do
        assert.is_string(key.desc, "Each key should have a description")
        assert.is_true(#key.desc > 0, "Description should not be empty")
      end
    end)

    it("should only use normal mode", function()
      for _, key in ipairs(origami_config.keys) do
        assert.equals("n", key.mode, "All keys should be in normal mode")
      end
    end)
  end)

  describe("Edge cases", function()
    it("should load without errors", function()
      local success = pcall(function()
        return require("plugins.origami")
      end)
      assert.is_true(success)
    end)

    it("should have no duplicate key mappings", function()
      local key_map = {}
      for _, key in ipairs(origami_config.keys) do
        local key_str = key[1]
        assert.is_false(key_map[key_str], "Duplicate key mapping: " .. key_str)
        key_map[key_str] = true
      end
    end)
  end)
end)
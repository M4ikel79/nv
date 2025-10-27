-- tests/plugins/blink_spec.lua
-- Unit tests for lua/plugins/blink.lua

local plenary_available = pcall(require, "plenary")
if not plenary_available then
  print("Plenary not available, skipping tests")
  return
end

describe("Blink Completion Configuration", function()
  local blink_config

  before_each(function()
    package.loaded["plugins.blink"] = nil
    blink_config = require("plugins.blink")
  end)

  describe("Plugin structure", function()
    it("should return a table", function()
      assert.is_table(blink_config)
    end)

    it("should contain plugin configurations", function()
      assert.is_true(#blink_config > 0, "Expected at least one plugin configuration")
    end)
  end)

  describe("Import configuration", function()
    it("should import nvchad blink lazyspec", function()
      local has_import = false
      for _, plugin in ipairs(blink_config) do
        if plugin.import == "nvchad.blink.lazyspec" then
          has_import = true
          break
        end
      end
      assert.is_true(has_import, "Should import nvchad.blink.lazyspec")
    end)
  end)

  describe("Blink.cmp plugin", function()
    local blink_cmp

    before_each(function()
      for _, plugin in ipairs(blink_config) do
        if plugin[1] == "saghen/blink.cmp" then
          blink_cmp = plugin
          break
        end
      end
    end)

    it("should be present", function()
      assert.is_not_nil(blink_cmp, "blink.cmp plugin should be configured")
    end)

    it("should have opts function", function()
      assert.is_function(blink_cmp.opts)
    end)

    describe("opts function behavior", function()
      it("should return a table when called", function()
        local result = blink_cmp.opts({}, {})
        assert.is_table(result)
      end)

      it("should enable signature", function()
        local result = blink_cmp.opts({}, {})
        assert.is_table(result.signature)
        assert.is_true(result.signature.enabled)
      end)

      it("should enable ghost_text", function()
        local result = blink_cmp.opts({}, {})
        assert.is_table(result.completion)
        assert.is_table(result.completion.ghost_text)
        assert.is_true(result.completion.ghost_text.enabled)
      end)

      it("should enable auto_brackets", function()
        local result = blink_cmp.opts({}, {})
        assert.is_table(result.completion.accept)
        assert.is_table(result.completion.accept.auto_brackets)
        assert.is_true(result.completion.accept.auto_brackets.enabled)
      end)

      it("should set fuzzy implementation", function()
        local result = blink_cmp.opts({}, {})
        assert.is_table(result.fuzzy)
        assert.equals("prefer_rust", result.fuzzy.implementation)
      end)

      it("should configure menu columns", function()
        local result = blink_cmp.opts({}, {})
        assert.is_table(result.completion.menu)
        assert.is_table(result.completion.menu.draw)
        assert.is_table(result.completion.menu.draw.columns)
        assert.is_true(#result.completion.menu.draw.columns >= 3)
      end)

      it("should have kind_icon column", function()
        local result = blink_cmp.opts({}, {})
        local columns = result.completion.menu.draw.columns
        local has_kind_icon = false
        for _, col in ipairs(columns) do
          if col[1] == "kind_icon" then
            has_kind_icon = true
            break
          end
        end
        assert.is_true(has_kind_icon, "Should have kind_icon column")
      end)

      it("should have label column with gap", function()
        local result = blink_cmp.opts({}, {})
        local columns = result.completion.menu.draw.columns
        local has_label = false
        for _, col in ipairs(columns) do
          if col[1] == "label" and col[2] == "label_description" then
            has_label = true
            assert.equals(1, col.gap)
            break
          end
        end
        assert.is_true(has_label, "Should have label column")
      end)

      it("should have source_name column", function()
        local result = blink_cmp.opts({}, {})
        local columns = result.completion.menu.draw.columns
        local has_source = false
        for _, col in ipairs(columns) do
          if col[1] == "source_name" then
            has_source = true
            break
          end
        end
        assert.is_true(has_source, "Should have source_name column")
      end)

      it("should configure source_name component", function()
        local result = blink_cmp.opts({}, {})
        assert.is_table(result.completion.menu.draw.components)
        assert.is_table(result.completion.menu.draw.components.source_name)
      end)

      it("should have valid source_name width", function()
        local result = blink_cmp.opts({}, {})
        local source_name = result.completion.menu.draw.components.source_name
        assert.is_table(source_name.width)
        assert.equals(30, source_name.width.max)
        assert.is_number(source_name.width.max)
        assert.is_true(source_name.width.max > 0)
      end)

      it("should have source_name text function", function()
        local result = blink_cmp.opts({}, {})
        local source_name = result.completion.menu.draw.components.source_name
        assert.is_function(source_name.text)
      end)

      it("should format source name with brackets", function()
        local result = blink_cmp.opts({}, {})
        local text_fn = result.completion.menu.draw.components.source_name.text
        local formatted = text_fn({ source_name = "LSP" })
        assert.equals("[LSP]", formatted)
      end)

      it("should have highlight configuration", function()
        local result = blink_cmp.opts({}, {})
        local source_name = result.completion.menu.draw.components.source_name
        assert.equals("BlinkCmpSource", source_name.highlight)
      end)

      it("should preserve existing opts", function()
        local existing_opts = {
          some_option = "value",
          nested = { key = "val" }
        }
        local result = blink_cmp.opts({}, existing_opts)
        -- Should merge with existing opts
        assert.is_table(result)
      end)

      it("should handle empty input opts", function()
        local result = blink_cmp.opts({}, {})
        assert.is_table(result)
        assert.is_not_nil(result.signature)
        assert.is_not_nil(result.completion)
      end)
    end)
  end)

  describe("Edge cases", function()
    it("should handle module loading errors gracefully", function()
      local success = pcall(function()
        return require("plugins.blink")
      end)
      assert.is_true(success, "Loading blink configuration should not error")
    end)

    it("should not have duplicate plugin entries", function()
      local names = {}
      for _, plugin in ipairs(blink_config) do
        if plugin[1] then
          local name = plugin[1]
          assert.is_false(names[name], "Duplicate plugin: " .. name)
          names[name] = true
        end
      end
    end)
  end)
end)
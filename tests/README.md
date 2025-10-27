# Test Suite for Neovim Configuration

This directory contains comprehensive unit tests for the Neovim configuration changes.

## Structure

- `plugins/` - Tests for plugin configurations
  - `lsp_spec.lua` - LSP plugin configuration tests
  - `blink_spec.lua` - Blink completion tests
  - `origami_spec.lua` - Origami folding tests
- `configs/` - Tests for configuration modules
  - `lspconfig_spec.lua` - LSPConfig module tests
- `core/` - Tests for core modules
  - `autocmds_spec.lua` - Autocmd tests
- `integration_spec.lua` - Integration tests
- `run_tests.lua` - Test runner script
- `minimal_init.vim` - Minimal init for test environment

## Running Tests

### Prerequisites

Install plenary.nvim if not already installed:
```bash
git clone https://github.com/nvim-lua/plenary.nvim \
  ~/.local/share/nvim/site/pack/plenary/start/plenary.nvim
```

### Run All Tests

```bash
nvim --headless -c "luafile tests/run_tests.lua" -c "quitall"
```

### Run Specific Test File

```bash
nvim --headless -c "PlenaryBustedFile tests/plugins/lsp_spec.lua" -c "quitall"
```

### Run Tests in Neovim

```vim
:PlenaryBustedDirectory tests/
```

Or for a specific file:
```vim
:PlenaryBustedFile tests/plugins/lsp_spec.lua
```

## Test Coverage

The test suite covers:

### LSP Plugin (`lua/plugins/lsp.lua`)
- ✅ Plugin structure validation
- ✅ Mason configuration
- ✅ Mason-LSPConfig setup
- ✅ LSP Signature configuration
- ✅ LSPConfig main plugin
- ✅ SchemaStore integration
- ✅ Plugin loading order
- ✅ Dependency validation
- ✅ Edge cases and error handling

### Blink Completion (`lua/plugins/blink.lua`)
- ✅ Plugin structure
- ✅ Import configuration
- ✅ Opts function behavior
- ✅ Signature configuration
- ✅ Ghost text settings
- ✅ Auto brackets
- ✅ Fuzzy matching
- ✅ Menu column configuration
- ✅ Component customization
- ✅ Edge cases

### Origami Folding (`lua/plugins/origami.lua`)
- ✅ Plugin configuration
- ✅ Fold text settings
- ✅ Key mappings
- ✅ Event loading
- ✅ Edge cases

### LSPConfig Module (`lua/configs/lspconfig.lua`)
- ✅ Module loading
- ✅ NvChad integration
- ✅ Configuration validity
- ✅ No global pollution

### Autocmds (`lua/core/autocmds.lua`)
- ✅ Module loading
- ✅ Autocmd registration
- ✅ BufReadPost handling
- ✅ BufDelete handling
- ✅ VimEnter handling
- ✅ VimLeavePre handling
- ✅ NvChad integration
- ✅ Edge cases

### Integration Tests
- ✅ Cross-plugin dependencies
- ✅ Configuration consistency
- ✅ No conflicting definitions
- ✅ Valid event configurations
- ✅ Performance characteristics

## Test Statistics

- **Total Test Files**: 6
- **Total Test Suites**: 30+
- **Total Test Cases**: 150+
- **Code Coverage**: Major functionality and edge cases

## Writing New Tests

Follow these conventions:

1. Use descriptive test names
2. Group related tests in `describe` blocks
3. Use `before_each` for setup
4. Test happy paths, edge cases, and error conditions
5. Keep tests isolated and independent
6. Mock external dependencies when needed

Example:
```lua
describe("Feature Name", function()
  describe("sub-feature", function()
    it("should do something specific", function()
      -- Arrange
      local input = "test"
      
      -- Act
      local result = some_function(input)
      
      -- Assert
      assert.equals("expected", result)
    end)
  end)
end)
```

## Continuous Integration

These tests are designed to run in CI/CD pipelines. Example GitHub Actions workflow:

```yaml
name: Tests
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: rhysd/action-setup-vim@v1
        with:
          neovim: true
      - name: Install plenary
        run: |
          git clone https://github.com/nvim-lua/plenary.nvim \
            ~/.local/share/nvim/site/pack/plenary/start/plenary.nvim
      - name: Run tests
        run: nvim --headless -c "luafile tests/run_tests.lua" -c "quitall"
```
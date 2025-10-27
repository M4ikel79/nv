-- tests/run_tests.lua
-- Test runner for all test files

-- Setup path to find modules
package.path = package.path .. ";./lua/?.lua;./lua/?/init.lua"

-- Try to load plenary
local plenary_status, plenary = pcall(require, "plenary.test_harness")

if not plenary_status then
  print("Error: plenary.nvim is not available")
  print("Please install plenary.nvim to run tests:")
  print("  - Add 'nvim-lua/plenary.nvim' to your plugins")
  print("  - Or run: git clone https://github.com/nvim-lua/plenary.nvim ~/.local/share/nvim/site/pack/plenary/start/plenary.nvim")
  os.exit(1)
end

-- Run all tests
print("Running test suite...")
print("=" .. string.rep("=", 60))

plenary.test_directory("tests", {
  minimal_init = "tests/minimal_init.vim",
  sequential = true,
})

print("=" .. string.rep("=", 60))
print("Test suite completed")
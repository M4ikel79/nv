-- lua/plugins/testing.lua
-- Enhanced Neotest configuration for comprehensive test management
-- Supports Python, Lua, Go, Rust, JavaScript/TypeScript with full DAP integration

return {
  -- CORE NEOTEST PLUGIN
  {
    "nvim-neotest/neotest",
    event = "VeryLazy",
    dependencies = {
      -- Required dependencies
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",

      -- Language-specific adapters
      "nvim-neotest/neotest-python",
      "nvim-neotest/neotest-plenary",
      "akinsho/neotest-go",
      "rouge8/neotest-rust",
      "marilari88/neotest-vitest",
      "haydenmeade/neotest-jest",
      "nvim-neotest/neotest-vim-test",
      "vim-test/vim-test",
    },
    config = function()
      -- HELPER FUNCTIONS

      -- Auto-detect Python virtualenv
      local function get_python_path()
        local cwd = vim.fn.getcwd()
        local venv_paths = {
          cwd .. "/.venv/bin/python",
          cwd .. "/venv/bin/python",
          cwd .. "/env/bin/python",
          cwd .. "/.env/bin/python",
        }

        for _, path in ipairs(venv_paths) do
          if vim.fn.executable(path) == 1 then
            return path
          end
        end

        return "python3"
      end

      -- NEOTEST SETUP

      require("neotest").setup {
        -- ADAPTERS
        adapters = {
          -- Python: pytest and unittest
          require "neotest-python" {
            dap = {
              justMyCode = false,
              console = "integratedTerminal",
            },
            args = { "--log-level", "DEBUG", "-vv" },
            runner = "pytest",
            python = get_python_path,
            -- Use pytest for test discovery
            is_test_file = function(file_path)
              return vim.endswith(file_path, ".py")
                and (
                  vim.startswith(vim.fn.fnamemodify(file_path, ":t"), "test_")
                  or vim.endswith(file_path, "_test.py")
                )
            end,
          },

          -- Lua: plenary test adapter
          require("neotest-plenary").setup {
            min_init = "./scripts/tests/minimal_init.lua",
          },

          -- Go: go test runner
          require "neotest-go" {
            experimental = {
              test_table = true,
            },
            args = { "-count=1", "-timeout=60s", "-race", "-coverprofile=coverage.out" },
            recursive_run = true,
            dap_go_enabled = true,
          },

          -- Rust: cargo test
          require "neotest-rust" {
            args = { "--no-capture", "--no-fail-fast" },
            dap_adapter = "codelldb",
          },

          -- JavaScript/TypeScript: Vitest
          require "neotest-vitest" {
            filter_dir = function(name)
              return name ~= "node_modules" and name ~= ".git"
            end,
            env = { CI = true },
            vitestCommand = "npx vitest",
          },

          -- JavaScript/TypeScript: Jest
          require "neotest-jest" {
            jestCommand = "npm test --",
            jestConfigFile = "custom.jest.config.ts",
            env = { CI = true },
            cwd = function()
              return vim.fn.getcwd()
            end,
          },

          -- Fallback: vim-test adapter
          require "neotest-vim-test" {
            ignore_file_types = { "python", "vim", "lua", "go", "rust", "javascript", "typescript" },
          },
        },

        -- BENCHMARK
        benchmark = {
          enabled = true,
        },

        -- DISCOVERY
        discovery = {
          enabled = true,
          concurrent = 0, -- Auto-detect based on CPU
          filter_dir = function(name, rel_path, root)
            -- Ignore common directories that don't contain tests
            local ignore = {
              "node_modules",
              ".git",
              ".venv",
              "venv",
              "env",
              "__pycache__",
              ".pytest_cache",
              "target",
              "build",
              "dist",
              ".next",
              ".nuxt",
            }
            return not vim.tbl_contains(ignore, name)
          end,
        },

        -- DIAGNOSTIC INTEGRATION
        diagnostic = {
          enabled = true,
          severity = vim.diagnostic.severity.ERROR,
        },

        -- DEFAULT STRATEGY
        default_strategy = "integrated",

        -- FLOATING WINDOWS
        floating = {
          border = "rounded",
          max_height = 0.8,
          max_width = 0.9,
          options = {
            winblend = 0,
          },
        },

        -- ICONS
        icons = {
          child_indent = "│",
          child_prefix = "├",
          collapsed = "─",
          expanded = "╮",
          failed = "",
          final_child_indent = " ",
          final_child_prefix = "╰",
          non_collapsible = "─",
          notify = "",
          passed = "",
          running = "",
          running_animated = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
          skipped = "",
          test = "",
          unknown = "",
          watching = "",
        },

        -- HIGHLIGHTS
        highlights = {
          adapter_name = "NeotestAdapterName",
          border = "NeotestBorder",
          dir = "NeotestDir",
          expand_marker = "NeotestExpandMarker",
          failed = "NeotestFailed",
          file = "NeotestFile",
          focused = "NeotestFocused",
          indent = "NeotestIndent",
          marked = "NeotestMarked",
          namespace = "NeotestNamespace",
          passed = "NeotestPassed",
          running = "NeotestRunning",
          select_win = "NeotestWinSelect",
          skipped = "NeotestSkipped",
          target = "NeotestTarget",
          test = "NeotestTest",
          unknown = "NeotestUnknown",
          watching = "NeotestWatching",
        },

        -- JUMP
        jump = {
          enabled = true,
        },

        -- LOG LEVEL
        log_level = vim.log.levels.WARN,

        -- OUTPUT
        output = {
          enabled = true,
          open_on_run = "short",
        },

        -- OUTPUT PANEL
        output_panel = {
          enabled = true,
          open = function()
            local height = math.floor(vim.o.lines * 0.25)
            vim.cmd("botright " .. height .. "split")
            return vim.api.nvim_get_current_win()
          end,
        },

        -- QUICKFIX
        quickfix = {
          enabled = true,
          open = false,
        },

        -- RUNNING
        running = {
          concurrent = true,
        },

        -- STATE
        state = {
          enabled = true,
        },

        -- STATUS
        status = {
          enabled = true,
          signs = true,
          virtual_text = true,
        },

        -- STRATEGIES
        strategies = {
          integrated = {
            height = 40,
            width = 120,
          },
        },

        -- SUMMARY
        summary = {
          enabled = true,
          animated = true,
          count = true,
          expand_errors = true,
          follow = true,
          mappings = {
            attach = "a",
            clear_marked = "M",
            clear_target = "T",
            debug = "d",
            debug_marked = "D",
            expand = { "<CR>", "<2-LeftMouse>" },
            expand_all = "e",
            help = "?",
            jumpto = "i",
            mark = "m",
            next_failed = "J",
            next_sibling = ">",
            output = "o",
            parent = "P",
            prev_failed = "K",
            prev_sibling = "<",
            run = "r",
            run_marked = "R",
            short = "O",
            stop = "u",
            target = "t",
            watch = "w",
          },
          open = function()
            vim.cmd "botright vsplit | vertical resize 60"
            return vim.api.nvim_get_current_win()
          end,
        },

        -- WATCH MODE
        watch = {
          enabled = true,
          symbol_queries = {
            python = [[
              ;query
              ;Captures imports and modules they're imported from
              (import_from_statement (_ (identifier) @symbol))
              (import_statement (_ (identifier) @symbol))
            ]],
            lua = [[
              ;query
              ;Captures module names in require calls
              (function_call
                name: ((identifier) @function (#eq? @function "require"))
                arguments: (arguments (string) @symbol))
            ]],
            go = [[
              ;query
              ;Captures imported types
              (qualified_type name: (type_identifier) @symbol)
              ;Captures package-local and built-in types
              (type_identifier)@symbol
              ;Captures imported function calls and variables/constants
              (selector_expression field: (field_identifier) @symbol)
              ;Captures package-local functions calls
              (call_expression function: (identifier) @symbol)
            ]],
            rust = [[
              ;query
              ;submodule import
              (mod_item name: (identifier) @symbol)
              ;single import
              (use_declaration
                argument: (scoped_identifier name: (identifier) @symbol))
              ;import list
              (use_declaration
                argument: (scoped_use_list
                  list: (use_list
                    [(scoped_identifier
                       path: (identifier)
                       name: (identifier) @symbol)
                     ((identifier) @symbol)])))
            ]],
            javascript = [[
              ;query
              ;Captures named imports
              (import_specifier name: (identifier) @symbol)
              ;Captures default import
              (import_clause (identifier) @symbol)
              ;Capture namespace imports
              (namespace_import (identifier) @symbol)
            ]],
            typescript = [[
              ;query
              ;Captures named imports
              (import_specifier name: (identifier) @symbol)
              ;Captures default import
              (import_clause (identifier) @symbol)
              ;Capture namespace imports
              (namespace_import (identifier) @symbol)
            ]],
            tsx = [[
              ;query
              ;Captures named imports
              (import_specifier name: (identifier) @symbol)
              ;Captures default import
              (import_clause (identifier) @symbol)
              ;Capture namespace imports
              (namespace_import (identifier) @symbol)
            ]],
          },
          filter_path = function(path, root)
            -- Only watch files under the project root
            return vim.startswith(path, root)
          end,
        },
      }

      -- CUSTOM HIGHLIGHT GROUPS
      vim.api.nvim_set_hl(0, "NeotestPassed", { fg = "#98c379", bold = true })
      vim.api.nvim_set_hl(0, "NeotestFailed", { fg = "#e06c75", bold = true })
      vim.api.nvim_set_hl(0, "NeotestRunning", { fg = "#61afef", bold = true })
      vim.api.nvim_set_hl(0, "NeotestSkipped", { fg = "#e5c07b" })
      vim.api.nvim_set_hl(0, "NeotestTest", { fg = "#abb2bf" })
      vim.api.nvim_set_hl(0, "NeotestNamespace", { fg = "#c678dd", italic = true })
      vim.api.nvim_set_hl(0, "NeotestFile", { fg = "#56b6c2" })
      vim.api.nvim_set_hl(0, "NeotestDir", { fg = "#61afef" })

      -- DIAGNOSTIC CONFIGURATION
      vim.diagnostic.config({
        virtual_text = {
          prefix = "●",
          spacing = 4,
          source = "if_many",
        },
        signs = true,
        underline = true,
        update_in_insert = false,
        severity_sort = true,
      }, vim.api.nvim_create_namespace "neotest")
    end,

    -- KEYMAPS
    keys = {
      -- RUN TESTS
      {
        "<leader>tt",
        function()
          require("neotest").run.run()
        end,
        desc = "Test: Run Nearest",
      },
      {
        "<leader>tT",
        function()
          require("neotest").run.run(vim.fn.expand "%")
        end,
        desc = "Test: Run File",
      },
      {
        "<leader>ta",
        function()
          require("neotest").run.run { suite = true }
        end,
        desc = "Test: Run All",
      },
      {
        "<leader>tl",
        function()
          require("neotest").run.run_last()
        end,
        desc = "Test: Run Last",
      },

      -- DEBUG TESTS
      {
        "<leader>td",
        function()
          require("neotest").run.run { strategy = "dap" }
        end,
        desc = "Test: Debug Nearest",
      },
      {
        "<leader>tD",
        function()
          require("neotest").run.run { vim.fn.expand "%", strategy = "dap" }
        end,
        desc = "Test: Debug File",
      },
      {
        "<leader>tL",
        function()
          require("neotest").run.run_last { strategy = "dap" }
        end,
        desc = "Test: Debug Last",
      },

      -- CONTROL
      {
        "<leader>ts",
        function()
          require("neotest").run.stop()
        end,
        desc = "Test: Stop",
      },
      {
        "<leader>tA",
        function()
          require("neotest").run.attach()
        end,
        desc = "Test: Attach",
      },

      -- OUTPUT
      {
        "<leader>to",
        function()
          require("neotest").output.open { enter = true, auto_close = true }
        end,
        desc = "Test: Show Output",
      },
      {
        "<leader>tO",
        function()
          require("neotest").output.open { enter = true, short = true }
        end,
        desc = "Test: Show Output (Short)",
      },
      {
        "<leader>tp",
        function()
          require("neotest").output_panel.toggle()
        end,
        desc = "Test: Toggle Output Panel",
      },
      {
        "<leader>tP",
        function()
          require("neotest").output_panel.clear()
        end,
        desc = "Test: Clear Output Panel",
      },

      -- SUMMARY
      {
        "<leader>tr",
        function()
          require("neotest").summary.toggle()
        end,
        desc = "Test: Toggle Summary",
      },
      {
        "<leader>tm",
        function()
          require("neotest").summary.run_marked()
        end,
        desc = "Test: Run Marked",
      },
      {
        "<leader>tM",
        function()
          require("neotest").summary.clear_marked()
        end,
        desc = "Test: Clear Marked",
      },

      -- WATCH MODE
      {
        "<leader>tw",
        function()
          require("neotest").watch.toggle(vim.fn.expand "%")
        end,
        desc = "Test: Toggle Watch File",
      },
      {
        "<leader>tW",
        function()
          require("neotest").watch.toggle()
        end,
        desc = "Test: Toggle Watch Nearest",
      },

      -- NAVIGATION
      {
        "[t",
        function()
          require("neotest").jump.prev()
        end,
        desc = "Test: Previous Test",
      },
      {
        "]t",
        function()
          require("neotest").jump.next()
        end,
        desc = "Test: Next Test",
      },
      {
        "[T",
        function()
          require("neotest").jump.prev { status = "failed" }
        end,
        desc = "Test: Previous Failed",
      },
      {
        "]T",
        function()
          require("neotest").jump.next { status = "failed" }
        end,
        desc = "Test: Next Failed",
      },

      -- QUICKFIX
      {
        "<leader>tq",
        function()
          require("neotest").quickfix.open()
        end,
        desc = "Test: Open Quickfix",
      },
    },
  },

  -- LANGUAGE ADAPTERS

  -- Python
  {
    "nvim-neotest/neotest-python",
    ft = "python",
  },

  -- Lua
  {
    "nvim-neotest/neotest-plenary",
    ft = "lua",
  },

  -- Go
  {
    "akinsho/neotest-go",
    ft = "go",
  },

  -- Rust
  {
    "rouge8/neotest-rust",
    ft = "rust",
  },

  -- JavaScript/TypeScript - Vitest
  {
    "marilari88/neotest-vitest",
    ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },

  -- JavaScript/TypeScript - Jest
  {
    "haydenmeade/neotest-jest",
    ft = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
  },

  -- Fallback
  {
    "nvim-neotest/neotest-vim-test",
    dependencies = { "vim-test/vim-test" },
  },
}

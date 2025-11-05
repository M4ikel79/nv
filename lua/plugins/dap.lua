-- lua/plugins/dap.lua
-- Complete DAP (Debug Adapter Protocol) configuration
-- Provides debugging capabilities for multiple languages

return {
  -- Core DAP plugin
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      -- Mason integration for automatic adapter installation
      "williamboman/mason.nvim",
      "jay-babu/mason-nvim-dap.nvim",

      -- UI components
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text",

      -- Language-specific extensions
      "mfussenegger/nvim-dap-python",

      -- Icons
      "nvim-tree/nvim-web-devicons",
    },
    keys = {
      -- Session management
      {
        "<F5>",
        function()
          require("dap").continue()
        end,
        desc = "Debug: Continue",
      },
      {
        "<leader>dc",
        function()
          require("dap").continue()
        end,
        desc = "Continue",
      },
      {
        "<leader>dC",
        function()
          require("dap").run_to_cursor()
        end,
        desc = "Run to Cursor",
      },
      {
        "<leader>dg",
        function()
          require("dap").goto_()
        end,
        desc = "Go to line (no execute)",
      },

      -- Stepping
      {
        "<F10>",
        function()
          require("dap").step_over()
        end,
        desc = "Debug: Step Over",
      },
      {
        "<F11>",
        function()
          require("dap").step_into()
        end,
        desc = "Debug: Step Into",
      },
      {
        "<F12>",
        function()
          require("dap").step_out()
        end,
        desc = "Debug: Step Out",
      },
      {
        "<leader>dj",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
      },
      {
        "<leader>dk",
        function()
          require("dap").step_into()
        end,
        desc = "Step Into",
      },
      {
        "<leader>do",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out",
      },
      {
        "<leader>dh",
        function()
          require("dap").step_back()
        end,
        desc = "Step Back",
      },

      -- Breakpoints
      {
        "<leader>db",
        function()
          require("dap").toggle_breakpoint()
        end,
        desc = "Toggle Breakpoint",
      },
      {
        "<leader>dB",
        function()
          require("dap").set_breakpoint(vim.fn.input "Breakpoint condition: ")
        end,
        desc = "Breakpoint Condition",
      },
      {
        "<leader>dl",
        function()
          require("dap").set_breakpoint(nil, nil, vim.fn.input "Log point message: ")
        end,
        desc = "Log Point",
      },

      -- Session control
      {
        "<leader>dp",
        function()
          require("dap").pause()
        end,
        desc = "Pause",
      },
      {
        "<leader>dr",
        function()
          require("dap").restart()
        end,
        desc = "Restart",
      },
      {
        "<leader>ds",
        function()
          require("dap").session()
        end,
        desc = "Session",
      },
      {
        "<leader>dt",
        function()
          require("dap").terminate()
        end,
        desc = "Terminate",
      },

      -- Widgets and UI
      {
        "<leader>dw",
        function()
          require("dap.ui.widgets").hover()
        end,
        desc = "Widgets",
      },
      {
        "<leader>dE",
        function()
          require("dapui").eval(vim.fn.input "[Expression] > ")
        end,
        desc = "Evaluate Input",
      },
      {
        "<leader>de",
        function()
          require("dapui").eval()
        end,
        mode = { "n", "v" },
        desc = "Evaluate",
      },
    },
    config = function()
      local dap = require "dap"
      local dapui = require "dapui"

      -- ============================================================
      -- MASON-NVIM-DAP SETUP
      -- ============================================================
      require("mason-nvim-dap").setup {
        -- Automatically install these debug adapters
        ensure_installed = {
          "python",
          "codelldb", -- Rust, C/C++
          "js", -- Node.js
          "bash",
          "delve", -- Go
        },
        automatic_installation = true,

        -- Handlers for automatic setup
        handlers = {
          function(config)
            require("mason-nvim-dap").default_setup(config)
          end,

          -- Python-specific handler
          python = function(config)
            config.adapters = {
              type = "executable",
              command = "python3",
              args = { "-m", "debugpy.adapter" },
            }
            require("mason-nvim-dap").default_setup(config)
          end,
        },
      }

      -- ============================================================
      -- DAP SIGNS
      -- ============================================================
      local signs = {
        { name = "DapBreakpoint", text = "", texthl = "DiagnosticSignError" },
        { name = "DapBreakpointCondition", text = "", texthl = "DiagnosticSignWarn" },
        { name = "DapBreakpointRejected", text = "", texthl = "DiagnosticSignError" },
        { name = "DapLogPoint", text = "", texthl = "DiagnosticSignInfo" },
        { name = "DapStopped", text = "󰁕", texthl = "DiagnosticSignWarn", linehl = "Visual" },
      }

      for _, sign in ipairs(signs) do
        vim.fn.sign_define(sign.name, {
          text = sign.text,
          texthl = sign.texthl,
          linehl = sign.linehl or "",
          numhl = sign.numhl or "",
        })
      end

      -- ============================================================
      -- DAP CONFIGURATIONS
      -- ============================================================

      -- Python configuration
      dap.configurations.python = {
        {
          type = "python",
          request = "launch",
          name = "Launch file",
          program = "${file}",
          pythonPath = function()
            local cwd = vim.fn.getcwd()
            -- Try to find virtual environment
            if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
              return cwd .. "/venv/bin/python"
            elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
              return cwd .. "/.venv/bin/python"
            else
              return "/usr/bin/python3"
            end
          end,
        },
        {
          type = "python",
          request = "launch",
          name = "Launch file with arguments",
          program = "${file}",
          args = function()
            local args_string = vim.fn.input "Arguments: "
            return vim.split(args_string, " +")
          end,
          pythonPath = function()
            local cwd = vim.fn.getcwd()
            if vim.fn.executable(cwd .. "/venv/bin/python") == 1 then
              return cwd .. "/venv/bin/python"
            elseif vim.fn.executable(cwd .. "/.venv/bin/python") == 1 then
              return cwd .. "/.venv/bin/python"
            else
              return "/usr/bin/python3"
            end
          end,
        },
        {
          type = "python",
          request = "attach",
          name = "Attach remote",
          connect = function()
            local host = vim.fn.input "Host [127.0.0.1]: "
            host = host ~= "" and host or "127.0.0.1"
            local port = tonumber(vim.fn.input "Port [5678]: ") or 5678
            return { host = host, port = port }
          end,
        },
      }

      -- JavaScript/TypeScript configuration
      dap.configurations.javascript = {
        {
          type = "node2",
          request = "launch",
          name = "Launch Program",
          program = "${file}",
          cwd = vim.fn.getcwd(),
          sourceMaps = true,
          protocol = "inspector",
          console = "integratedTerminal",
        },
      }
      dap.configurations.typescript = dap.configurations.javascript

      -- Rust configuration
      dap.configurations.rust = {
        {
          name = "Launch",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          args = {},
        },
      }

      -- C/C++ configuration
      dap.configurations.c = {
        {
          name = "Launch",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          args = {},
        },
      }
      dap.configurations.cpp = dap.configurations.c

      -- Go configuration
      dap.configurations.go = {
        {
          type = "delve",
          name = "Debug",
          request = "launch",
          program = "${file}",
        },
        {
          type = "delve",
          name = "Debug test",
          request = "launch",
          mode = "test",
          program = "${file}",
        },
        {
          type = "delve",
          name = "Debug test (go.mod)",
          request = "launch",
          mode = "test",
          program = "./${relativeFileDirname}",
        },
      }

      -- ============================================================
      -- DAP ADAPTERS
      -- ============================================================

      -- Node.js adapter
      dap.adapters.node2 = {
        type = "executable",
        command = "node",
        args = { vim.fn.stdpath "data" .. "/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
      }

      -- CodeLLDB adapter (Rust, C, C++)
      dap.adapters.codelldb = {
        type = "server",
        port = "${port}",
        executable = {
          command = vim.fn.stdpath "data" .. "/mason/bin/codelldb",
          args = { "--port", "${port}" },
        },
      }

      -- Delve adapter (Go)
      dap.adapters.delve = {
        type = "server",
        port = "${port}",
        executable = {
          command = vim.fn.stdpath "data" .. "/mason/bin/dlv",
          args = { "dap", "-l", "127.0.0.1:${port}" },
        },
      }

      -- ============================================================
      -- DAP UI INTEGRATION
      -- ============================================================

      -- Automatically open/close dapui
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end

      -- ============================================================
      -- PYTHON DAP SETUP
      -- ============================================================

      require("dap-python").setup "python3"

      -- Python test keybindings (removed to avoid conflict with neotest)
    end,
  },

  -- ============================================================
  -- DAP UI
  -- ============================================================
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "nvim-neotest/nvim-nio" },
    opts = {
      icons = { expanded = "▾", collapsed = "▸", current_frame = "▸" },
      mappings = {
        expand = { "<CR>", "<2-LeftMouse>" },
        open = "o",
        remove = "d",
        edit = "e",
        repl = "r",
        toggle = "t",
      },
      element_mappings = {},
      expand_lines = vim.fn.has "nvim-0.7" == 1,
      layouts = {
        {
          elements = {
            { id = "scopes", size = 0.25 },
            { id = "breakpoints", size = 0.25 },
            { id = "stacks", size = 0.25 },
            { id = "watches", size = 0.25 },
          },
          size = 40,
          position = "left",
        },
        {
          elements = {
            { id = "repl", size = 0.5 },
            { id = "console", size = 0.5 },
          },
          size = 10,
          position = "bottom",
        },
      },
      controls = {
        enabled = true,
        element = "repl",
        icons = {
          pause = "",
          play = "",
          step_into = "",
          step_over = "",
          step_out = "",
          step_back = "",
          run_last = "↻",
          terminate = "",
        },
      },
      floating = {
        max_height = nil,
        max_width = nil,
        border = "single",
        mappings = {
          close = { "q", "<Esc>" },
        },
      },
      windows = { indent = 1 },
      render = {
        max_type_length = nil,
        max_value_lines = 100,
      },
    },
    keys = {
      {
        "<leader>du",
        function()
          require("dapui").toggle()
        end,
        desc = "Toggle DAP UI",
      },
      {
        "<leader>dU",
        function()
          require("dapui").open { reset = true }
        end,
        desc = "Reset DAP UI",
      },
    },
  },

  -- ============================================================
  -- DAP VIRTUAL TEXT
  -- ============================================================
  {
    "theHamsta/nvim-dap-virtual-text",
    opts = {
      enabled = true,
      enabled_commands = true,
      highlight_changed_variables = true,
      highlight_new_as_changed = false,
      show_stop_reason = true,
      commented = false,
      only_first_definition = true,
      all_references = false,
      clear_on_continue = false,
      display_callback = function(variable, buf, stackframe, node, options)
        if options.virt_text_pos == "inline" then
          return " = " .. variable.value:gsub("%s+", " ")
        else
          return variable.name .. " = " .. variable.value:gsub("%s+", " ")
        end
      end,
      virt_text_pos = vim.fn.has "nvim-0.10" == 1 and "inline" or "eol",
      all_frames = false,
      virt_lines = false,
      virt_text_win_col = nil,
    },
  },
}

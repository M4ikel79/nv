-- ~/.config/nvim/lua/plugins/linting.lua
-- Linting & diagnostics configuration using nvim-lint and trouble.nvim

return {
  -- nvim-lint: Asynchronous linter
  {
    "mfussenegger/nvim-lint",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      local lint = require "lint"

      -- Configure linters by filetype
      lint.linters_by_ft = {
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
        javascriptreact = { "eslint_d" },
        typescriptreact = { "eslint_d" },
        python = { "ruff" },
        lua = { "luacheck" },
        markdown = { "markdownlint" },
        yaml = { "yamllint" },
        json = { "jsonlint" },
        sh = { "shellcheck" },
        dockerfile = { "hadolint" },
        go = { "golangcilint" },
        rust = { "clippy" },
      }

      -- Create autocommand for linting
      local lint_augroup = vim.api.nvim_create_augroup("nvim_lint", { clear = true })

      vim.api.nvim_create_autocmd({ "BufWritePost", "BufReadPost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          -- Try lint without arguments to run linters defined in linters_by_ft
          lint.try_lint()

          -- Optionally run specific linters regardless of filetype
          -- lint.try_lint("cspell")
        end,
      })

      -- Create user command to manually trigger linting
      vim.api.nvim_create_user_command("Lint", function()
        lint.try_lint()
      end, { desc = "Trigger linting for current file" })

      -- Optional: Customize diagnostic display for linters
      -- local ns = lint.get_namespace("eslint_d")
      -- vim.diagnostic.config({ virtual_text = true }, ns)
    end,
  },

  -- trouble.nvim: Pretty diagnostics, references, and more
  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    keys = {
      {
        "<leader>xx",
        "<cmd>Trouble diagnostics toggle<cr>",
        desc = "Diagnostics (Trouble)",
      },
      {
        "<leader>xX",
        "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
        desc = "Buffer Diagnostics (Trouble)",
      },
      {
        "<leader>cs",
        "<cmd>Trouble symbols toggle focus=false<cr>",
        desc = "Symbols (Trouble)",
      },
      {
        "<leader>cl",
        "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      {
        "<leader>xL",
        "<cmd>Trouble loclist toggle<cr>",
        desc = "Location List (Trouble)",
      },
      {
        "<leader>xQ",
        "<cmd>Trouble qflist toggle<cr>",
        desc = "Quickfix List (Trouble)",
      },
    },
    opts = {
      -- Basic configuration
      auto_close = false,
      auto_open = false,
      auto_preview = true,
      auto_refresh = true,
      focus = false,
      follow = true,
      indent_guides = true,
      multiline = true,

      -- Window configuration
      win = {},
      preview = {
        type = "main",
        scratch = true,
      },

      -- Key mappings
      keys = {
        ["?"] = "help",
        r = "refresh",
        R = "toggle_refresh",
        q = "close",
        o = "jump_close",
        ["<esc>"] = "cancel",
        ["<cr>"] = "jump",
        ["<2-leftmouse>"] = "jump",
        ["<c-s>"] = "jump_split",
        ["<c-v>"] = "jump_vsplit",
        ["}"] = "next",
        ["]]"] = "next",
        ["{"] = "prev",
        ["[["] = "prev",
        dd = "delete",
        d = { action = "delete", mode = "v" },
        i = "inspect",
        p = "preview",
        P = "toggle_preview",
        zo = "fold_open",
        zO = "fold_open_recursive",
        zc = "fold_close",
        zC = "fold_close_recursive",
        za = "fold_toggle",
        zA = "fold_toggle_recursive",
        zm = "fold_more",
        zM = "fold_close_all",
        zr = "fold_reduce",
        zR = "fold_open_all",
      },

      -- Mode configurations
      modes = {
        -- Custom mode: diagnostics for current buffer only
        diagnostics_buffer = {
          mode = "diagnostics",
          filter = { buf = 0 },
        },
        -- Enhanced symbols mode
        symbols = {
          desc = "document symbols",
          mode = "lsp_document_symbols",
          focus = false,
          win = { position = "right" },
          filter = {
            ["not"] = { ft = "lua", kind = "Package" },
            any = {
              ft = { "help", "markdown" },
              kind = {
                "Class",
                "Constructor",
                "Enum",
                "Field",
                "Function",
                "Interface",
                "Method",
                "Module",
                "Namespace",
                "Package",
                "Property",
                "Struct",
                "Trait",
              },
            },
          },
        },
      },
    },
    config = function(_, opts)
      -- Load NvChad theme for trouble if available
      if vim.g.base46_cache then
        local trouble_cache = vim.g.base46_cache .. "trouble"
        if vim.fn.filereadable(trouble_cache) == 1 then
          dofile(trouble_cache)
        end
      end

      require("trouble").setup(opts)
    end,
  },
}

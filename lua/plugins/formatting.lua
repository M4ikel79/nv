-- ~/.config/nvim/lua/plugins/formatting.lua
-- Code formatting configuration using conform.nvim

return {
  "stevearc/conform.nvim",
  event = "BufWritePre",
  opts = {
    -- Define formatters by filetype
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "isort", "black" },
      javascript = { "prettierd", "prettier", stop_after_first = true },
      typescript = { "prettierd", "prettier", stop_after_first = true },
      javascriptreact = { "prettierd", "prettier", stop_after_first = true },
      typescriptreact = { "prettierd", "prettier", stop_after_first = true },
      json = { "prettierd", "prettier", stop_after_first = true },
      yaml = { "prettierd", "prettier", stop_after_first = true },
      markdown = { "prettierd", "prettier", stop_after_first = true },
      html = { "prettierd", "prettier", stop_after_first = true },
      css = { "prettierd", "prettier", stop_after_first = true },
      scss = { "prettierd", "prettier", stop_after_first = true },
      go = { "goimports", "gofmt" },
      rust = { "rustfmt" },
      sh = { "shfmt" },
      -- Use the "*" filetype to run formatters on all files
      ["*"] = { "codespell" },
      -- Use the "_" filetype for files without other formatters
      ["_"] = { "trim_whitespace" },
    },

    -- Default format options
    default_format_opts = {
      lsp_format = "fallback",
    },

    -- Format on save configuration
    format_on_save = function(bufnr)
      -- Disable with a global or buffer-local variable
      if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
        return
      end

      -- Disable autoformat for files in certain paths
      local bufname = vim.api.nvim_buf_get_name(bufnr)
      if bufname:match "/node_modules/" then
        return
      end

      return {
        timeout_ms = 500,
        lsp_format = "fallback",
      }
    end,

    -- Notification settings
    notify_on_error = true,
    notify_no_formatters = true,

    -- Custom formatters and overrides
    formatters = {
      -- Example: Customize shfmt
      shfmt = {
        append_args = { "-i", "2" },
      },
    },
  },

  config = function(_, opts)
    require("conform").setup(opts)

    -- Create user commands for format control
    vim.api.nvim_create_user_command("FormatDisable", function(args)
      if args.bang then
        -- FormatDisable! disables formatting for current buffer only
        vim.b.disable_autoformat = true
      else
        vim.g.disable_autoformat = true
      end
      vim.notify("Autoformat disabled", vim.log.levels.INFO)
    end, {
      desc = "Disable autoformat-on-save",
      bang = true,
    })

    vim.api.nvim_create_user_command("FormatEnable", function()
      vim.b.disable_autoformat = false
      vim.g.disable_autoformat = false
      vim.notify("Autoformat enabled", vim.log.levels.INFO)
    end, {
      desc = "Re-enable autoformat-on-save",
    })

    -- Format command with range support
    vim.api.nvim_create_user_command("Format", function(args)
      local range = nil
      if args.count ~= -1 then
        local end_line = vim.api.nvim_buf_get_lines(0, args.line2 - 1, args.line2, true)[1]
        range = {
          start = { args.line1, 0 },
          ["end"] = { args.line2, end_line:len() },
        }
      end
      require("conform").format { async = true, lsp_format = "fallback", range = range }
    end, { range = true, desc = "Format buffer or range" })
  end,
}

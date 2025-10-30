-- Comprehensive completion configuration with blink.cmp, LuaSnip, and friendly-snippets
return {
  -- Import NvChad's blink configuration
  { import = "nvchad.blink.lazyspec" },

  -- LuaSnip - Powerful snippet engine
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    dependencies = {
      -- Friendly snippets collection
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local ls = require "luasnip"

      -- LuaSnip configuration
      ls.config.set_config {
        history = true,
        updateevents = "TextChanged,TextChangedI",
        enable_autosnippets = true,
        ext_opts = {
          [require("luasnip.util.types").choiceNode] = {
            active = {
              virt_text = { { "●", "GruvboxOrange" } },
            },
          },
        },
      }

      -- Load friendly-snippets
      require("luasnip.loaders.from_vscode").lazy_load()

      -- Load custom snippets from ~/.config/nvim/snippets if they exist
      require("luasnip.loaders.from_vscode").lazy_load {
        paths = { vim.fn.stdpath "config" .. "/snippets" },
      }

      -- Optional: Load lua snippets from ~/.config/nvim/lua/snippets
      require("luasnip.loaders.from_lua").lazy_load {
        paths = { vim.fn.stdpath "config" .. "/lua/snippets" },
      }

      -- Keymaps for LuaSnip navigation
      vim.keymap.set({ "i", "s" }, "<C-k>", function()
        if ls.expand_or_jumpable() then
          ls.expand_or_jump()
        end
      end, { silent = true, desc = "LuaSnip: Expand or jump forward" })

      vim.keymap.set({ "i", "s" }, "<C-j>", function()
        if ls.jumpable(-1) then
          ls.jump(-1)
        end
      end, { silent = true, desc = "LuaSnip: Jump backward" })

      vim.keymap.set({ "i", "s" }, "<C-l>", function()
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end, { silent = true, desc = "LuaSnip: Cycle choice node" })
    end,
  },

  -- Friendly snippets - Community-driven snippet collection
  {
    "rafamadriz/friendly-snippets",
    lazy = true,
  },

  -- Blink.cmp - Main completion engine
  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      -- Signature help configuration
      opts.signature = { enabled = true }

      -- Completion configuration
      opts.completion = opts.completion or {}
      opts.completion.ghost_text = { enabled = true }
      opts.completion.accept = opts.completion.accept or {}
      opts.completion.accept.auto_brackets = { enabled = true }

      -- Use Rust fuzzy matcher for better performance
      opts.fuzzy = { implementation = "prefer_rust" }

      -- Configure LuaSnip as the snippet engine
      opts.snippets = {
        preset = "luasnip",
      }

      -- Sources configuration
      opts.sources = opts.sources or {}
      opts.sources.default = { "lsp", "path", "snippets", "buffer" }

      -- Snippet source specific options
      opts.sources.providers = opts.sources.providers or {}
      opts.sources.providers.snippets = {
        name = "snippets",
        module = "blink.cmp.sources.snippets",
        score_offset = 3,
        opts = {
          friendly_snippets = true,
          search_paths = { vim.fn.stdpath "config" .. "/snippets" },
          -- Extended filetypes for framework-specific snippets
          -- See: https://github.com/rafamadriz/friendly-snippets/tree/main/snippets/frameworks
          use_friendly_snippets = true,
          extended_filetypes = {
            -- Examples (uncomment and customize as needed):
            -- typescript = { "tsdoc" },
            -- javascript = { "jsdoc" },
            lua = { "luadoc" },
            -- python = { "pydoc" },
            -- rust = { "rustdoc" },
            -- go = { "godoc" },
          },
        },
      }

      -- Completion menu appearance
      opts.completion.menu = opts.completion.menu or {}
      opts.completion.menu.draw = opts.completion.menu.draw or {}
      opts.completion.menu.draw.columns = {
        { "kind_icon" },
        { "label", "label_description", gap = 1 },
        { "source_name" },
      }

      opts.completion.menu.draw.components = {
        source_name = {
          width = { max = 30 },
          text = function(ctx)
            return "[" .. ctx.source_name .. "]"
          end,
          highlight = "BlinkCmpSource",
        },
      }

      return opts
    end,
  },
}

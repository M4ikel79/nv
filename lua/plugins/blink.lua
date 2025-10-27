return {
  { import = "nvchad.blink.lazyspec" },

  {
    "saghen/blink.cmp",
    opts = function(_, opts)
      opts.signature = { enabled = true }

      opts.completion = opts.completion or {}
      opts.completion.ghost_text = { enabled = true }

      opts.completion.accept = opts.completion.accept or {}
      opts.completion.accept.auto_brackets = { enabled = true }

      opts.fuzzy = { implementation = "prefer_rust" }

      opts.completion.menu = opts.completion.menu or {}
      opts.completion.menu.draw = opts.completion.menu.draw or {}
      opts.completion.menu.draw.columns = {
        { "kind_icon" },
        { "label", "label_description", gap = 1 },
        { "source_name" }, -- Shows [LSP], [Buffer], etc.
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

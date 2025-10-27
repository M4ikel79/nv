return {
  "chrisgrieser/nvim-origami",
  event = "VeryLazy",
  opts = {
    foldtext = {
      lineCount = {
        template = "  %d",
      },
    },
  },
  keys = {
    { "za", "za", desc = "toggle fold", mode = "n" },
    { "zp", "zk", desc = "previous fold", mode = "n" },
    { "zn", "zj", desc = "next fold", mode = "n" },
  },
}

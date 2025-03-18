return {
  {
    "kevinhwang91/nvim-ufo",
    event = "BufReadPost",
    dependencies = { "kevinhwang91/promise-async" },
    opts = {
      provider_selector = function(bufnr, filetype, buftype)
        return { "treesitter", "indent" }
      end,
    },
    config = function(_, opts)
      -- Enable ufo
      require("ufo").setup(opts)
      vim.o.foldcolumn = "1" -- Show fold column
      vim.o.foldlevel = 99 -- Start with all folds open
      vim.o.foldlevelstart = 99
      vim.o.foldenable = true
    end,
  },
  {
    "beauwilliams/focus.nvim",
    event = "VeryLazy",
    config = true,
  },
  {
    "chrisgrieser/nvim-origami",
    event = "VeryLazy",
    opts = {}, -- needed even when using default config
  },
}

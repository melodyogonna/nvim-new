return {
  -- Wakatime
  { "wakatime/vim-wakatime", event = "VeryLazy" },
  -- vim test
  { "vim-test/vim-test", event = "VeryLazy" },
  -- Fox themes
  { "rebelot/kanagawa.nvim", event = "User AstroFile" },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function() require("nvim-surround").setup {} end,
  },
  {
    "tpope/vim-dispatch",
    event = "VeryLazy",
  },
  {
    "stevearc/oil.nvim",
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      skip_confirm_for_simple_edits = true,
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  },
  {
    "davidmh/mdx.nvim",
    config = true,
    dependencies = { "nvim-treesitter/nvim-treesitter" },
  },
  { "sindrets/diffview.nvim", event = "VeryLazy" },

  { "numToStr/Comment.nvim", enabled = false },
  { "stevearc/dressing.nvim", enabled = false },
  { "stevearc/aerial.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
  { "folke/neoconf.nvim", enabled = false },
  { "Shatur/neovim-session-manager", enabled = false },
  { "NvChad/nvim-colorizer.lua", enabled = false },
  { "RRethy/vim-illuminate", enabled = false },
  { "s1n7ax/nvim-window-picker", enabled = false },
  { "stevearc/resession.nvim", enabled = false },
  { "NMAC427/guess-indent.nvim", enabled = false },
  { "mrjones2014/smart-splits.nvim", enabled = false },
  { "echasnovski/mini.bufremove", enabled = false },
}

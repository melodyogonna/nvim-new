return {
  -- Wakatime
  { "wakatime/vim-wakatime", event = "VeryLazy" },
  -- vim test
  { "vim-test/vim-test", event = "VeryLazy" },
  -- Fox themes
  { "rebelot/kanagawa.nvim", event = "User AstroFile" },

  { "tpope/vim-fugitive", cmd = "G" },

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

  { "numToStr/Comment.nvim", enabled = false },
  { "stevearc/dressing.nvim", enabled = false },
  { "stevearc/aerial.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
  { "folke/neoconf.nvim", enabled = false },
  { "onsails/lspkind.nvim", enabled = false },
  { "Shatur/neovim-session-manager", enabled = false },
  { "NvChad/nvim-colorizer.lua", enabled = false },
  { "RRethy/vim-illuminate", enabled = false },
  { "kevinhwang91/nvim-ufo", enabled = false },
  { "s1n7ax/nvim-window-picker", enabled = false },
  { "stevearc/resession.nvim", enabled = false },
  { "NMAC427/guess-indent.nvim", enabled = false },
  { "mrjones2014/smart-splits.nvim", enabled = false },
  { "echasnovski/mini.bufremove", enabled = false },
}

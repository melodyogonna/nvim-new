return {
  -- Wakatime
  { "wakatime/vim-wakatime", event = "VeryLazy" },
  -- vim test
  { "vim-test/vim-test", event = "VeryLazy" },
  -- Fox themes
  { "EdenEast/nightfox.nvim", event = "User AstroFile" },
  { "folke/tokyonight.nvim", event = "User AstroFile" },
  { "rebelot/kanagawa.nvim", event = "User AstroFile" },

  { "tpope/vim-fugitive", cmd = "G" },
  { "simrat39/rust-tools.nvim", ft = "rust" },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "rust_analyzer" },
    },
  },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function() require("nvim-surround").setup {} end,
  },
  {
    "amadeus/vim-mjml",
    ft = "mjml",
  },
  {
    "tpope/vim-dispatch",
    event = "VeryLazy",
  },

  { "rcarriga/nvim-notify", enabled = false },
  { "Shatur/neovim-session-manager", enabled = false },
}

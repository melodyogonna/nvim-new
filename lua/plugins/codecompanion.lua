return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    strategies = {
      chat = {
        adapter = "gemini",
        keymaps = {
          completion = {
            modes = {
              i = { "<C-Space>" },
            },
          },
        },
      },
      inline = {
        adapter = "gemini",
      },
    },
    adapters = {
      gemini = function()
        return require("codecompanion.adapters").extend("gemini", {
          env = {
            api_key = os.getenv "GEMINI_KEY",
          },
        })
      end,
    },
  },
}

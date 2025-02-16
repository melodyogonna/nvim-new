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
        slash_commands = {
          ["buffer"] = {
            opts = {
              provider = "telescope", -- default|telescope|mini_pick|fzf_lua
            },
          },
          ["file"] = {
            opts = {
              provider = "telescope", -- default|telescope|mini_pick|fzf_lua
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

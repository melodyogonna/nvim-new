return {
  "nvim-neotest/neotest",
  cmd = "Neotest",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-neotest/nvim-nio",
    "nvim-treesitter/nvim-treesitter",
    "antoinemadec/FixCursorHold.nvim",
    "haydenmeade/neotest-jest",
    "nvim-neotest/neotest-python",
    "fredrikaverpil/neotest-golang",
    {
      "nvim-neotest/neotest-vim-test",
      dependencies = { "vim-test/vim-test" },
    },
  },
  config = function()
    require("neotest").setup {
      adapters = {
        require "neotest-python",
        require "neotest-jest",
        require "neotest-golang",
        require "neotest-vim-test" { ignore_filetypes = { "python", "javascript", "go", "typescript" } },
      },
    }
  end,
}

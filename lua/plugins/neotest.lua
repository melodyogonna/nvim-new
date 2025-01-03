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
    "lawrence-laz/neotest-zig",
    "nvim-neotest/neotest-vim-test",
  },
  config = function()
    require("neotest").setup {
      adapters = {
        require "neotest-python",
        require "neotest-jest",
        require "neotest-golang",
        require "neotest-zig",
        require "neotest-vim-test" { ignore_filetypes = { "python", "javascript", "go", "typescript" } },
      },
    }
  end,
}

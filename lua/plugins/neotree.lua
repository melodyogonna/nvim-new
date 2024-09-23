return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
    opts = {
      window = {
        position = "right",
      },
      event_handlers = {
        {
          event = "file_opened",
          handler = function(file_path)
            --auto close
            require("neo-tree").close_all()
          end,
        },
      },
    },
  },
  { "MunifTanjim/nui.nvim", enabled = false },
}

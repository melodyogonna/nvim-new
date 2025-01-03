return {
  {
    "AstroNvim/astrocore",
    opts = {
      mappings = {
        -- first key is the mode
        n = {
          -- second key is the lefthand side of the map
          -- mappings seen under group name "Buffer"
          -- Vim test
          ["<leader>tt"] = { "<cmd>Neotest run<cr>", desc = "Test nearest" },
          ["<leader>tb"] = { "<cmd>Neotest run file<cr>", desc = "Test Buffer" },
          ["<leader>ts"] = { function() require("neotest").run.run { suite = true } end, desc = "Test suite" },
          ["<leader>tl"] = { "<cmd>Neotest run last<cr>", desc = "Test last" },
          ["<leader>to"] = { "<cmd>Neotest output<cr>", desc = "Test output" },
          ["<leader>td"] = {
            function() require("neotest").run.run { strategy = "dab", suite = false } end,
            desc = "Test Nearest with debug",
          },
          ["<leader>ta"] = { "<cmd>Neotest attach<cr>", desc = "Test attach" },

          ["<C-b>"] = { "<cmd>Oil<cr>", desc = "Toggle Explorer" },

          -- Obsidian
          ["<leader>o"] = { "<cmd>ObsidianWorkspace<cr>", desc = "Obsidian Workspace" },
          ["<leader>oo"] = { "<cmd>ObsidianQuickSwitch<cr>", desc = "Obsidian Open" },
          ["<leader>oi"] = { "<cmd>ObsidianTemplate<cr>", desc = "Obsidian Insert template" },
          ["<leader>of"] = { "<cmd>ObsidianSearch<cr>", desc = "Obsidian Search" },
          ["<leader>od"] = { "<cmd>ObsidianToday<cr>", desc = "Obsidian Daily" },
          ["<leader>on"] = { "<cmd>ObsidianNew<cr>", desc = "Obsidian New" },

          ["<leader>gg"] = { "<cmd>Neogit<cr>", desc = "Neogit Main Page" },
          -- quick save
          -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
          ["qn"] = { "<cmd>cn<cr>", desc = "Quickfix next" },
          ["qp"] = { "<cmd>cp<cr>", desc = "Quickfix previous" },
          ["<leader>co"] = { "<cmd>copen<cr>", desc = "Open quickfix list" },
          ["<leader>ct"] = { "<cmd>TodoQuickFix<cr>", desc = "Open quickfix list todo" },
          -- Todo comments
          ["]t"] = { function() require("todo-comments").jump_prev() end, desc = "Next todo comment" },
          ["[t"] = { function() require("todo-comments").jump_prev() end, desc = "Previous todo comment" },

          -- telescope
          ["<leader>ft"] = { "<cmd>TodoTelescope<cr>", desc = "Open telescope todo" },
        },
        t = {
          -- setting a mapping to false will disable it
          -- ["<esc>"] = false,
          ["<C-o>"] = { "<C-\\><C-n>", desc = "Normal mode term" },
        },
        v = {
          ["<leader>fc"] = {
            function() require("telescope.builtin").grep_string() end,
            desc = "Search selection under cursor",
          },
        },
      },
    },
  },
}

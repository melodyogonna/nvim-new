return {
  "obsidian-nvim/obsidian.nvim",
  -- the obsidian vault in this default config  ~/obsidian-vault
  -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand':
  -- event = { "bufreadpre " .. vim.fn.expand "~" .. "/my-vault/**.md" },
  lazy = true,
  cmd = { "ObsidianWorkspace" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
    {
      "AstroNvim/astrocore",
      opts = {
        mappings = {
          n = {
            ["gf"] = {
              function()
                if require("obsidian").util.cursor_on_markdown_link() then
                  return "<Cmd>ObsidianFollowLink<CR>"
                else
                  return "gf"
                end
              end,
              desc = "Obsidian Follow Link",
            },
          },
        },
      },
    },
  },
  opts = {
    notes_subdir = "Thoughts",
    new_notes_location = "notes_subdir",
    finder = "telescope.nvim",
    workspaces = {
      {
        name = "my_notes",
        path = "~/Documents/notes/my_notes",
      },
    },

    templates = {
      subdir = "templates",
      date_format = "%Y-%m-%d-%a",
      time_format = "%H:%M",
    },

    daily_notes = {
      folder = "Journals",
    },

    attachments = {
      img_folder = "Media",
      img_name_func = function() return string.format("Pasted image %s", os.date "%Y%m%d%H%M%S") end,
    },

    note_id_func = function(title)
      -- To match my Obsidian config, if no title is given at all then create a new note that simulates
      -- my random note settings, otherwise, do default Zettelkasten stuff.
      -- If I give a fully qualified name "including with .md" then that will be used
      if title == nil then return tostring(os.date "%Y-%M-%d-%H%M(%S)") end
      local suffix = ""
      -- If title is given, transform it into valid file name.
      suffix = title:gsub(" ", "-"):gsub("[^A-Za-z0-9-]", ""):lower()

      return tostring(os.time()) .. "-" .. suffix
    end,

    note_frontmatter_func = function(note)
      -- This is equivalent to the default frontmatter function.
      local out = { id = note.id, aliases = note.aliases, tags = note.tags }
      -- `note.metadata` contains any manually added fields in the frontmatter.
      -- So here we just make sure those fields are kept in the frontmatter.
      if note.metadata ~= nil and require("obsidian").util.table_length(note.metadata) > 0 then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end
      return out
    end,

    -- Optional, by default when you use `:ObsidianFollowLink` on a link to an external
    -- URL it will be ignored but you can customize this behavior here.
    follow_url_func = vim.ui.open or function(url) require("astrocore").system_open(url) end,
  },
}

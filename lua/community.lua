-- AstroCommunity: import any community modules here
-- We import this file in `lazy_setup.lua` before the `plugins/` folder.
-- This guarantees that the specs are processed before any user plugins.

---@type LazySpec
return {
  "AstroNvim/astrocommunity",
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.python-ruff" },
  { import = "astrocommunity.pack.vue", enabled = false },
  { import = "astrocommunity.pack.html-css", enabled = false },
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  -- import/override with your plugins folder
}

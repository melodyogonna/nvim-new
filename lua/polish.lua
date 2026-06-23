-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

return function()
  local g = vim.g
  g["test#strategy"] = "neovim"
  g["go_gopls_enabled"] = 0
end

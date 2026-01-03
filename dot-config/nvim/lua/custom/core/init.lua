require 'custom.core.options' -- Set basic options
require 'custom.core.keymaps' -- Set basic keymaps
require 'custom.core.autocmds' -- Set basic autocommands

-- Disable Python 3 provider for faster startup
-- TODO: Find permanent fix
vim.g.loaded_python3_provider = 0

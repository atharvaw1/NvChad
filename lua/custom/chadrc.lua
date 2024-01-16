---@type ChadrcConfig
local M = {}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
M.ui = { theme = 'catppuccin',
        transparency = false,
        tabufline = {
                enabled= false
              },
        }

return M

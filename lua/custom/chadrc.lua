---@type ChadrcConfig
local M = {}
M.mappings = require "custom.mappings"
M.plugins = "custom.plugins"
M.ui = { theme = 'tokyodark',
        transparency = false,
        statusline = {
          theme = "minimal", -- default/vscode/vscode_colored/minimal

          -- default/round/block/arrow (separators work only for "default" statusline theme;
          -- round and block will work for the minimal theme only)
          separator_style = "round",
          overriden_modules = nil,
        },
        tabufline = {
          enabled = false,
        },
       }

return M

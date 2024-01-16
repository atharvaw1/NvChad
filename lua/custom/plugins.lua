
local plugins = {

  -- In order to modify the `lspconfig` configuration:
    {
        "neovim/nvim-lspconfig",
        config = function()
            require "plugins.configs.lspconfig"
            require "custom.lspconfig"
        end,
    },
    {
        'xiyaowong/transparent.nvim',
        lazy = false

    },
    {
    'ThePrimeagen/vim-be-good',
    }
}
return plugins


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
      'ThePrimeagen/vim-be-good',
    },
    {
      'mfussenegger/nvim-dap'
    },
    {require("custom.harpoon")}
}
return plugins

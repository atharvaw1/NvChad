
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
      cmd = "VimBeGood",
    },
    {
      'mfussenegger/nvim-dap',
      config = function()
        require("core.utils").load_mappings("dap")
      end
    },
    {
      "rcarriga/nvim-dap-ui",
      dependencies = "mfussenegger/nvim-dap",
      config = function()
        local dap = require("dap")
        local dapui = require("dapui")
        dapui.setup()
        dap.listeners.after.event_initialized["dapui_config"] = function()
          dapui.open()
        end
        dap.listeners.before.event_terminated["dapui_config"] = function()
          dapui.close()
        end
        dap.listeners.before.event_exited["dapui_config"] = function()
          dapui.close()
        end
      end
    },
    {
      'mfussenegger/nvim-dap-python',
      dependencies = {
        'mfussenegger/nvim-dap',
        "rcarriga/nvim-dap-ui",
      },
      ft = 'python',
      config = function ()
        local path_linux = '~/.local/share/nvim/mason/packages/debugpy/venv/bin/python'
        local path_windows = 'python'
        require('dap-python').setup(path_windows)
        require("core.utils").load_mappings("dap_python")
      end
    },
    {require("custom.harpoon")},
}
return plugins

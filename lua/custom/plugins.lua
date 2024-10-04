local plugins = {

  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.lspconfig"
    end,
  },
  -- Terminal
  { require "custom.nvterm" },
  -- Formater
  { require "custom.conform" },
  -- Surround
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  -- {
  --   "mfussenegger/nvim-dap",
  --   config = function()
  --     require("core.utils").load_mappings "dap"
  --   end,
  -- },
  -- Debugger
  -- {
  --   "rcarriga/nvim-dap-ui",
  --   dependencies = "mfussenegger/nvim-dap",
  --   config = function()
  --     local dap = require "dap"
  --     local dapui = require "dapui"
  --     dapui.setup()
  --     dap.listeners.after.event_initialized["dapui_config"] = function()
  --       dapui.open()
  --     end
  --     dap.listeners.before.event_terminated["dapui_config"] = function()
  --       dapui.close()
  --     end
  --     dap.listeners.before.event_exited["dapui_config"] = function()
  --       dapui.close()
  --     end
  --   end,
  -- },
  -- {
  --   "mfussenegger/nvim-dap-python",
  --   dependencies = {
  --     "mfussenegger/nvim-dap",
  --     "rcarriga/nvim-dap-ui",
  --   },
  --   ft = "python",
  --   config = function()
  --     local path_linux = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
  --     local path_windows = "python"
  --     require("dap-python").setup(path_windows)
  --     require("core.utils").load_mappings "dap_python"
  --   end,
  -- },
  { require "custom.harpoon" },
  { require "custom.trouble" },
  {
    "ThePrimeagen/vim-be-good",
    cmd = "VimBeGood",
  },
  {
    "rmagatti/auto-session",
    lazy = false,
    config = function()
      require("auto-session").setup {
        log_level = "error",
        auto_session_suppress_dirs = { "~", "~/", "~/Projects", "~/Downloads", "/" },
        auto_save_enabled = true,
        auto_restore_enabled = true,
        session_lens = {
          -- If load_on_setup is set to false, one needs to eventually call `require("auto-session").setup_session_lens()` if they want to use session-lens.
          buftypes_to_ignore = {}, -- list of buffer types what should not be deleted from current session
          load_on_setup = true,
          theme_conf = { border = true },
          previewer = false,
        },
      }
    end,
  },
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set("i", "<C-g>", function()
        return vim.fn["codeium#Accept"]()
      end, { expr = true, silent = true })
      vim.keymap.set("i", "<C-x>", function()
        return vim.fn["codeium#Clear"]()
      end, { expr = true, silent = true })
    end,
  },

  { "ellisonleao/glow.nvim", config = true, cmd = "Glow" },

  {
    "2kabhishek/tdo.nvim",
    dependencies = "nvim-telescope/telescope.nvim",
    cmd = { "Tdo", "TdoEntry", "TdoNote", "TdoTodos", "TdoToggle", "TdoFind", "TdoFiles" },
    keys = { "[t", "]t" },
  },
  {
    "kiyoon/jupynium.nvim",
    lazy = false,
    build = "pip3 install .",
    -- build = "conda run --no-capture-output -n jupynium pip install .",
    -- enabled = vim.fn.isdirectory(vim.fn.expand "~/miniconda3/envs/jupynium"),
    config = function()
      require("jupynium").setup {
        python_host = vim.g.python3_host_prog or "python3",
        default_notebook_URL = "localhost:8888/nbclassic",
        jupyter_command = "jupyter",
        notebook_dir = nil,
        firefox_profiles_ini_path = nil,
        firefox_profile_name = nil,
        auto_start_server = {
          enable = false,
          file_pattern = { "*.ju.*" },
        },
        auto_attach_to_server = {
          enable = true,
          file_pattern = { "*.ju.*", "*.md" },
        },
        auto_start_sync = {
          enable = false,
          file_pattern = { "*.ju.*", "*.md" },
        },
        auto_download_ipynb = true,
        auto_close_tab = true,
        autoscroll = {
          enable = true,
          mode = "always", -- "always" or "invisible"
          cell = {
            top_margin_percent = 20,
          },
        },
        scroll = {
          page = { step = 0.5 },
          cell = {
            top_margin_percent = 20,
          },
        },
        jupynium_file_pattern = { "*.ju.*" },
        use_default_keybindings = true,
        textobjects = {
          use_default_keybindings = true,
        },
        syntax_highlight = {
          enable = true,
        },
        shortsighted = false,
        kernel_hover = {
          floating_win_opts = {
            max_width = 84,
            border = "none",
          },
        },
      }
    end,
    -- Please share your favourite settings on other colour schemes, so I can add defaults.
    -- Currently, tokyonight is supported.
  },
}
return plugins

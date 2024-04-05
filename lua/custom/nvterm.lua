return {
  "NvChad/nvterm",
  init = function()
    require("core.utils").load_mappings "nvterm"
  end,
  config = function()
    local opts = {
      terminals = {
        shell = vim.o.shell,
        list = {},
        type_opts = {
          float = {
            relative = "editor",
            row = 0.1,
            col = 0.05,
            width = 0.9,
            height = 0.9,
            border = "single",
          },
          horizontal = { location = "rightbelow", split_ratio = 0.3 },
          vertical = { location = "rightbelow", split_ratio = 0.5 },
        },
      },
      behavior = {
        autoclose_on_quit = {
          enabled = false,
          confirm = true,
        },
        close_on_exit = true,
        auto_insert = true,
      },
    }
    require "base46.term"
    require("nvterm").setup(opts)
  end,
}

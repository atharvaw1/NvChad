local M = {}

-- Your custom mappings
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"},
    ["<leader>dk"] = {"<cmd> lua require'dap'.continue() <CR>"},
    ["<leader>dl"] = {"<cmd> lua require'dap'.run_last() <CR>"},
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}
M.nvterm = {
  plugin =true,

  n = {
    -- ["<leader>gg"] = {"<cmd> lua require'nvterm.terminal'.send('lazygit && exit\\r','float')<CR><A-i><A-i>"}
    ["<leader>gg"] = {
      function()
        local nvterm = require "nvterm.terminal"
        nvterm.send("lazygit && exit\r", "float")
        nvterm.toggle "float"
        nvterm.toggle "float"
      end,
      "Open lazygit",
    },
  }

}
M.general = {
  n = {
    ["<leader>fs"] = {
      function ()
        require("auto-session.session-lens").search_session()
      end,
      "Search sessions",
    }
  }
}
return M

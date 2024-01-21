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
return M

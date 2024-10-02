return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = function()
    local harpoon = require "harpoon"
    return {
      {
        "<leader>o",
        function()
          harpoon.ui:toggle_quick_menu(harpoon:list())
        end,
        desc = "Harpoon Toggle Menu",
      },
      {
        "<leader>a",
        function()
          harpoon:list():append()
        end,
        desc = "Harpoon add file",
      },
      {
        "<a-1>",
        function()
          harpoon:list():select(1)
        end,
        desc = "Harpoon buffer 1",
      },
      {
        "<a-2>",
        function()
          harpoon:list():select(2)
        end,
        desc = "Harpoon buffer 2",
      },
      {
        "<a-3>",
        function()
          harpoon:list():select(3)
        end,
        desc = "Harpoon buffer 3",
      },
      {
        "<a-4>",
        function()
          harpoon:list():select(4)
        end,
        desc = "Harpoon buffer 4",
      },
      {
        "<a-5>",
        function()
          harpoon:list():select(5)
        end,
        desc = "Harpoon buffer 5",
      },

      {
        "<tab>",
        function()
          harpoon:list():next()
        end,
        desc = "Harpoon next buffer",
      },
      {
        "<s-tab>",
        function()
          harpoon:list():prev()
        end,
        desc = "Harpoon prev buffer",
      },
    }
  end,
  config = function()
    require("harpoon").setup()
  end,
}

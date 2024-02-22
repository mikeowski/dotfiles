return {
 "nvim-tree/nvim-tree.lua",
  dependencies = {
    { "nvim-tree/nvim-web-devicons", lazy = true },
  },
  opts = {
    sort_by = "case_sensitive",
    view = {
      width = 35,
      side = 'right',
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
    },
    update_focused_file = {
       enable = true,
       update_cwd = true,
       ignore_list = {},
   },
  },
  keys = {
      {
        "<leader>n",
        function()
          require('nvim-tree.api').tree.focus()
        end,
        desc = "Focus on NvimTree",
      },
      {
        "<leader>pv",
        function()
          require('nvim-tree.api').tree.toggle()
        end,
        desc = "Focus on NvimTree",
      },
    },
}

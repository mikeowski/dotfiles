require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 35,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
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
})
vim.keymap.set('n','<leader>pv', vim.cmd.NvimTreeToggle)
vim.keymap.set('n','<leader>n', vim.cmd.NvimTreeFocus)

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"javascript","typescript", "c", "lua", "vim", 'bash', 'fish', 'markdown',
          'markdown_inline'},

  sync_install = false,
  autopairs = {
          enable = true,
        },
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = ",", -- maps in normal mode to init the node/scope selection with space
            node_incremental = ",", -- increment to the upper named parent
            node_decremental = "<bs>", -- decrement to the previous node
            scope_incremental = "<tab>", -- increment to the upper scope (as defined in locals.scm)
          },
        },

}
require('nvim-ts-autotag').setup()

local builtin = require('telescope.builtin')
require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      "node_modules" 
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                             -- the default case_mode is "smart_case"
    }

  }
}
local findFiles = function()
    builtin.find_files({
        find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden'},
    })
end
vim.keymap.set('n', '<leader>pf', findFiles, {})
vim.keymap.set('n','<leader>pw',builtin.live_grep,{})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps',builtin.grep_string,{})
vim.keymap.set('n', '<leader>pss',builtin.lsp_references,{})
vim.keymap.set('n', '<leader>;k',builtin.keymaps)

      -- To get fzf loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require('telescope').load_extension('fzf')

      require("telescope").load_extension "frecency"


      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
      require("telescope").load_extension("ui-select")


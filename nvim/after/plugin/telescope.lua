local builtin = require('telescope.builtin')
require('telescope').setup{ 
  defaults = { 
    file_ignore_patterns = { 
      "node_modules" 
    }
  }
}
local findFiles = function()
    builtin.find_files({
        find_command = { 'rg', '--files', '--iglob', '!.git', '--hidden'},
        previewer = false
    })
end
vim.keymap.set('n', '<leader>pf', findFiles, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps',function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set('n', '<leader>pss',builtin.lsp_references,{})


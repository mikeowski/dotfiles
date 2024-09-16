return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.6",
  dependencies = {
    "nvim-telescope/telescope-ui-select.nvim",
  },

  config = function()
    require("telescope").setup({
      defaults = {
        file_ignore_patterns = { "node_modules", ".git" },
        vimgrep_arguments = {
          'rg',
          '--color=never',
          '--no-heading',
          '--with-filename',
          '--line-number',
          '--column',
          '--smart-case',
          '--hidden', -- hidden dosyaları dahil etmek için
        },
      },
      pickers = {
        find_files = {
          hidden = true, -- find_files için hidden dosyaları dahil etmek
        },
      },
    })

    local builtin = require("telescope.builtin")
    vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
    vim.keymap.set("n", "<leader>ps", builtin.live_grep, {})
    vim.keymap.set("n", "<leader>pwd", builtin.lsp_references, {})
    vim.keymap.set("n", "<C-p>", builtin.git_files, {})
    vim.keymap.set("n", "<leader>pws", function()
      local word = vim.fn.expand("<cword>")
      builtin.grep_string({ search = word })
    end)
    vim.keymap.set("n", "<leader>pWs", function()
      local word = vim.fn.expand("<cWORD>")
      builtin.grep_string({ search = word })
    end)
    vim.keymap.set("n", "<leader>vh", builtin.help_tags, {})
    vim.keymap.set("n", "<leader>pr", builtin.resume, {})
    vim.keymap.set(
      "n",
      "<leader>;h",
      ":Telescope harpoon marks<CR>",
      { silent = true, noremap = true, desc = "Telescope harpoon" }
    )

    require("telescope").load_extension("ui-select")
    require("telescope").load_extension("harpoon")
  end,
}

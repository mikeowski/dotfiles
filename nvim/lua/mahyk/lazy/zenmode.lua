return {
  "folke/zen-mode.nvim",
  events = "Lazy",
  keys = {
      {
        "<leader>zz",
        function()
          require("zen-mode").setup {
            window = {
              width = 130,
              options = { }
            },
          }
          require("zen-mode").toggle()
          vim.wo.wrap = false
          vim.wo.number = true
          vim.wo.rnu = true

        end,
        desc = "Focus on NvimTree",
      },
      {
        "<leader>zZ",
        function()
            require("zen-mode").setup {
        window = {
            width = 130,
            options = { }
        },
    }
    require("zen-mode").toggle()
    vim.wo.wrap = false
    vim.wo.number = false
    vim.wo.rnu = false
    vim.opt.colorcolumn = "0"

        end,
        desc = "Focus on NvimTree",
      },
    },

}

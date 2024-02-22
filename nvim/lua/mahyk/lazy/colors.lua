function ColorMyPencils(color)
  color = color or "catppuccin-macchiato"
  vim.cmd.colorscheme(color)


  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
  "catppuccin/nvim",
  name = "catppuccin",
  lazy = true,
  opts = {
    integrations = {
      aerial = true,
      alpha = true,
      cmp = true,
      fidget = true,
      gitsigns = true,
      mason = true,
      markdown = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      neotree = true,
      notify = true,
      harpoon = true,
      telescope = true,
      treesitter = true,
    },
  },
  init = function()
    ColorMyPencils()
  end
}

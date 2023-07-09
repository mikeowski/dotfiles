vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
  use   {'nvim-telescope/telescope-ui-select.nvim' }
  use   {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.1',
		requires = { {'nvim-lua/plenary.nvim', 'nvim-treesitter/nvim-treesitter','nvim-tree/nvim-web-devicons'} }
	}
    use { "ellisonleao/gruvbox.nvim" }
use('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate'})
use("nvim-treesitter/nvim-treesitter-textobjects")
use('ThePrimeagen/harpoon')
use('mbbill/undotree')
use('tpope/vim-fugitive')
use {
	'VonHeikemen/lsp-zero.nvim',
  branch = 'v1.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {'williamboman/mason.nvim'},           -- Optional
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},         -- Required
    {'hrsh7th/cmp-nvim-lsp'},     -- Required
    {'hrsh7th/cmp-buffer'},       -- Optional
    {'hrsh7th/cmp-path'},         -- Optional
    {'saadparwaiz1/cmp_luasnip'}, -- Optional
    {'hrsh7th/cmp-nvim-lua'},     -- Optional

    -- Snippets
    {'L3MON4D3/LuaSnip'},             -- Required
    {'rafamadriz/friendly-snippets'}, -- Optional
  }
}
use("folke/zen-mode.nvim")
use("eandrju/cellular-automaton.nvim")
use("prettier/vim-prettier")
use('nvim-tree/nvim-tree.lua') 
use('windwp/nvim-ts-autotag')
use('windwp/nvim-autopairs')
use("github/copilot.vim")
use("hoob3rt/lualine.nvim")
use("glepnir/lspsaga.nvim")
use("L3MON4D3/LuaSnip")
use("akinsho/nvim-bufferline.lua")
use ("numToStr/Comment.nvim") --comment lines with gcc and gbc


end)

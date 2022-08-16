-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use ({ 'projekt0n/github-nvim-theme' })
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP  
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use 'lewis6991/gitsigns.nvim'
  use 'simrat39/rust-tools.nvim'
  use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icons
    },
  }
  use 'windwp/nvim-autopairs'
  use 'folke/tokyonight.nvim'
end)

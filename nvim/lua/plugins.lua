return {
  {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  },
  'nvim-tree/nvim-web-devicons',
  'hrsh7th/nvim-cmp',         -- Autocompletion plugin
  'hrsh7th/cmp-nvim-lsp',     -- LSP source for nvim-cmp
  'saadparwaiz1/cmp_luasnip', -- Snippets source for nvim-cmp
  'L3MON4D3/LuaSnip',         -- Snippets plugin
  'lewis6991/gitsigns.nvim',
  'simrat39/rust-tools.nvim',
  {
    'nvim-telescope/telescope.nvim',
    branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  },
  'windwp/nvim-autopairs',
  { "catppuccin/nvim",         name = "catppuccin", priority = 1000 },
  { "ellisonleao/gruvbox.nvim" },
  {
    "mason-org/mason.nvim",
    "mason-org/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    opts = {}
  },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  'github/copilot.vim',
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }

  },
}

return {
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
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
  { "ellisonleao/gruvbox.nvim" },
  { "mason-org/mason.nvim", lazy = false },
  { "mason-org/mason-lspconfig.nvim", lazy = false },
  { "neovim/nvim-lspconfig", lazy = false },
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  'mfussenegger/nvim-jdtls',
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  -- lua/plugins/rose-pine.lua
  {
    "rose-pine/neovim",
    name = "rose-pine",
  }
}

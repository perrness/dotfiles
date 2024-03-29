vim.opt.exrc = true
vim.opt.guicursor = ''
vim.opt.showmode = false
vim.opt.encoding = 'utf-8'

-- Keep buffers open
vim.opt.hidden = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.laststatus = 3

vim.opt.scrolloff = 8

vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.autoindent = true
vim.opt.signcolumn = 'yes'
vim.opt.backspace = { 'indent', 'eol', 'start' }
vim.opt.termguicolors = true

vim.opt.title = true

vim.opt.wrap = false

vim.g.mapleader = ' '

-- netrw
vim.g.netrw_liststyle = 3
-- vim.g.netrw_browse_split = 4
-- vim.g.netrw_altv = 1
-- vim.g.netrw_winsize = 25


-- disable netrw at beginning
-- vim.g.loaded_netrw = 1
-- vim.g.loaded_netrwPlugin = 1

-- providers
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

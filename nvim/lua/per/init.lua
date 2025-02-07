local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("per.set")
require("per.remap")
require("per.lazy")
require("per.treesitter")
require("per.autocomplete")
require("per.gitsigns")
require("per.nvimautopairs")
require("per.masonlsp")
require("per.lsp")
require("per.rustlsp")
require("per.harpoon")

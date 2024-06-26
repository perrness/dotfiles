-- require("github-theme").setup({
--   theme_style = "dimmed",
--   function_style = "italic",
--   sidebars = {"qf", "vista_kind", "terminal", "packer"},
--   transparent = true,
--
--   -- Change the "hint" color to the "orange" color, and make the "error" color bright red
--   colors = {hint = "orange", error = "#ff0000"},
--
--   -- Overwrite the highlight groups
--   overrides = function(c)
--     return {
--       htmlTag = {fg = c.red, bg = "#282c34", sp = c.hint, style = "underline"},
--       DiagnosticHint = {link = "LspDiagnosticsDefaultHint"},
--       -- this will remove the highlight groups
--       TSField = {},
--     }
--   end
-- })

-- vim.opt.background = "dark"
--
-- -- vim.cmd("colorscheme gruvbox")
require("catppuccin").setup({
  flavour = "frappe",
  transparent_background = true,
  integrations = {
    cmp = true,
    gitsigns = true,
    nvimtree = true,
    telescope = true,
    treesitter = true,
  },
})
vim.cmd("colorscheme catppuccin")

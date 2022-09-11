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

-- vim.g.tokyonight_transparent_sidebar = true
-- vim.g.tokyonight_transparent = true
-- vim.g.tokyonight_style = "day"
vim.opt.background = "dark"

-- vim.cmd("colorscheme tokyonight")
-- vim.cmd("colorscheme gruvbox")
vim.g.catppuccin_flavour = "macchiato"
vim.cmd("colorscheme catppuccin")

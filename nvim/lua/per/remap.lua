local nnoremap = require("per.keymap").nnoremap

nnoremap("<leader>pv", "<cmd>Ex<CR>")

-- Telescope remap
nnoremap ("<leader>ff", "<cmd>lua require('telescope.builtin').find_files({hidden = true})<cr>")
nnoremap ("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap ("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap ("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")


-- Nvimtree remap
nnoremap ("<leader>tt", "<cmd>lua require('nvim-tree.api').tree.focus(false, true)<cr>")
nnoremap ("<leader>tc", "<cmd>lua require('nvim-tree.api').tree.toggle(false, true)<cr>")

-- nvim-tree
-- nnoremap ("<leader>tt", ":NvimTreeToggle<cr>")

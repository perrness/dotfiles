local nnoremap = require("per.keymap").nnoremap

nnoremap("<leader>pv", ":Telescope file_browser<CR>")

-- Telescope remap
nnoremap ("<leader>ff", "<cmd>lua require('telescope.builtin').find_files({hidden = true})<cr>")
nnoremap ("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<cr>")
nnoremap ("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<cr>")
nnoremap ("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<cr>")

-- nnoremap ("<leader>tt", ":NvimTreeToggle<cr>")

-- move-lines
nnoremap ("ª", "<cmd>:m-2<CR>")
nnoremap ("√", "<cmd>:m+<CR>")


require('telescope').setup{ defaults = { file_ignore_patterns = { "node_modules" }} }

Nnoremap("<leader>ff", "<cmd>lua require('telescope.builtin').find_files()<CR>")
Nnoremap("<leader>fg", "<cmd>lua require('telescope.builtin').live_grep()<CR>")
Nnoremap("<leader>fb", "<cmd>lua require('telescope.builtin').buffers()<CR>")
Nnoremap("<leader>fh", "<cmd>lua require('telescope.builtin').help_tags()<CR>")
Nnoremap("<silent>gh", "<cmd>lua require'lspsaga.provider'.lsp_finder()<CR>")

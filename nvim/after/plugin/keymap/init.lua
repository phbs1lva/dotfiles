-- general keymaps
local nnoremap = require("pedro.keymap").nnoremap

nnoremap("zz", ":update<CR>")

nnoremap("<C-k>", ":wincmd k<CR>")
nnoremap("<C-j>", ":wincmd j<CR>")
nnoremap("<C-h>", ":wincmd h<CR>")
nnoremap("<C-l>", ":wincmd l<CR>")

nnoremap("<C-a>", "gg<S-v>G")

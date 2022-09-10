local Remap = require("pedro.keymap")
local nnoremap = Remap.nnoremap

-- Move to previous/next
nnoremap("<A-,>", "<Cmd>BufferPrevious<CR>")
nnoremap("<A-.>", "<Cmd>BufferNext<CR>")
-- Re-order to previous/next
nnoremap("<A-<>", "<Cmd>BufferMovePrevious<CR>")
nnoremap("<A->>", "<Cmd>BufferMoveNext<CR>")
-- Goto buffer in position...
nnoremap("<A-1>", "<Cmd>BufferGoto 1<CR>")
nnoremap("<A-2>", "<Cmd>BufferGoto 2<CR>")
nnoremap("<A-3>", "<Cmd>BufferGoto 3<CR>")
nnoremap("<A-4>", "<Cmd>BufferGoto 4<CR>")
nnoremap("<A-5>", "<Cmd>BufferGoto 5<CR>")
nnoremap("<A-6>", "<Cmd>BufferGoto 6<CR>")
nnoremap("<A-7>", "<Cmd>BufferGoto 7<CR>")
nnoremap("<A-8>", "<Cmd>BufferGoto 8<CR>")
nnoremap("<A-9>", "<Cmd>BufferGoto 9<CR>")
nnoremap("<A-0>", "<Cmd>BufferLast<CR>")

nnoremap("<A-c>", "<Cmd>BufferClose<CR>")
local Remap = require("pedro.keymap")
local nnoremap = Remap.nnoremap

vim.g.neoformat_try_node_exe = 1

nnoremap("<Leader>nf", "<Cmd>:Neoformat<CR>")

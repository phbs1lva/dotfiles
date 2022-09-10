local Remap = require("pedro.keymap")
local nnoremap = Remap.nnoremap

nnoremap("<Leader>to", "<Cmd>:NvimTreeToggle<CR>")

nnoremap("<Leader>tf", "<Cmd>:NvimTreeFindFile<CR>")

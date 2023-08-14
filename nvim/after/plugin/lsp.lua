local cmp_autopairs = require('nvim-autopairs.completion.cmp')
local lsp = require('lsp-zero').preset({})
local cmp = require('cmp')

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({ buffer = bufnr })
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

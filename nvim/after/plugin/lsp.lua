local Remap = require("pedro.keymap")
local lspkind = require("lspkind")
local cmp = require("cmp")
local lspsaga = require("lspsaga")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

local nnoremap = Remap.nnoremap
local inoremap = Remap.inoremap

local capabilities = cmp_nvim_lsp.default_capabilities()

lspsaga.init_lsp_saga()

nnoremap('<C-j>', '<Cmd>Lspsaga diagnostic_jump_next<CR>')
nnoremap('<leader>vca', '<Cmd>Lspsaga code_action<CR>')
nnoremap('H', '<Cmd>Lspsaga hover_doc<CR>')
nnoremap('gd', '<Cmd>Lspsaga lsp_finder<CR>')
inoremap('<C-h>', '<Cmd>Lspsaga signature_help<CR>')
nnoremap('gp', '<Cmd>Lspsaga peek_definition<CR>')
nnoremap('gr', '<Cmd>Lspsaga rename<CR>')

cmp.setup({
	snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
      -- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
      -- require('snippy').expand_snippet(args.body) -- For `snippy` users.
      -- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    end,
  },
	mapping = cmp.mapping.preset.insert({
    ['<CR>'] = cmp.mapping.confirm({ select = true, behavior = cmp.ConfirmBehavior.Insert }),
    ["<C-e>"] = cmp.mapping.close(),
		["<C-d>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
	}),
	sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = "vsnip" },
    { name = "buffer" },
    { name = "path" },
  }),
  formatting = {
    format = lspkind.cmp_format({ with_text = false, maxwidth = 50 })
  }
})

local function config(_config)
	return vim.tbl_deep_extend("force", {
		capabilities = capabilities,
	}, _config or {})
end

require("lspconfig").tsserver.setup(config())

require("lspconfig").cssls.setup(config())

require("lspconfig").rust_analyzer.setup(config({
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = { command = "clippy" }
    }
  }
}))


require'nvim-treesitter.configs'.setup {
    ensure_installed = "all",
    sync_install = false,
    indent = {
      enable = true,
      disable = {}
    },
    autotag = { enable = true },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = false,
    },
}

local parser_config = require 'nvim-treesitter.parsers'.get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

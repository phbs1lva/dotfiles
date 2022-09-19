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

return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("sbdchd/neoformat")

    use("TimUntersberger/neogit")
    use("airblade/vim-gitgutter")
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use {"romgrk/barbar.nvim", requires = { "kyazdani42/nvim-web-devicons" }}
    use ("kyazdani42/nvim-tree.lua")
    use {"nvim-lualine/lualine.nvim", requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("tzachar/cmp-tabnine", { run = "./install.sh" })
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")

    use("ThePrimeagen/git-worktree.nvim")

    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    use("nvim-treesitter/playground")
    use("romgrk/nvim-treesitter-context")
end)

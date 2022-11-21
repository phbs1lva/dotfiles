return require("packer").startup(function()
    use("wbthomason/packer.nvim")
    use("sbdchd/neoformat")

    use("lewis6991/gitsigns.nvim")
    use("tpope/vim-fugitive")
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
    use("onsails/lspkind-nvim")
    use("glepnir/lspsaga.nvim")
    use("hrsh7th/vim-vsnip")
    use("hrsh7th/vim-vsnip-integ")
    use("ThePrimeagen/git-worktree.nvim")
    use("windwp/nvim-ts-autotag")
    use("windwp/nvim-autopairs")

    use("simrat39/rust-tools.nvim")
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")

    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })

    use("nvim-treesitter/playground")
    use("romgrk/nvim-treesitter-context")
end)

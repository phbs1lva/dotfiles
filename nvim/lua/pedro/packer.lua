return require("packer").startup(function()
    use("wbthomason/packer.nvim")

    use("lewis6991/gitsigns.nvim")
    use("tpope/vim-fugitive")
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")
    use {"romgrk/barbar.nvim", requires = { "kyazdani42/nvim-web-devicons" }}
    use ("kyazdani42/nvim-tree.lua")
    use {"nvim-lualine/lualine.nvim", requires = { 'kyazdani42/nvim-web-devicons', opt = true }}

    use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'})
    use('nvim-treesitter/playground')
    use {
	    'VonHeikemen/lsp-zero.nvim',
	    requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
    }

    use("windwp/nvim-ts-autotag")
    use("windwp/nvim-autopairs")

    use("gruvbox-community/gruvbox")
    use("marko-cerovac/material.nvim")

    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
end)

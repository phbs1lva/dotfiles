return require("packer").startup(function()
  use("wbthomason/packer.nvim")

  use("lewis6991/gitsigns.nvim")
  use("tpope/vim-fugitive")
  use("nvim-lua/plenary.nvim")
  use("nvim-lua/popup.nvim")
  use("nvim-telescope/telescope.nvim")
  use { "romgrk/barbar.nvim", requires = { "kyazdani42/nvim-web-devicons" } }
  use("kyazdani42/nvim-tree.lua")
  use { "nvim-lualine/lualine.nvim", requires = { 'kyazdani42/nvim-web-devicons', opt = true } }

  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' }, -- Required
      { -- Optional
        'williamboman/mason.nvim',
        run = function()
          pcall(vim.cmd, 'MasonUpdate')
        end,
      },
      { 'williamboman/mason-lspconfig.nvim' }, -- Optional

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' }, -- Required
      { 'hrsh7th/cmp-nvim-lsp' }, -- Required
      { 'L3MON4D3/LuaSnip' }, -- Required
    }
  }

  use("windwp/nvim-ts-autotag")
  use {
    "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  use { "ellisonleao/gruvbox.nvim" }
  use('mfussenegger/nvim-dap')

end)

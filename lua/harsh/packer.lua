local packer = require('packer')

return packer.startup(function(use)
  use { "wbthomason/packer.nvim" }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }
  use { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
  use { "lukas-reineke/indent-blankline.nvim" }
  use({
    'rose-pine/neovim',
    as = 'rose-pine',
  })
  use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
  use('mbbill/undotree')
  use {
    'VonHeikemen/lsp-zero.nvim',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      { 'saadparwaiz1/cmp_luasnip' },
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      { 'rafamadriz/friendly-snippets' },
    }
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use {
    'numToStr/Comment.nvim'
  }
  use { 'RishabhRD/popfix' }
  use { 'RishabhRD/nvim-cheat.sh' }
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use { "numToStr/FTerm.nvim" }
end)

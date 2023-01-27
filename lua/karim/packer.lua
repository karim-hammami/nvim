vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'


  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "lunarvim/darkplus.nvim"

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('tpope/vim-fugitive')


  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},             -- Required
		  {'williamboman/mason.nvim'},           -- Optional
		  {'williamboman/mason-lspconfig.nvim'}, -- Optional

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},         -- Required
		  {'hrsh7th/cmp-nvim-lsp'},     -- Required
		  {'hrsh7th/cmp-buffer'},       -- Optional
		  {'hrsh7th/cmp-path'},         -- Optional
		  {'saadparwaiz1/cmp_luasnip'}, -- Optional
		  {'hrsh7th/cmp-nvim-lua'},     -- Optional

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},             -- Required
		  {'rafamadriz/friendly-snippets'}, -- Optional
	  }
  }


  use {
      "windwp/nvim-autopairs",
      config = function() require("nvim-autopairs").setup {} end
  }
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
  end}
 use "wikitopian/hardmode"
 use 'lewis6991/impatient.nvim'
 use({
     "utilyre/barbecue.nvim",
     requires = {
         "neovim/nvim-lspconfig",
         "SmiteshP/nvim-navic",
         "nvim-tree/nvim-web-devicons", -- optional dependency
     },
     after = "nvim-web-devicons", -- keep this if you're using NvChad
  })

  use 'ray-x/web-tools.nvim'

  use ({
      "folke/trouble.nvim",
      requires = "nvim-tree/nvim-web-devicons",
      })


      use 'folke/lsp-colors.nvim'
use({
    "andrewferrier/textobj-diagnostic.nvim",
    config = function()
        require("textobj-diagnostic").setup({create_default_keymaps = false})
    end,
})

use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
use { "catppuccin/nvim", as = "catppuccin" }
use 'shaunsingh/moonlight.nvim'
use "olimorris/onedarkpro.nvim"
use { "ellisonleao/gruvbox.nvim" }
use 'folke/tokyonight.nvim'
use { 
  'olivercederborg/poimandres.nvim',
  config = function()
    require('poimandres').setup {
      -- leave this setup function empty for default config
      -- or refer to the configuration section
      -- for configuration options
    }
  end
}
use { 'kartikp10/noctis.nvim', requires = { 'rktjmp/lush.nvim' } }
use "EdenEast/nightfox.nvim" -- Packer
use 'shaunsingh/nord.nvim'
use "ayu-theme/ayu-vim"
use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
        require("rose-pine").setup()
        vim.cmd('colorscheme rose-pine')
    end
})

end)

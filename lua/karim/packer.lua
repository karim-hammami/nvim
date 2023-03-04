vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'


    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use "lunarvim/darkplus.nvim"

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })



    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            { 'williamboman/mason.nvim' }, -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' }, -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'hrsh7th/cmp-buffer' }, -- Optional
            { 'hrsh7th/cmp-path' }, -- Optional
            { 'saadparwaiz1/cmp_luasnip' }, -- Optional
            { 'hrsh7th/cmp-nvim-lua' }, -- Optional

            -- Snippets
            { 'L3MON4D3/LuaSnip' }, -- Required
            { 'rafamadriz/friendly-snippets' }, -- Optional
        }
    }


    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use { "akinsho/toggleterm.nvim", tag = '*', config = function()
        require("toggleterm").setup()
    end }
    use "wikitopian/hardmode"
    use 'jose-elias-alvarez/null-ls.nvim'
    use "lukas-reineke/indent-blankline.nvim"
    use { 'yamatsum/nvim-cursorline' }
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    use 'mfussenegger/nvim-jdtls'
    use 'tpope/vim-fugitive'
    use 'nvim-tree/nvim-web-devicons'
    use({ 'seblj/nvim-tabline', requires = { 'nvim-tree/nvim-web-devicons' } })
    use 'lewis6991/gitsigns.nvim'
    use {
        "ray-x/lsp_signature.nvim",
    }
    use { "ggandor/leap.nvim" }
    use { 'onsails/lspkind.nvim' }
    use { "windwp/nvim-ts-autotag" }
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })



    use "~/personal/selector.nvim"
    use "nvim-treesitter/playground"
    use {
        'gelguy/wilder.nvim',
        config = function()
            -- config goes here
        end,
    }
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
    use({
        'weilbith/nvim-code-action-menu',
        cmd = 'CodeActionMenu',
    })
    use { 'stevearc/dressing.nvim' }
    use({
        'mrjones2014/legendary.nvim',
        -- sqlite is only needed if you want to use frecency sorting
        -- requires = 'kkharji/sqlite.lua'
    })
    use 'udalov/kotlin-vim'
    use 'simrat39/rust-tools.nvim'
end)

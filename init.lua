-- Welcome to me init

require 'settings'
require 'launcher'
require 'shortcupt'

-- Configuraciones de los plugins
require 'plugins/cmp'
require 'plugins/telescope'
require 'plugins/tokyonight'
require 'plugins/bufferline'
require 'plugins/treesitter'
require 'plugins/colorizer'
require 'plugins/lsp'
require 'plugins/neotree'

vim.cmd [[color tokyonight]]

vim.cmd[[packadd packer.nvim]]
return require('packer').startup(function(use)
    use {
        'wbthomason/packer.nvim',
        'neovim/nvim-lspconfig',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'hrsh7th/nvim-cmp',
        --[[ 'windwp/nvim-autopairs', ]]
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',
        'nvim-lualine/lualine.nvim',
        'williamboman/mason.nvim',
        'lewis6991/gitsigns.nvim',
        'lukas-reineke/indent-blankline.nvim',
        'nvim-lua/plenary.nvim',
        'nvim-neo-tree/neo-tree.nvim',
        'nvim-telescope/telescope.nvim',
        'nvim-treesitter/nvim-treesitter',
        'numToStr/Comment.nvim',
        'kdheepak/lazygit.nvim',
        'kyazdani42/nvim-web-devicons',
        --[[ 'ellisonleao/gruvbox.nvim', ]]
        'mhartington/formatter.nvim',
	    'norcalli/nvim-colorizer.lua',
        'hrsh7th/cmp-nvim-lua',
        'akinsho/bufferline.nvim',
        'rafamadriz/friendly-snippets',
        --[[ 'navarasu/onedark.nvim', ]]
        'windwp/nvim-ts-autotag',
        --[[ 'zbirenbaum/copilot.lua',
        cmd = "Copilot",
        event = "InsertEnter",
        config = function()
            require("copilot").setup({})
        end ]]
        'folke/tokyonight.nvim',
        'MunifTanjim/nui.nvim',
        'williamboman/mason-lspconfig.nvim',
        --[[ 'petertriho/cmp-git' ]]
        'preservim/tagbar', 
        'jiangmiao/auto-pairs'
    }
end)

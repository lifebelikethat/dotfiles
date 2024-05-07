vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use 'rafi/awesome-vim-colorschemes'
    use 'tpope/vim-surround'

    -- discord rich presence
    -- use 'andweeb/presence.nvim'

    -- indentation
    use 'lukas-reineke/indent-blankline.nvim'

    -- color preview
    -- use 'norcalli/nvim-colorizer.lua'
    use 'brenoprata10/nvim-highlight-colors'

    -- react autotag
    use 'https://github.com/windwp/nvim-ts-autotag'

    -- telescope
    use 'nvim-lua/plenary.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',   
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use 'jonarrien/telescope-cmdline.nvim'
    use {
        "nvim-telescope/telescope-file-browser.nvim",
        requires = { "nvim-telescope/telescope.nvim" }
    }

    -- statusline
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = false }
    }
    use 'archibate/lualine-time'

    -- comment
    use 'tpope/vim-commentary'

    -- noice
    use 'folke/noice.nvim'
    use 'MunifTanjim/nui.nvim'
    use 'rcarriga/nvim-notify'

    -- NERDTREE
    use 'preservim/nerdtree'
    use 'unkiwii/vim-nerdtree-sync'
    -- colorschemes
    use 'catppuccin/nvim'
    use 'rose-pine/neovim'
    use 'daschw/leaf.nvim'
    use 'folke/tokyonight.nvim'
    use 'rebelot/kanagawa.nvim'

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('nvim-treesitter/nvim-treesitter-textobjects')

    use 'm4xshen/autoclose.nvim'

    use {'akinsho/toggleterm.nvim', tag = '*', config = function()
        require('toggleterm').setup()
    end}

    -- Lsp
    use 'neovim/nvim-lspconfig'
    use 'williamboman/mason.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'

    -- prettier
    use 'jose-elias-alvarez/null-ls.nvim'
    -- use 'MunifTanjim/prettier.nvim'
    use 'fsouza/prettierd'

    -- snippet engine
    use 'L3MON4D3/LuaSnip'

    -- html boilerplate
    use 'mattn/emmet-vim'
    use 'alvan/vim-closetag'
end)


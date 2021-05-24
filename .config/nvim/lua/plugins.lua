return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {'joshdick/onedark.vim'}

    use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
      require('lualine').setup{
        options = {
	  theme = 'auto',
          section_separators = {'', ''},
          component_separators = {'', ''},
          disabled_filetypes = {},
          icons_enabled = true,
        },
        sections = {
          lualine_a = { {'mode', upper = true} },
          lualine_b = { {'branch', icon = ''} },
          lualine_c = { {'filename', file_status = true} },
          lualine_x = { 'encoding', 'fileformat', 'filetype' },
          lualine_y = { 'progress' },
          lualine_z = { 'location'  },
        },
        inactive_sections = {
          lualine_a = {  },
          lualine_b = {  },
          lualine_c = { 'filename' },
          lualine_x = { 'location' },
          lualine_y = {  },
          lualine_z = {   }
        },
      }
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    }
  }

  use {'mhinz/vim-startify'}

  use 'b3nj5m1n/kommentary'

  use {'lukas-reineke/indent-blankline.nvim', branch = 'lua'}

  use 'onsails/lspkind-nvim'
  use 'hrsh7th/nvim-compe'
  use 'kosayoda/nvim-lightbulb'

  use 'neovim/nvim-lspconfig'

  use 'nvim-treesitter/nvim-treesitter'

  use 'windwp/nvim-autopairs'

  use 'kyazdani42/nvim-tree.lua'
  use 'ryanoasis/vim-devicons'

  use 'karb94/neoscroll.nvim'

  use 'theniceboy/vim-calc'

  use {
  'folke/lsp-trouble.nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  config = function()
    require('trouble').setup{}
  end
  }
  use 'cohama/lexima.vim'

  use 'tell-k/vim-autopep8'

  use 'cespare/vim-toml'

  use {
    "ray-x/lsp_signature.nvim",
  }

  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  use "plasticboy/vim-markdown"
  use "dhruvasagar/vim-table-mode"

  end
)

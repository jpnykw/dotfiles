return require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'nathanaelkane/vim-indent-guides'
	use 'kevinhwang91/nvim-hlslens'
	use 'neovim/nvim-lspconfig'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/vim-vsnip"

	use {
		'akinsho/toggleterm.nvim',
		tag = '*',
		config = function()
			require("toggleterm").setup()
		end
	}

	use {
		'akinsho/bufferline.nvim',
		tag = "v3.*",
		requires = 'kyazdani42/nvim-web-devicons'
	}

	use {
		'romgrk/barbar.nvim',
		requires = {'kyazdani42/nvim-web-devicons'}
	}

  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    },
    tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  use {
    "catppuccin/nvim",
    as = "catppuccin",
    config = function()
      require("catppuccin").setup {
        flavour = "macchiato" -- mocha, macchiato, frappe, latte
      }
      vim.api.nvim_command "colorscheme catppuccin"
    end
  }
end)


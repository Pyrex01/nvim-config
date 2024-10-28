--- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use 'nvim-tree/nvim-tree.lua' -- File explorer
	use 'nvim-tree/nvim-web-devicons' 
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8'
	}
	use 'nvim-treesitter/nvim-treesitter'
	use 'nvim-lua/plenary.nvim'
	use 'mfussenegger/nvim-jdtls'
	use({
		'catppuccin/nvim',
		as = 'catppuccin',
		config = function()
			vim.cmd('colorscheme catppuccin')
		end
	})
	use 'williamboman/mason.nvim'         -- LSP Installer
	use 'williamboman/mason-lspconfig.nvim' -- Mason integration with lspconfig
	use 'neovim/nvim-lspconfig'           -- LSP Configuration
	use 'hrsh7th/nvim-cmp'                -- Completion Plugin
	use 'hrsh7th/cmp-nvim-lsp'            -- LSP Source for nvim-cmp
	use ({"akinsho/toggleterm.nvim", tag = '*', config = function()
		require("toggleterm").setup()
	end})
	use 'NeogitOrg/neogit'
end
)

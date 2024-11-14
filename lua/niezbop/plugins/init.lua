return {
	"ThePrimeagen/vim-be-good", -- To get better at nvim
	"navarasu/onedark.nvim", -- Theme
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		"sainnhe/sonokai",
		lazy = false,
		priority = 1000,
		config = function()
			-- Optionally configure and load the colorscheme
			-- directly inside the plugin declaration.
			vim.g.sonokai_enable_italic = true
		end,
	},

	"tpope/vim-fugitive", -- Git
	"norcalli/nvim-colorizer.lua",
	-- "tpope/vim-sleuth",
}

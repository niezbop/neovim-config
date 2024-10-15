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
	-- Tree sitter and friends
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"nvim-treesitter/playground",
	"nvim-treesitter/nvim-treesitter-context",

	"tpope/vim-fugitive", -- Git
	-- "tpope/vim-sleuth",
}

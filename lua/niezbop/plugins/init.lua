return {
	"ThePrimeagen/vim-be-good", -- To get better at nvim
	"navarasu/onedark.nvim", -- Theme
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	-- Tree sitter and friends
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"nvim-treesitter/playground",
	"nvim-treesitter/nvim-treesitter-context",

	"tpope/vim-fugitive", -- Git
	-- "tpope/vim-sleuth",
}

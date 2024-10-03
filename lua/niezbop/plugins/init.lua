return {
	"navarasu/onedark.nvim",
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{ "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
	"nvim-treesitter/playground",
	"tpope/vim-fugitive",
	-- "tpope/vim-sleuth",
}

return {
	{
		"nvim-tree/nvim-web-devicons",
		enabled = vim.g.have_nerd_font,
		config = function()
			local colors = require("tokyonight.colors").setup()
			require("nvim-web-devicons").setup({
				override = {
					rb = {
						icon = "",
						color = colors.red1,
						name = "Ruby",
					},
					lua = {
						icon = "󰢱",
						color = colors.blue1,
						name = "Lua",
					},
				},
			})
		end,
	},
}

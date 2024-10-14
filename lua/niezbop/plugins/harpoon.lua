return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope.nvim",
	},
	config = function()
		local harpoon = require("harpoon")
		harpoon:setup({})

		-- basic telescope configuration
		local configuration = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = require("telescope.finders").new_table({
						results = file_paths,
					}),
					previewer = configuration.file_previewer({}),
					sorter = configuration.generic_sorter({}),
				})
				:find()
		end

		-- Keymaps
		vim.keymap.set("n", "<C-e>", function()
			toggle_telescope(harpoon:list())
		end, { desc = "Open harpoon window" })

		vim.keymap.set("n", "<leader>Ha", function()
			harpoon:list():add()
		end, { desc = "[H]arpoon: [A]dd current buffer" })
		vim.keymap.set("n", "<leader>Hr", function()
			harpoon:list():remove()
		end, { desc = "[H]arpoon: [R]emove current buffer" })
	end,
}

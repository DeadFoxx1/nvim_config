return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({
							--options??
						}),
						-- pseudo code / specification for writing custom displays, like the one
						-- for "codeactions"
						specific_opts = {
							--   -- for example to disable the custom builtin "codeactions" display
							--      do the following
							codeactions = false,
							hover = true,
						},
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}

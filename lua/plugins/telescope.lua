return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"smartpde/telescope-recent-files",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			"smartpde/telescope-recent-files",
		},
		config = function()
			local telescope = require("telescope")
			local builtin = require("telescope.builtin")

			telescope.setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
					recent_files = {
						only_cwd = true,
					},
				},
			})
			telescope.load_extension("ui-select")
			telescope.load_extension("recent_files")

			-- Files / Buffers
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", function()
				builtin.buffers({
					sort_mru = true,
				})
			end)
			vim.keymap.set("n", "<leader>fh", telescope.extensions.recent_files.pick)
			-- Git
			vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
			vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
			vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
			vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
		end,
	},
}

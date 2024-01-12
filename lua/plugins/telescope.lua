return {
	{
		"nvim-telescope/telescope-ui-select.nvim",
	},
	{
		"smartpde/telescope-recent-files",
	},
	{
		"nvim-telescope/telescope-frecency.nvim",
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-ui-select.nvim",
			"smartpde/telescope-recent-files",
			"nvim-telescope/telescope-frecency.nvim",
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
                    frecency = {
                        default_workspace = "CWD",
                        show_scores = true,
                    },
				},
			})
			telescope.load_extension("ui-select")
			telescope.load_extension("recent_files")
			telescope.load_extension("frecency")

			-- Files / Buffers
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", function()
				builtin.buffers({
					sort_mru = true,
				})
			end)
			vim.keymap.set("n", "<leader>fh", telescope.extensions.recent_files.pick)
			vim.keymap.set("n", "<leader>fr", "<Cmd>Telescope frecency<CR>")

			-- Git
			vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
			vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
			vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
			vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
		end,
	},
}

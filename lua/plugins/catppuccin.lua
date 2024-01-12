return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			integrations = {
				alpha = true,
				cmp = true,
				dap = true,
				dap_ui = true,
				gitsigns = true,
				harpoon = true,
                lsp_trouble = true,
				mason = true,
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
					},
					inlay_hints = {
						background = true,
					},
				},
				neotree = true,
				noice = true,
                notify = true,
				telescope = {
                    enabled = true,
                },
				treesitter = true,
			},
			transparent_background = true,
		})

		vim.o.termguicolors = true
		vim.cmd.colorscheme("catppuccin-macchiato")
	end,
}

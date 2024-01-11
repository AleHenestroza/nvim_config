return {
	{
		"leoluz/nvim-dap-go",
		dependencies = {
			"mfussenegger/nvim-dap",
			"jay-babu/mason-nvim-dap.nvim",
		},
		config = function()
			require("dap-go").setup()
		end,
	},
}

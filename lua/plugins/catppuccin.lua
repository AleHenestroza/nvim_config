return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            integrations = {
                neotree = true,
                telescope = true,
                treesitter = true,
            },
            transparent_background = true,
        })

        vim.o.termguicolors = true
        vim.cmd.colorscheme("catppuccin-macchiato")
    end,
}

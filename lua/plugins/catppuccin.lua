return {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
        integrations = {
            neotree     = true,
            telescope   = true,
            treesitter  = true,
        },
    },
    config = function()
        vim.o.termguicolors = true
        vim.cmd.colorscheme "catppuccin-macchiato"
    end
}

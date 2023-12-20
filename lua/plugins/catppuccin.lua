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
        vim.cmd.colorscheme "catppuccin-macchiato"
    end
}

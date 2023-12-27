return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    opts = {
        filesystem = {
            filtered_items = {
                visible = false,
                hide_gitignored = true,
                hide_hidden = true,
                hide_by_name = {
                    "node_modules",
                },
            },
            components = {
                name = function(config, node, state)
                    local components = require('neo-tree.sources.common.components')
                    local name = components.name(config, node, state)
                    if node:get_depth() == 1 then
                        name.text = vim.fs.basename(vim.loop.cwd() or '')
                    end
                    return name
                end,
            },
        },
    },
    config = function()
        vim.keymap.set('n', '<leader>pt', ":Neotree reveal filesystem left toggle<CR>", {})
    end
}


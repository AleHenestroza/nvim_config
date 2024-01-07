return {
    {
        "nvim-telescope/telescope.nvim",
        tag = '0.1.5',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require("telescope.builtin")
            -- Files / Buffers
            vim.keymap.set('n', '<leader>pf', builtin.git_files, {})
            vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fb', function()
                builtin.buffers({
                    sort_mru = true,
                })
            end)
            -- Git
            vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
            vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
            vim.keymap.set('n', '<leader>gb', builtin.git_branches, {})
        end
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown {}
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end
    },
}


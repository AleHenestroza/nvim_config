vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ga", "[[:!git add %:p<CR>]]", { noremap = true, silent = true })

vim.opt.number = true
vim.opt.signcolumn = "yes:1"

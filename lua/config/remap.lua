vim.g.mapleader = " "

vim.keymap.set("i", "(", "()<Esc>i")
vim.keymap.set("i", "[", "[]<Esc>i")
vim.keymap.set("i", "{", "{}<Esc>i")
vim.keymap.set("i", "'", "''<Esc>i")
vim.keymap.set("i", '"', '""<Esc>i')

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<leader>s", ":w<CR>")

-- vim.keymap.set("n", "<leader>fmt", "=gg=G", { desc = "Format entire file"})

vim.g.mapleader = " "

vim.keymap.set("i", "(", "()<Esc>i")
vim.keymap.set("i", "[", "[]<Esc>i")
vim.keymap.set("i", "{", "{}<Esc>i")
vim.keymap.set("i", "'", "''<Esc>i")
vim.keymap.set("i", '"', '""<Esc>i')

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- because I can't type
-- vim.keymap.set("n", ":Wq<CR>", ":wq<CR>")

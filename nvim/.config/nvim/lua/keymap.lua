vim.g.mapleader = " "  --changing leader key

--switching between buffer
vim.keymap.set("n","<leader>n",":bn<cr>")
vim.keymap.set("n","<leader>p",":bp<cr>")
vim.keymap.set("n","<leader>x",":bd<cr>")


--comment 
vim.keymap.set({"n","v"},"<leader>/",":CommentToggle<cr>")



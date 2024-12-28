
vim.opt.nu = true --enable line number
vim.opt.relativenumber = true --relative line number
vim.opt.encoding="utf-8"


--tab handle
vim.opt.tabstop=2
vim.opt.shiftwidth=2  --indent size
vim.opt.smarttab=true
vim.opt.autoindent=true
vim.opt.expandtab=true
vim.opt.list=true


--igonre case when search
vim.opt.ignorecase=true
vim.opt.smartcase=true

vim.opt.termguicolors=true  --ture color support

--better search
vim.opt.hlsearch=false
vim.opt.incsearch=true


--minimum amount of size to me maintained around the cursor
vim.opt.scrolloff=8
vim.opt.sidescrolloff=8



vim.opt.guifont = { "hack", ":h16" }

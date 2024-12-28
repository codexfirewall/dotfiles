local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
{
    'nvim-telescope/telescope.nvim', tag = '0.1.6',
-- or                              , branch = '0.1.x',
      dependencies = { 'nvim-lua/plenary.nvim' }
},
{
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
  end,
},
{'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},


{"williamboman/mason.nvim"},
{"williamboman/mason-lspconfig.nvim"},
{"neovim/nvim-lspconfig"},

{'hrsh7th/nvim-cmp'},
{'hrsh7th/cmp-nvim-lsp'},
{'L3MON4D3/LuaSnip'},
{"rafamadriz/friendly-snippets"},
{"saadparwaiz1/cmp_luasnip"},

})

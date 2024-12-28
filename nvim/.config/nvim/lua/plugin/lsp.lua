require("mason").setup()
require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls","pylsp","vtsls" }
})

local a = function(_,_)
  vim.keymap.set("n","K",vim.lsp.buf.hower,{})
end

local cap = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").lua_ls.setup{
  on_attach=a,
  capabilities=cap,
}

require("lspconfig").pylsp.setup{
  on_attach=a,
  capabilities=cap,
}

require("lspconfig").taplo.setup{
  on_attach=a,
  capabilities=cap,
}

require("lspconfig").vtsls.setup{
  on_attach=a,
  capabilities=cap,
}

require("lspconfig").html.setup{
  --on_attach=a,
  --capabilities=cap,
}

require("lspconfig").htmx.setup{
  --on_attach=a,
  --capabilities=cap,
}


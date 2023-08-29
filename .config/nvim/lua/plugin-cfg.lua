-- THEME

require("catppuccin").setup({flavour = "frappe"})
vim.cmd.colorscheme 'catppuccin'

-- LSP
require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").gopls.setup{}
require("formatter").setup {}


local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimport()
  end,
  group = format_sync_grp,
})


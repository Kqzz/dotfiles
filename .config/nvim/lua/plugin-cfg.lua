local util = require("formatter.util")

-- THEME

require("catppuccin").setup({flavour = "frappe"})
vim.cmd.colorscheme 'catppuccin'


-- LSP
require("mason").setup()
require("mason-lspconfig").setup()

require("lspconfig").gopls.setup{}
require("formatter").setup{
  filetype = { c = require("formatter.filetypes.c").clangformat}
}

vim.api.nvim_exec(
[[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost * FormatWrite
augroup END
]],
true)

local format_sync_grp = vim.api.nvim_create_augroup("GoFormat", {})
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
   require('go.format').goimport()
  end,
  group = format_sync_grp,
})

require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

-- file browser / telescope configs
require("telescope").setup {}
require("telescope").load_extension "file_browser"

vim.api.nvim_set_keymap(
  "n",
  "<space>f",
  ":Telescope file_browser path=%:p:h select_buffer=true<CR>",
  { noremap = true }
)

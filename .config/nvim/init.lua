require('plugins')

require('config')

require('lsp_stuff')

require('keybindings')

require('gitsigns').setup()

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

require('plugins')

require('config')

require('lsp_stuff')

require('keybindings')

vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

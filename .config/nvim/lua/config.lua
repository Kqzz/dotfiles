local utils = require('utils')

local cmd = vim.cmd


-- colorscheme

utils.opt('o', 'termguicolors', true)

cmd'syntax on'
cmd'colorscheme onedark'
-- cmd'set t_Co=256'

-- mouse
cmd'set mouse=a'

-- line numbers
cmd'set relativenumber'

-- startpage

vim.g.startify_custom_header = {
  '        ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗',
  '        ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║',
  '        ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║',
  '        ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║',
  '        ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║',
  '        ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝'
}

vim.g.startify_bookmarks = {
  {v = '~/.config/nvim/'},
  {z = '~/.zshrc'},
}

vim.g.startify_commands = {
  {pu = ':PackerUpdate'},
  {pc = ':PackerCompile'},
  {ps = ':PackerInstall'}
}

vim.g.startify_change_dir = 1

vim.g.startify_lists = {
  {type = 'files', header = {'   Recent Files'}},
  {type = 'sessions', header = {'   Sessions'}},
  {type = 'bookmarks', header = {'   Bookmarks'}},
  {type = 'commands', header = {'   Commands'}}
}

-- lightbulb
vim.cmd [[autocmd CursorHold,CursorHoldI * lua require'nvim-lightbulb'.update_lightbulb()]]

vim.o.completeopt = "menuone,noselect"

-- nvim tree
vim.g.nvim_tree_auto_open = 1

vim.g.neovide_refresh_rate = 140

cmd[[set guifont=Fira\ Code\ Nerd\ Font:h14]]


cmd'set smarttab'
cmd'set ts=4 sw=4'

vim.g.vimwiki_lists = {
	{
		path = '~/documents/vimwiki',
		syntax = 'markdown',
		ext = '.md'
	}
}

vim.g.nvim_tree_auto_ignore_ft = {
	'startify',
	'dashboard'
}

cmd [[
nnoremap <silent>    <A-1> :BufferGoto 1<CR>
nnoremap <silent>    <A-2> :BufferGoto 2<CR>
nnoremap <silent>    <A-3> :BufferGoto 3<CR>
nnoremap <silent>    <A-4> :BufferGoto 4<CR>
nnoremap <silent>    <A-5> :BufferGoto 5<CR>
nnoremap <silent>    <A-6> :BufferGoto 6<CR>
nnoremap <silent>    <A-7> :BufferGoto 7<CR>
nnoremap <silent>    <A-8> :BufferGoto 8<CR>
nnoremap <silent>    <A-9> :BufferLast<CR>
]]

cmd [[
highlight Normal guibg=none
highlight NonText guibg=none
]]


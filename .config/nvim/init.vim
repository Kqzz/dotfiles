call plug#begin('~/.local/share/nvim/plugged')

" Plugins

" jedi
Plug 'davidhalter/jedi-vim'

" colors
Plug 'sonph/onehalf', { 'rtp': 'vim' }

" fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" nerdtree
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Multi cursors
Plug 'terryma/vim-multiple-cursors'

" Python 
" Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
" Plug 'dense-analysis/ale'
Plug 'Vimjas/vim-python-pep8-indent'

Plug 'b3nj5m1n/kommentary'

" Lualine
Plug 'hoob3rt/lualine.nvim'
Plug 'ryanoasis/vim-devicons'

" tag autoclosing
Plug 'cohama/lexima.vim'
Plug 'alvan/vim-closetag'

call plug#end()

" Line Numbers
set relativenumber

" Colors

colorscheme onehalfdark

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Indents

au BufNewFile,BufRead *.py
    \ set expandtab       |" replace tabs with spaces
    \ set autoindent      |" copy indent when starting a new line
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4

" disable other python tab formatter
let g:pymode_indent = 0


" vimrc

let g:lualine = {
    \'options' : {
    \  'theme' : 'auto',
    \  'section_separators' : ['', ''],
    \  'component_separators' : ['', ''],
    \  'disabled_filetypes' : [],
    \  'icons_enabled' : v:true,
    \},
    \'sections' : {
    \  'lualine_a' : [ ['mode', {'upper': v:true,},], ],
    \  'lualine_b' : [ ['branch', {'icon': '',}, ], ],
    \  'lualine_c' : [ ['filename', {'file_status': v:true,},], ],
    \  'lualine_x' : [ 'encoding', 'fileformat', 'filetype' ],
    \  'lualine_y' : [ 'progress' ],
    \  'lualine_z' : [ 'location'  ],
    \},
    \'inactive_sections' : {
    \  'lualine_a' : [  ],
    \  'lualine_b' : [  ],
    \  'lualine_c' : [ 'filename' ],
    \  'lualine_x' : [ 'location' ],
    \  'lualine_y' : [  ],
    \  'lualine_z' : [  ],
    \},
    \'extensions' : [ 'fzf' ],
    \}
lua require("lualine").setup()

" Keybinds

" Map ctrl+t to fzf
nnoremap <C-t> <Esc>:FZF<CR>

" map ctrl + \ to NerdTreeToggle

nnoremap <C-\> <Esc>:NERDTreeToggle<CR>

" Change splits to be more intuitive (Ctrl-w - and Ctrl-w |)
no <C-w>- <C-w>n
no <C-w>\| :vnew<CR>

" reload vim file
nnoremap <leader>sv :source /home/kqzz/.config/nvim/init.vim<CR>

set mouse=a

" Neovide configuration
set guifont=Fira\ Code\ Nerd\ Font:11

" closetag config
let g:closetag_filetypes = 'html,xhtml,jsx,javascript'
let g:closetag_emptyTags_caseSensitive = 1

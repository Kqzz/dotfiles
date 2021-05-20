local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local opt = {}

map('n', '<C-n>', ':NvimTreeToggle<CR>', {silent = true})

map('n', '<C-w>-', '<C-w>n')
map('n', '<C-w>|', ':vnew<CR>')

map('n', '<C-l>', ':LspTroubleToggle<CR>')
map('n', '<LEADER>a', ':call Calc()<CR>')

-- nnoremap <silent> ff    <cmd>lua vim.lsp.buf.formatting()<CR>

map('n', 'ff', '<cmd>lua vim.lsp.buf.formatting()<CR>', { silent = true })
map('n', '<leader>f', '<cmd>Telescope find_files<cr>')

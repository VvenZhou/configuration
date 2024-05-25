-----------------------------------------------------------
-- Define keymaps of Neovim and installed plugins.
-----------------------------------------------------------

local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

local function nsimap(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = false }
    if opts then
        options = vim.tbl_extend('force', options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- Change leader to a comma
vim.g.mapleader = ','

-----------------------------------------------------------
-- Neovim shortcuts
-----------------------------------------------------------

-- Disable arrow keys
map('', '<up>', '<nop>')
map('', '<down>', '<nop>')
map('', '<left>', '<nop>')
map('', '<right>', '<nop>')

-- Map Esc to kk
map('i', 'kk', '<Esc>')

-- Toggle auto-indenting for code paste
--map('n', '<F2>', ':set invpaste paste?<CR>')
--vim.opt.pastetoggle = '<F2>'

-- Change split orientation
--map('n', '<leader>tk', '<C-w>t<C-w>K') -- change vertical to horizontal
--map('n', '<leader>th', '<C-w>t<C-w>H') -- change horizontal to vertical
map("n", "sv", ":vsp<CR>")
map("n", "sh", ":sp<CR>")
map("n", "sc", "<C-w>c") -- close current
map("n", "so", "<C-w>o") -- close others

-- Move around splits using Alt + {h,j,k,l}
map('n', '<A-h>', '<C-w>h')
map('n', '<A-j>', '<C-w>j')
map('n', '<A-k>', '<C-w>k')
map('n', '<A-l>', '<C-w>l')

map('n', '<C-u>', '8<C-y>8k')
map('n', '<C-d>', '8<C-e>8j')

-- Move around tabs
map('n', 'th', ':tabfirst<CR>')
map('n', 'tl', ':tablast<CR>')
map('n', 'tj', ':tabnext<CR>')
map('n', 'tk', ':tabprev<CR>')
--map('n', 'tq', ':tabclose<CR>')
nsimap('n', 'tt', ':tabedit<Space>')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Fast saving with <leader> and s
map('n', '<leader>s', ':w<CR>')

-- Close current windows and exit from Neovim with <leader> and q
map('n', '<leader>q', ':q!<CR>')

-- Clear search highlighting with <leader> and c
nsimap('n', '<leader>c', ':nohl<CR>')
-----------------------------------------------------------
-- Applications and Plugins shortcuts
-----------------------------------------------------------

-- Terminal mappings
--map('n', '<C-t>', ':Term<CR>', { noremap = true })  -- open
--map('t', '<Esc>', '<C-\\><C-n>')                    -- exit

-- NvimTree
map('n', '<C-n>', ':NvimTreeToggle<CR>')       -- open/close
map('n', '<leader>f', ':NvimTreeRefresh<CR>')  -- refresh
map('n', '<leader>n', ':NvimTreeFindFile<CR>') -- search file

-- Tagbar
map('n', '<leader>z', ':TagbarToggle<CR>') -- open/close

local opts = {noremap = true, silent = true}
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Save file
keymap('n', '<c-s>', ':w<CR>', {})
keymap('i', '<c-s>', '<Esc>:w<CR>a', {})

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Moving between splits
keymap('n', '<c-j>', '<c-w>j', opts) -- Moving to the window below 
keymap('n', '<c-h>', '<c-w>h', opts) -- Moving to the window on the left
keymap('n', '<c-k>', '<c-w>k', opts) -- Moving to the window on top
keymap('n', '<c-l>', '<c-w>l', opts) -- Moving to the window on the right

-- Resize with arrows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Nvimtree Mappings
keymap('n', '<c-n>', ':NvimTreeToggle <CR>', opts)
keymap('n', '<c-f>', ':NvimTreeFocus <CR>', opts)

-- Window splitting
keymap('n', 'sv', ':vsplit<CR>', {}) -- Vertical splitting
keymap('n', 'ss', ':split<CR>', {}) -- Hotizontal splitting

-- Telescope
keymap("n", "<leader>f", "<cmd>Telescope find_files<cr>", opts)

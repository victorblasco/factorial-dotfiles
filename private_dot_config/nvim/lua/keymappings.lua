-- Resize with arrows
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", { silent = true })
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", { silent = true })
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", { silent = true })

-- Better indenting
vim.keymap.set("v", "<", "<gv", { silent = true })
vim.keymap.set("v", ">", ">gv", { silent = true })

-- Move selected line / block of text in visual mode
vim.keymap.set("x", "K", ":move '<-2<CR>gv-gv", { silent = true })
vim.keymap.set("x", "J", ":move '>+1<CR>gv-gv", { silent = true })

-----------------------------
------ Custom mappings ------
-----------------------------
local opts = { noremap = true, silent = true }

-- Remap comma as leader key
vim.g.mapleader = ","
vim.g.maplocalleader = "."

-- Insert --
-- Press jk fast to enter
keymap("i", "jk", "<ESC>", opts)

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)
-- Search
keymap("n", "<Space>", "/", opts)
keymap("n", "<leader><Space>", ":noh<CR>", opts)
-- Buffers saving stuff
keymap("n", "<leader><ESC>", ":q!<CR>", opts)
keymap("n", "<leader>q", ":wqa!<CR>", opts)
keymap("n", "<leader>w", ":w!<CR>", opts)
keymap("n", "<leader>e", ":wa!<CR>", opts)
-- Buffers navigation/deletion
keymap("n", "<tab>", ":bp<CR>", opts)
keymap("n", "<S-tab>", ":bn<CR>", opts)
keymap("n", "<leader>d", ":bd<CR>", opts)
-- Splits & tabs
keymap("n", "<leader>v", ":vert new %<CR>", opts)
keymap("n", "<leader>x", ":new %<CR>", opts)
keymap("n", "<leader>d", ":close<CR>", opts)
keymap("n", "<S-l>", ":tabnext<CR>", opts)
keymap("n", "<S-h>", ":tabprevious<CR>", opts)
keymap("n", "<leader>f", ":tabe %<CR>", opts)
keymap("n", "<leader>D", ":%bd|e#|bd#<CR>", opts)

-- Visual --
-- Copy to clipboard with Ctrl-C
keymap("v", "<C-c>", "+y>CR>", opts)

-- Nvimtree
keymap("n", "<leader>p", ":NvimTreeToggle<cr>", opts)

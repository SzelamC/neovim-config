local g = vim.g
local keymap = vim.keymap

-- leader key
g.mapleader = " "

local opts = { silent = true }

-- common keymap
keymap.set("i", "jk", "<ESC>")
keymap.set("i", ";;", "<ESC>A;")
keymap.set("n", "<leader>h", ":nohl<CR>")
keymap.set("n", "x", '"_x')
keymap.set("n", "<C-s>", ":w<CR>")
keymap.set("n", "<C-h>", "<C-w>h")
keymap.set("n", "<C-j>", "<C-w>j")
keymap.set("n", "<C-k>", "<C-w>k")
keymap.set("n", "<C-l>", "<C-w>l")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<leader>y", '"+y')
keymap.set("v", "<leader>y", '"+y')
keymap.set("n", "<leader>vs", ":vsplit<CR>")
keymap.set("n", "<leader>s", ":split<CR>")
keymap.set("n", "<leader>q", ":BufferClose<CR> <C-w>q")

-- Nvim Tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- Telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<CR>")
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<CR>")
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<CR>")
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<CR>")

-- lsp related
keymap.set("n", "<leader>lf", ":lua vim.lsp.buf.format()<CR>", { silent = true })

-- barbar
keymap.set("n", "H", ":BufferPrevious<CR>")
keymap.set("n", "L", ":BufferNext<CR>")
keymap.set("n", "<leader>c", ":BufferClose<CR>", opts)
keymap.set("n", "<leader>bp", ":BufferPin<CR>", opts)

-- Lspsaga
keymap.set("n", "<leader>la", ":Lspsaga code_action<CR>", opts)
keymap.set("n", "<leader>gd", ":Lspsaga hover_doc<CR>", opts)
keymap.set("n", "gr", ":Lspsaga rename<CR>", opts)
keymap.set("n", "gd", ":Lspsaga goto_type_definition<CR>", opts)
keymap.set("n", "ge", ":Lspsaga show_line_diagnostics<CR>", opts)

-- disable
keymap.set("n", "q", "<Nop>")

-- copilot
keymap.set("n", "q", "<Nop>")
vim.api.nvim_set_keymap("i", "<C-]>", 'copilot#Accept("<CR>")', { silent = true, expr = true })

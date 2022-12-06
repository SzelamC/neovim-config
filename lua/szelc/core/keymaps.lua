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

-- buufer line
keymap.set("n", "H", ":BufferLineCyclePrev<CR>")
keymap.set("n", "L", ":BufferLineCycleNext<CR>")
keymap.set("n", "<leader>c", ":bd<CR>", opts)

local opt = vim.opt

-- line number
opt.relativenumber = true
opt.number = true

--tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- apperance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.guicursor = ""

--backspace
opt.backspace = "indent,eol,start"

--clipboard
opt.clipboard:append("unnamedplus")
opt.clipboard = "unnamedplus"

--split windows
opt.splitright = true
opt.splitbelow = true

opt.iskeyword:append("-")

opt.cmdheight = 1
opt.colorcolumn = "99999"
opt.completeopt = { "menuone", "noselect" }
opt.conceallevel = 0
vim.opt.fileencoding = "utf-8"
opt.foldmethod = "manual"
opt.foldexpr = ""
opt.hlsearch = true
opt.mouse = "a"
opt.pumheight = 10
opt.showmode = false
opt.showtabline = 2
opt.swapfile = false
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.timeoutlen = 200

vim.diagnostic.config({
  virtual_text = {
    prefix = " 👿 "
  }
})

-- highlight
vim.cmd[[
autocmd!
au TextYankPost * silent! lua vim.highlight.on_yank({higroup="Visual", timeout=40})
augroup END
]]

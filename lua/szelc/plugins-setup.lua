local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"wbthomason/packer.nvim",

	-- essential plugins
	"nvim-lua/plenary.nvim",

	-- shorthand
	"tpope/vim-surround",

	-- file explorer
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		tag = "nightly",
	},

	-- comment & utils
	"numToStr/Comment.nvim",
	"p00f/nvim-ts-rainbow",
	{
		"norcalli/nvim-colorizer.lua",
		lazy = true,
		config = function()
			require("colorizer").setup({})
		end,
	},
	"folke/todo-comments.nvim",
	"lukas-reineke/indent-blankline.nvim",

	-- appearance
	"bluz71/vim-nightfly-colors",
	"catppuccin/nvim",
	"inside/vim-search-pulse",

	-- status line
	{
		"nvim-lualine/lualine.nvim",
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
	},

	-- telescope
	{ "nvim-telescope/telescope.nvim", tag = "0.1.0" },
	{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },

	-- autocompletion
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lsp",
		},
	},

	-- snippets
	"L3MON4D3/LuaSnip",
	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",

	-- LSP
	"williamboman/mason.nvim",
	"williamboman/mason-lspconfig.nvim",
	"neovim/nvim-lspconfig",
	{ "glepnir/lspsaga.nvim", branch = "main" },
	"onsails/lspkind.nvim",
	"j-hui/fidget.nvim",

	-- formatting & linting
	"jose-elias-alvarez/null-ls.nvim",
	"jayp0521/mason-null-ls.nvim",

	-- Treesitter
	"nvim-treesitter/nvim-treesitter",
	"nvim-treesitter/playground",

	-- auto closing
	"windwp/nvim-autopairs",
	"windwp/nvim-ts-autotag",

	-- buffer line
	{ "akinsho/bufferline.nvim", dependencies = { "nvim-tree/nvim-web-devicons" } },

	-- git
	"lewis6991/gitsigns.nvim",

	-- playground
	"ThePrimeagen/vim-be-good",

	"github/copilot.vim",
}, {
	defaults = { lazy = false },
	install = { colorscheme = { "nightfly", "tokyonight" } },
	checker = { enabled = true },
	change_detection = {
		notify = false,
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"matchit",
				"matchparen",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})

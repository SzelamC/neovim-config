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
    config = function()
      require("szelc.plugins.nvim-tree")
    end,
  },
  -- comment & utils
  { "numToStr/Comment.nvim", config = true },
  { "p00f/nvim-ts-rainbow" },
  {
    "NvChad/nvim-colorizer.lua",
    config = true,
  },
  { "folke/todo-comments.nvim", config = true },
  "lukas-reineke/indent-blankline.nvim",
  -- appearance
  "bluz71/vim-nightfly-colors",
  { "rebelot/kanagawa.nvim" },
  {
    "folke/tokyonight.nvim",
    config = function()
      require("szelc.plugins.tokyonight")
      -- vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("szelc.plugins.catppuccin")
      vim.cmd([[colorscheme catppuccin]])
    end,
  },
  -- status line
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("szelc.plugins.lualine")
    end,
  },
  -- telescope
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.0",
    config = function()
      require("szelc.plugins.telescope")
    end,
  },
  { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  -- autocompletion
  {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    config = function()
      require("szelc.plugins.nvim-cmp")
    end,
  },
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-nvim-lsp",
  -- snippets
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
  "rafamadriz/friendly-snippets",
  -- LSP
  {
    "williamboman/mason.nvim",
    config = function()
      require("szelc.plugins.lsp.mason")
    end,
  },
  "williamboman/mason-lspconfig.nvim",

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("szelc.plugins.lsp.lspconfig")
    end,
  },
  {
    "glepnir/lspsaga.nvim",
    branch = "main",
    config = function()
      require("szelc.plugins.lsp.lspsaga")
    end,
  },
  "onsails/lspkind.nvim",
  { "j-hui/fidget.nvim",                        config = true },
  -- formatting & linting
  {
    "jose-elias-alvarez/null-ls.nvim",
    config = function()
      require("szelc.plugins.lsp.null-ls")
    end,
  },
  "jayp0521/mason-null-ls.nvim",
  -- Treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    config = function()
      require("szelc.plugins.treesitter")
    end,
  },
  "nvim-treesitter/playground",
  -- auto closing
  {
    "windwp/nvim-autopairs",
    config = function()
      require("szelc.plugins.autopairs")
    end,
  },
  { "windwp/nvim-ts-autotag" },
  -- buffer line
  {
    "romgrk/barbar.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("szelc.plugins.barbar")
    end,
  },
  -- git
  { "lewis6991/gitsigns.nvim", config = true },
  -- -- playground
  -- "ThePrimeagen/vim-be-good",

  "github/copilot.vim",
}, {
  defaults = { lazy = false },
  checker = { enabled = true },
  change_detection = {
    notify = false,
  },
  performance = {
    rtp = {
      disabled_plugins = {
        "gzip",
        "matchit",
        -- "matchparen",
        "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})

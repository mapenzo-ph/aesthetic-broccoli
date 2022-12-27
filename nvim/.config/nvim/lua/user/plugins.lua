local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
    return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function(use)

  -- Fundamental plugins 
  use "wbthomason/packer.nvim" -- Have packer manage itself (update and reload)
  use "nvim-lua/popup.nvim"    -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"  -- Useful lua functions used in lots of plugins

  -- cmp plugins
  use "hrsh7th/nvim-cmp"         -- completion plugin
  use "hrsh7th/cmp-buffer"       -- buffer completions
  use "hrsh7th/cmp-path"         -- path completions
  use "hrsh7th/cmp-cmdline"      -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions 
  use "hrsh7th/cmp-nvim-lsp"     -- LSP completions
  -- use "hrsh7th/cmp-nvim-lua"     -- lua completions for vim API
  use "windwp/nvim-autopairs"    -- autopairs completion

  -- snippets plugins
  use "L3MON4D3/LuaSnip"             -- snippet engine
  use "rafamadriz/friendly-snippets" -- curated list of snippets

  -- LSP
  use "neovim/nvim-lspconfig"             -- enable LSP
  use "williamboman/mason.nvim"           -- simple language server
  use "williamboman/mason-lspconfig.nvim" -- simple to use language server installer
  use "jose-elias-alvarez/null-ls.nvim"   -- LSP diagnostics and code actions

  -- Telescope
  use "nvim-telescope/telescope.nvim"              -- telescope
  use "nvim-telescope/telescope-media-files.nvim"  -- preview images in telescope

  -- Treesitter
  use({
    "nvim-treesitter/nvim-treesitter",
    run = function()
      local ts_update = require("nvim-treesitter.install").update({ with_sync = true })
      ts_update()
    end,
  })
  use "p00f/nvim-ts-rainbow"
  use "nvim-treesitter/playground"

  -- Comments
  use "numToStr/Comment.nvim"
  use "JoosepAlviste/nvim-ts-context-commentstring"

  -- Git integration
  use "lewis6991/gitsigns.nvim"

  -- File tree
  use "kyazdani42/nvim-web-devicons" -- icons, also used in bufferline
  use "kyazdani42/nvim-tree.lua"

  -- Bufferline
  use "akinsho/bufferline.nvim"
  use "moll/vim-bbye"

  -- Colorscheme plugins 
  use "folke/tokyonight.nvim"   -- Tokyo Night colorscheme
  use "lunarvim/darkplus.nvim"  -- Lunarvim Darkplus colorscheme
  use "lunarvim/onedarker.nvim" -- Lunarvim Onedarker colorscheme


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

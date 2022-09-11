local fn = vim.fn

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

require('packer').startup(function()                                                                  
  use 'wbthomason/packer.nvim'                                                                        

-- Comments
  use "numToStr/Comment.nvim" -- Easily comment stuff  
  use 'JoosepAlviste/nvim-ts-context-commentstring' -- Comment based on the type of the file

-- AlphaNvim                                                                                        
 use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
} 

-- Plenary
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
-- Popup
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
-- cmp plugins
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-nvim-lua"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

-- NvimTree                                                                                         
  use {                                                                                               
    'kyazdani42/nvim-tree.lua',                                                                       
    requires = {                                                                                      
      'kyazdani42/nvim-web-devicons', -- optional, for file icons                                     
    },                                                                                                
    tag = 'nightly' -- optional, updated every week. (see issue #1193)                                
  }                           

-- Telescope
  use "nvim-telescope/telescope.nvim"

-- ToggleTerm
   use "akinsho/toggleterm.nvim"

-- LSP
  use "neovim/nvim-lspconfig" -- enable LSP
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer

-- Colorscheme section
  use("gruvbox-community/gruvbox")

-- Media-files-telescope
  use "nvim-telescope/telescope-media-files.nvim"

-- Lualine
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

-- Treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate",
  }
  use "p00f/nvim-ts-rainbow" -- It enables to recognize parenthesis by coloring them with rainbow colors

end)

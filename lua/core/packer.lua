local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({"git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require("packer").startup(function(use)
  -- Packer can manage itself
  use "wbthomason/packer.nvim"

  use { "nvim-telescope/telescope.nvim", tag = "0.1.8", requires = {{"nvim-lua/plenary.nvim"}} }

  use "ellisonleao/gruvbox.nvim"

  use "nvim-treesitter/nvim-treesitter"

  use "nvim-lua/plenary.nvim"

  use "mbbill/undotree"

  use "tpope/vim-fugitive"

  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/nvim-cmp"
  use { "L3MON4D3/LuaSnip", tag = "v2.*", }

  use "mason-org/mason.nvim"
  use "neovim/nvim-lspconfig"
  use "mason-org/mason-lspconfig.nvim"

  if packer_bootstrap then
	  require("packer").sync()
  end
end)


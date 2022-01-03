-----------------------------------------------------------
-- Plugin manager configuration file
-----------------------------------------------------------

-- Plugin manager: packer.nvim
-- https://github.com/wbthomason/packer.nvim

-- For information about installed plugins see the README
--- neovim-lua/README.md
--- https://github.com/brainfucksec/neovim-lua#readme

--vim.cmd [[packadd packer.nvim]]
require('packer').startup(function()

	use 'wbthomason/packer.nvim'			-- packer can manage itself
	use 'junegunn/goyo.vim'					-- Distraction free writing in Vim
	use 'vim-airline/vim-airline'			-- Status bar
	use 'ayu-theme/ayu-vim'					-- A good color scheme
	use 'nvim-treesitter/nvim-treesitter'	-- treesitter
	use 'junegunn/limelight.vim'			-- Limelight
	use 'jiangmiao/auto-pairs'				-- auto pairs
	
end)

--vim.cmd([[
--  augroup packer_user_config
--    autocmd!
--    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
--  augroup end
--]])



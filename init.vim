"	sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
"       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

set number
set relativenumber
set autoindent
set tabstop=4
set shiftwidth=4
set smarttab
set softtabstop=4
set mouse=a
set nocompatible
set textwidth=100 "Ensures that each line is not longer than 100 columns
filetype plugin on
"filetype off

command! -nargs=* Wrap set wrap linebreak nolist

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/tpope/vim-sensible'
Plug 'https://github.com/rafi/awesome-vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'https://github.com/vim-airline/vim-airline' " Status bar
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'sheerun/vim-polyglot'
Plug 'jiangmiao/auto-pairs'
Plug 'https://github.com/preservim/nerdtree' " NerdTree
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/junegunn/goyo.vim'	"Distraction-free writing in Vim.
Plug 'https://github.com/preservim/vim-pencil'
Plug 'https://github.com/junegunn/limelight.vim'
Plug 'https://github.com/ayu-theme/ayu-vim'
Plug 'https://github.com/mzlogin/vim-markdown-toc'
Plug 'https://github.com/machakann/vim-highlightedyank'

call plug#end()
" Color schemes
"colorscheme gruvbox
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
let ayucolor="dark"   " for dark version of theme
colorscheme ayu


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

map <F9> :Goyo 120x50 <bar> <CR>

let g:pencil#wrapModeDefault = 'soft'   " default is 'hard'
let g:pencil#joinspaces = 0     " 0=one_space (def), 1=two_spaces

augroup pencil
  autocmd!
  autocmd FileType markdown,mkd call pencil#init()
  autocmd FileType text         call pencil#init({'wrap': 'hard'})
augroup END

" Color name (:help cterm-colors) or ANSI code
let g:limelight_conceal_ctermfg = 100

" Color name (:help gui-colors) or RGB color
let g:limelight_conceal_guifg = '#83a598'

autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!




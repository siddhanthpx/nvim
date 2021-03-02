set nu
set nocompatible
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
filetype off

call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Color Theme - Tokyo Night

Plug 'ghifarit53/tokyonight-vim'

"Git Integration
Plug 'tpope/vim-fugitive'

"NerdTREE
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'
call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
colorscheme tokyonight


map <silent> <C-n> :NERDTreeFocus<CR>
let g:airline#extensions#tabline#enabled = 1
let g:gruvbox_contrast_dark = 'hard'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'


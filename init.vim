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

"Color Theme - Iceberg

Plug 'arcticicestudio/nord-vim'

"Git Integration
Plug 'tpope/vim-fugitive'

"NerdTREE
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'rust-lang/rust.vim'
Plug 'ryanoasis/vim-devicons'
call plug#end()

colorscheme nord

if (has("termguicolors"))
 set termguicolors
endif

map <silent> <C-n> :NERDTreeFocus<CR>
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'


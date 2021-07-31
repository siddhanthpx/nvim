set nu
set number relativenumber
set nocompatible
set nowrap
set scrolloff=7
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set noswapfile
filetype off

call plug#begin('~/.config/nvim/plugged')

"Lightline

Plug 'itchyny/lightline.vim'

"Color Theme - One Dark

"Plug 'joshdick/onedark.vim'
Plug 'tomasr/molokai'

"Git Integration

Plug 'tpope/vim-fugitive'

"Golang

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }


"NerdTREE
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'

Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ryanoasis/vim-devicons'

call plug#end()

if (has("termguicolors"))
 set termguicolors
endif

syntax enable
set background=light
colorscheme molokai
"highlight Normal guibg=None


map <silent> <C-n> :NERDTreeFocus<CR>
"nmap <C-_> <Plug>NERDCommenterToggle
"nmap <C-_> <Plug>NERDCommenterToggle<CR>gv
let g:NERDTreeWinPos = "right"
let g:NERDCreateDefaultMappings = 1
let g:go_highlight_structs = 1 
let g:go_highlight_methods = 1
let g:go_highlight_functions = 1
let g:go_highlight_operators = 1
let g:go_highlight_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_build_constraints = 1
let g:onedark_terminal_italics = 1


let g:lightline = {
\'colorscheme': 'onedark',
\}

" -------------------------------------------------------------------------------------------------
" coc.nvim default settings
" -------------------------------------------------------------------------------------------------

" if hidden is not set, TextEdit might fail.
set hidden
" Better display for messages
set cmdheight=2
" Smaller updatetime for CursorHold & CursorHoldI
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use U to show documentation in preview window
nnoremap <silent> U :call <SID>show_documentation()<CR>

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)
" Show all diagnostics
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <space>p  :<C-u>CocListResume<CR>

let g:go_def_mapping_enabled = 0


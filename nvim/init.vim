
set encoding=utf-8
set number relativenumber
syntax enable
set noswapfile
set scrolloff=7
set backspace=indent,eol,start

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set fileformat=unix
let mapleader=' '

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'sirver/ultisnips'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-airline/vim-airline'

call plug#end()

colorscheme gruvbox
let g:airline_theme='gruvbox'

"NerdTree
let NERDTreeQuitONOpen=1
let g:NERDTreeMinimalUI=1
nmap <C-B> :NERDTreeToggle<CR>

" Tabs for files
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'
nmap <leader>1 :bp<CR>
nmap <leader>2 :bp<CR>
nmap <C-w> :bd<CR>

" Utilisnips (Snippets)
let g:UltiSnippetDirectories=[$HOME.'/.config/nvim/ultisnips']
let  g:UtliSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardtrigger="<s-tab>"

" Completion of code (coc-config)
let g:coc_global_extensions = [
  \ 'coc-snippets',
  \ 'coc-pairs', 
  \ 'coc-prettier', 
  \ 'coc-json', 
  \ 'coc-clangd',
  \ 'coc-pyright',
  \ 'coc-go',
  \]

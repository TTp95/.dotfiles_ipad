" set config

" Set -------------------------------------------------------------------- {{{

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Set encoding and file encoding to UTF-8.
set encoding=utf-8
set fileencoding=utf-8

" Get colors to work correctly.
set t_Co=256

"TTp set
let mapleader=" "
set wildmode=longest,list,full
set wildmenu

set guicursor=
set hidden

set nu
set relativenumber

set noerrorbells

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set smartindent

set nowrap

set noswapfile
set nobackup
set undodir=~/Documents/.vim/undodir
set undofile

set nohlsearch
set incsearch

set termguicolors

set scrolloff=8
set signcolumn=yes
set isfname+=@-@

set colorcolumn=80
set mouse=a

" Give more space for displaying messages.
set cmdheight=1

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" }}}


" PLUGINS ---------------------------------------------------------------- {{{

" Vim-pathogen ---------------------------------------- {{{
runtime autoload/pathogen.vim
execute pathogen#infect()
" }}}

" Vim-airline ----------------------------------------- {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#whitespace#enabled = 0
let g:airline_powerline_fonts = 1
let g:airline_theme = 'tokyonight'
" }}}

" NERDTree -------------------------------------------- {{{
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

nnoremap <silent><C-f> :NERDTreeToggle<CR>

" }}}

" NERDCmt --------------------------------------------- {{{
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

" }}}

" GITGUTTER ------------------------------------------- {{{
nmap <leader>) <Plug>(GitGutterNextHunk)
nmap <leader>( <Plug>(GitGutterPrevHunk)

let g:gitgutter_enabled = 1
let g:gitgutter_map_keys = 0
let g:gitgutter_highlight_linenrs = 1

" }}}

" Vim maps -------------------------------------------- {{{
nnoremap <silent> Q <nop>

nnoremap <leader>vwh :h <C-R>=expand("<cword>")<CR><CR>
nnoremap <leader>bs /<C-R>=escape(expand("<cWORD>"), "/")<CR><CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :Ex<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>rp :resize 100<CR>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap Y yg$
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

" greatest remap ever
xnoremap <leader>p "_dP

" next greatest remap ever : asbjornHaland
nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y gg"+yG

nnoremap <leader>d "_d
vnoremap <leader>d "_d

inoremap <C-c> <esc>

" Use <Tab> and <S-Tab> to navigate through popup menu
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" }}}

" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" }}}


" STATUS LINE ------------------------------------------------------------ {{{
" Here are the statusline settings when vim-airline is not in use.

" Clear status line when vimrc is reloaded.
set statusline=

" Status line left side.
set statusline+=\ %f\ %M\ %Y\ %R

" Use a divider to separate the left side from the right side.
set statusline+=%=

" Status line right side.
set statusline+=\ ascii:\ %b\ hex:\ 0x%B\ row:\ %l\ col:\ %c\ file:\ %p%%

" Always show the status line.

set laststatus=2

" }}}


" COLORS ----------------------------------------------------------------- {{{

" Tokyo Night color scheme setup
let g:tokyonight_style = 'night'

" Color scheme is loaded at the end to prevent unexpected issues.
colorscheme tokyonight

" }}}

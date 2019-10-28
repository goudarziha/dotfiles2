set encoding=utf-8

" leader
let mapleader = " "

set guifont=Fira\ Code\ Retina:h14
set t_Co=256
colorscheme nord 
"set background=dark
hi NonText ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE
set number 
set relativenumber
syntax on
set autoindent
filetype plugin on
filetype indent on
set ignorecase
set smartcase
set hlsearch
set incsearch
set backspace=indent,eol,start
set laststatus=2
set expandtab
set tabstop=4
set shiftwidth=4
set noswapfile
set termguicolors
set hidden
set splitbelow
set splitright
set ruler
set hidden

" Code Commenting

" Disable Visual Bell
set vb t_vb=.

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Auto close {, (, ", '
inoremap ` ``<left>
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


" ===========================================================
" Nerd commenter
" ===========================================================
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'
let g:NERDCommentEmptyLines = 1
let g:NERDTrimTrailingWhitespace = 1
let g:NERDToggleCheckAllLines = 1

" ===========================================================
" Copy/paste to clipboard 
" ===========================================================
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" ===========================================================
" Fugitive Conflict Resolution
" ===========================================================
nnoremap <leader>gd :Gdiffsplit!<CR>
nnoremap gdh :diffget //2<CR>
nnoremap gdl :diffget //3<CR>

" key mappings
" ===========================================================
" NERDTree,
" ===========================================================

map <leader>n :NERDTreeToggle<CR>

nnoremap <leader>s :w<CR>

" ===========================================================
" Emmet
"
let g:user_emmet_leader_key=','

" buffer
:nnoremap <leader>T :enew<cr>
:nnoremap <leader>l :vsplit<CR>

:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
:nnoremap <C-X> :bdelete<CR>

" ===========================================================
" tab navigation
" ===========================================================
"
"map <c-w> :tabclose<cr>
"map <c-t> :tabnew<cr>
"nnoremap <leader>s : w<cr>
"map <tab> :tabNext<cr>
nnoremap <C-S-tab> :tabprevious<CR>
nnoremap <C-tab>   :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
inoremap <C-S-tab> <Esc>:tabprevious<CR>i
inoremap <C-tab>   <Esc>:tabnext<CR>i
inoremap <C-t>     <Esc>:tabnew<CR>


" ===========================================================
" split pane navigation
" ===========================================================
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" noremap <C-p> :Files<CR>
noremap <silent> <Leader><Space> :Files<CR>
noremap <silent> <Leader>. :Files <C-r>=expand("%:h")<CR>/<CR>
" Disable Arrow keys in Escape mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Disable Arrow keys in Insert mode
"imap <up> <nop>
"imap <down> <nop>
"imap <left> <nop>
"imap <right> <nop>

" airlne
let g:airline#extensions#syntastic#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#fnamemod = ':t'
" ============================================================
" map ctrl s to save file 
" ============================================================
noremap <C-S>       :update<CR>
vnoremap <C-S>      <C-C>:update<CR>
inoremap <C-S>      <C-O>:update<CR>

" ============================================================
" prettier
" ============================================================
"
let g:prettier#autoformat = 0
let g:prettier#quickfix_auto_focus = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.json,*.graphql,*.md,*.yaml,*.html PrettierAsync
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif

call plug#begin('~/.vim/plugged')
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'leafgarland/typescript-vim'
Plug 'Valloric/YouCompleteMe'
Plug 'leafgarland/typescript-vim'
Plug 'sheerun/vim-polyglot'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'SirVer/ultisnips'
Plug 'dense-analysis/ale'
Plug 'wincent/command-t'
Plug 'https://github.com/tpope/vim-fugitive.git'
Plug 'scrooloose/nerdcommenter'
Plug 'mattn/emmet-vim'
Plug 'mlaursen/vim-react-snippets'
Plug 'prettier/vim-prettier', { 'do': 'yarn install', 'for': ['javascript','svg', 'xml','typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call plug#end()


hi Normal guibg=NONE ctermbg=NONE
hi NonText ctermbg=NONE
hi LineNr ctermbg=NONE ctermfg=NONE guifg=DarkGrey term=bold cterm=bold guibg=NONE

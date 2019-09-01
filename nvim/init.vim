filetype off

call plug#begin('~/Applications/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'qpkorr/vim-bufkill'
Plug 'lifepillar/vim-solarized8'

Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-pyclang'
" Plug 'ncm2/ncm2-gtags'

" Plug 'jsfaint/gen_tags.vim'

call plug#end()

colorscheme solarized8
set background=dark

syntax on

set number
set ruler
set cursorline
set cursorcolumn
set hlsearch

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set laststatus=2

let g:python3_host_prog = '/anaconda3/bin/python3'

let mapleader=";"

nmap <Leader>j :bn<CR>
nmap <Leader>k :bp<CR>
map <Leader>v :vsplit<CR>
map <Leader>s :split<CR>

nmap <C-t> :NERDTreeToggle<CR>

let NERDTreeWinSize = 24
let NERDTreeWinPos = "left"
let NERDTreeShowHidden = 1
let NERDTreeMinimalUI = 1
let NERDTreeAutoDeleteBuffer = 1

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1

nmap <Leader>q :BD<CR>


" nvim-yarp
" let $NVIM_PYTHON_LOG_FILE = "/tmp/nvim_log"
" let $NVIM_PYTHON_LOG_LEVEL = "DEBUG"


" ncm2
autocmd BufEnter * call ncm2#enable_for_buffer()
set completeopt=noinsert,menuone,noselect

inoremap <expr> <CR> (pumvisible() ? "\<c-y>\<cr>" : "\<CR>")
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" ncm2-pyclang
let g:ncm2_pyclang#library_path = '/usr/local/Cellar/llvm/8.0.1/lib/libclang.dylib'

" gen_tags
let g:gen_tags#gtags_auto_gen = 1
let g:gen_tags#gtags_auto_update = 1

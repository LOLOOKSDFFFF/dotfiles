set nocompatible

if has('nvim')
    if !filereadable(expand('~/.config/nvim/autoload/plug.vim'))
        :!curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    endif
else
    if !filereadable(expand('~/.vim/autoload/plug.vim'))
        :!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    endif
endif

call plug#begin('~/.vim/plugged')
    Plug 'honza/vim-snippets'
    Plug 'hynek/vim-python-pep8-indent'
    Plug 'jiangmiao/auto-pairs'
    Plug 'scrooloose/nerdtree'
    Plug 'SirVer/ultisnips'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'vim-scripts/matchit.zip'
    Plug 'bling/vim-airline'
    Plug 'tpope/vim-commentary'
    Plug 'airblade/vim-gitgutter'
    Plug 'michaeljsmith/vim-indent-object'
    Plug 'leafgarland/typescript-vim'
    Plug 'nelstrom/vim-visual-star-search'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'benekastah/neomake'
    Plug 'junegunn/vim-easy-align'

    Plug 'ludovicchabant/vim-gutentags' "autogenerate tags
call plug#end()


filetype plugin indent on


set background=dark
set t_Co=256
set lazyredraw

set tabstop=4
set shiftwidth=4
set expandtab
set modeline

set autoread

set encoding=utf-8

set hlsearch
set incsearch
set ignorecase

set number

set ruler
set showcmd
set wildmenu
set laststatus=2


set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set guioptions-=m
set guioptions-=T


syntax enable
colorscheme desert


if has('nvim')
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    let $NVIM_TUI_ENABLE_CURSOR_SHAPE=1
endif


let mapleader=","

nnoremap <esc> :noh<return><esc>

map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>


autocmd BufWritePre * :%s/\s\+$//e " automatically removing all trailing whitespace


" equalprg
au FileType xml setlocal equalprg=xmllint\ --format\ --recover\ -\ 2>/dev/null
au FileType json setlocal equalprg=python\ -m\ json.tool\ 2>/dev/null


" Plugin settings
let NERDTreeQuitOnOpen = 1
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
nmap <C-\> :NERDTreeFind<CR>
let NERDTreeIgnore = ['\.pyc$']


let g:airline_powerline_fonts = 1


nnoremap <silent> <C-p> :Files<CR>
nnoremap <silent> <leader><Enter> :Buffers<CR>
let g:fzf_layout = { 'down': '~20%' }


map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR><C-w>r<CR>


autocmd! BufWritePost * Neomake
let g:neomake_python_flake8_maker = {'args': ['--ignore=E501']}
let g:neomake_error_sign = {'text': '❯❯', 'texthl': 'ErrorMsg'}

let g:neomake_typescript_tsc_maker = {'args': ['-m', 'commonjs', '-t', 'es6', '--outDir', '/tmp']}

autocmd Filetype typescript setlocal makeprg=tsc

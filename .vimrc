set nocompatible


" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


call plug#begin('~/.vim/plugged')
    Plug 'honza/vim-snippets'
    Plug 'hynek/vim-python-pep8-indent'
    Plug 'jiangmiao/auto-pairs'
    Plug 'kien/ctrlp.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'SirVer/ultisnips'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-surround'
    Plug 'vim-scripts/matchit.zip'
    Plug 'bling/vim-airline'
    Plug 'scrooloose/syntastic'
    Plug 'tpope/vim-commentary'
call plug#end()


filetype plugin indent on


set background=dark
set t_Co=256

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
endif


let mapleader=","

nnoremap <esc> :noh<return><esc>

map <C-k> <C-w><Up>
map <C-j> <C-w><Down>
map <C-l> <C-w><Right>
map <C-h> <C-w><Left>


autocmd BufWritePre * :%s/\s\+$//e " automatically removing all trailing whitespace


" Plugin settings
let NERDTreeQuitOnOpen = 1
nmap <silent> <leader><leader> :NERDTreeToggle<CR>
nmap <C-\> :NERDTreeFind<CR>

let g:syntastic_python_python_exec = '/bin/python2'
let g:syntastic_python_flake8_args = '--ignore=E501'

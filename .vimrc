set nocompatible


"curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim


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
call plug#end()


filetype plugin indent on


set autoread
set background=dark
set encoding=utf-8
set expandtab
set incsearch
set laststatus=2
set ruler
set scrolloff=1
set shiftwidth=4
set showcmd
set tabstop=4
set t_Co=256
set wildmenu


set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
set guioptions-=m
set guioptions-=T


syntax enable
colorscheme desert


if has('nvim')
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

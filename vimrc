set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/vundle'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'

call vundle#end()

map <C-n> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set backspace=eol,start,indent
syntax on
set number
set tabstop=2
set mouse=a
set numberwidth=1
set title
set noerrorbells
set scrolloff=3
set foldmethod=indent
set foldlevel=99
set autoindent
set smartindent
set laststatus=2
set hlsearch
set incsearch
set shiftwidth=2
set softtabstop=2
set expandtab

filetype plugin indent on


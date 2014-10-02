" Setup vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' " Inception
Plugin 'vim-scripts/louver.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'mileszs/ack.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Raimondi/delimitMate'
Plugin 'dag/vim-fish'
Plugin 'chase/vim-ansible-yaml'
Plugin 'fatih/vim-go'
Plugin 'darekwyatt/vim-fswitch'
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'

call vundle#end()

filetype plugin indent on
" End bundle setup

syntax on
colorscheme louver

" Show line numer
set number
" Show cursor position
set ruler
" Show the mode you're in
set showmode

" Vim needs a POSIX-Compliant shell. Fish is not
if $SHELL =~ 'bin/fish'
	set shell=/bin/bash
endif

" Configure airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'sol'
set t_Co=256

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
Plugin 'tpope/vim-surround'
Plugin 'bling/vim-airline'
Plugin 'a.vim'
Plugin 'iptables'
Plugin 'mhinz/vim-signify'
Plugin 'edkolev/tmuxline.vim'
Plugin 'b4winckler/vim-objc'
Plugin 'tomtom/tcomment_vim'
Plugin 'nathanaelkane/vim-indent-guides'

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

" Set filetype to iptables on files ending with v4 , v6 or iptables
au! BufNewFile,BufRead *.v4,*.v6,*.iptables setf iptables

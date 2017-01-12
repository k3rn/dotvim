" Setup vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim' " Inception
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
Plugin 'scrooloose/syntastic'
Plugin 'ynkdir/vim-vimlparser'
Plugin 'syngan/vim-vimlint'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Yggdroot/indentLine'
Plugin 'jinja'
Plugin 'aperezdc/vim-template'
Plugin 'tpope/vim-fugitive'
Plugin 'junegunn/gv.vim'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'k3rn/vim-pudb'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'NLKNguyen/papercolor-theme'
Plugin 'tmhedberg/SimpylFold'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on
" End bundle setup

syntax on
colorscheme PaperColor
set background=light

" Show line numer
set number
" Show cursor position
set ruler
" Show the mode you're in
set showmode

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set encoding=utf-8
" Vim needs a POSIX-Compliant shell. Fish is not
if $SHELL =~ 'bin/fish'
	set shell=/bin/bash
endif

" Configure airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'
let g:airline#extensions#virtualenv#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#buffer_min_count =2
set t_Co=256

" Set filetype to iptables on files ending with v4 , v6 or iptables
au! BufNewFile,BufRead *.v4,*.v6,*.iptables setf iptables

" backspace like others apps
set backspace=indent,eol,start

" the right tab width
set tabstop=4
set shiftwidth=4

" Close the window if only buffer that's is left is the NERDTRee buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Change the CWD to the NERDTree root
let g:NERDTreeChDirMode=2

" Set the textwidth to 80 and draw a line 2 collumns before it.
set tw=80
set cc=-2

" Show 3 lines around the cursor
set scrolloff=3

" Set Leader to ,
let g:mapleader = ','

" Remove trailing whitespace before saving a file
autocmd BufWritePre * :%s/\s\+$//e

" Syntastic options
nnoremap <Leader>si :SyntasticInfo<CR>
nnoremap <Leader>s :SyntasticCheck<CR>
nnoremap <Leader>se :SyntasticCheck <CR> :Errors<CR>
nnoremap <Leader>sc :lclose<CR>
let g:syntastic_sh_checkers = ['shellcheck']
let g:syntastic_c_checkers = ['clang']
let g:syntastic_python_checkers = ['python', 'pep8', 'pylint']
let g:syntastic_python_pylint_post_args = '--msg-template="{path}:{line}:{column}:{C}: [{symbol} {msg_id}] {msg}"'

" indentLine configuration
let g:indentLine_char = "│"
let g:indentLine_color_term = 253

" CtrlP configuration
let g:ctrlp_working_path_mode = 'c'

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

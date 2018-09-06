source $HOME/.vimrc
set guifont=Hack:h11
set antialias
set guioptions-=T
set guioptions-=r
set guioptions-=L
autocmd VimEnter * NERDTree ~/Documents/notes/content
autocmd VimEnter * wincmd p

fun! Buildwiki()
   	cd ~/Documents/notes
	!/Users/kern/.local/bin/simiki generate
	cd ~/Documents/notes/content
endfun

noremap <Leader>w :call Buildwiki()<CR>

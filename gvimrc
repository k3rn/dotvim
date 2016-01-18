source $HOME/.vimrc
set guifont=Hack:h11
set antialias
set guioptions-=T
set guioptions-=r
set guioptions-=L
autocmd VimEnter * NERDTree /Volumes/Hulk/Copy/notes/content

fun! Buildwiki()
   	cd /Volumes/Hulk/Copy/notes
	!/Users/kern/.virtualenvs/wiki/bin/simiki generate
	cd /Volumes/Hulk/Copy/notes/content
endfun

noremap <Leader>w :call Buildwiki()<CR>

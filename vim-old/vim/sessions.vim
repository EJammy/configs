if empty(glob('~/.vim/sessions/'))
	silent !mkdir ~/.vim/sessions/
endif

" set sessionoptions=blank,curdir,folds,help,options,tabpages,winsize,terminal
map <F5> :mks! ~/.vim/sessions/
map <F6> :source ~/.vim/sessions/

augroup session
	autocmd!
	autocmd VimLeave * mks! ~/.vim/sessions/lastClosed
augroup END
" autocmd VimEnter * source ~/vimfiles/sessions/lastClosed


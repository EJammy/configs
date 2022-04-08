if empty(glob('~/tmp'))
	silent !mkdir ~/tmp
endif
set backupdir=~/tmp
set backup
" set undofile

set number
set relativenumber

set tabstop=4
set shiftwidth=0 " use value from tabstop
set smarttab
set ignorecase
" set expandtab

" enable mouse because I'm dumb
set mouse=a

" warp words
set linebreak

" autoread on file change
set autoread

" don't wrap search
set nowrapscan


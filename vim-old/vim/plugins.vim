
" Install vim-plug if not found
if has('unix')
	if empty(glob('~/.vim/autoload/plug.vim'))
		silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
					\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	endif
endif

if has('win32')
	if empty(glob('$HOME/vimfiles/autoload/plug.vim'))
		silent !powershell.exe "iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |
					\ni $home/vimfiles/autoload/plug.vim -force"
	endif
endi


" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
			\| PlugInstall --sync | source $MYVIMRC
			\| endif


set rtp+=/usr/bin/fzf
map \ <Plug>VimwikiNextLink

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vimwiki/vimwiki'

" themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'joshdick/onedark.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'ghifarit53/tokyonight-vim'
Plug 'cocopon/iceberg.vim'
Plug 'drewtempelmeyer/palenight.vim'

" focus mode
Plug 'junegunn/goyo.vim'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'plasticboy/vim-markdown'
Plug 'dpelle/vim-LanguageTool'

" peek register
Plug 'junegunn/vim-peekaboo'
Plug 'junegunn/vim-emoji'

Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'

" Plug 'ycm-core/YouCompleteMe'
" Plug 'neoclide/coc.nvim'

call plug#end()


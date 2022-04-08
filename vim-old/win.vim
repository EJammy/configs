" hint: use mklink in cmd to create symbolic link

set shell=powershell.exe
set encoding=utf-8
let g:gdrive_path_='G:My\\\ Drive\Files\'
let g:gdrive_path=expand(expand(g:gdrive_path_))

exec "source " . g:gdrive_path . 'dotfiles/vim/vimrc'


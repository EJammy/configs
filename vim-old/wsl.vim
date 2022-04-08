" source ~/dotfiles/wsl.vim

let g:gdrive_path_='/mnt/g/My\\\ Drive/Files/'
let g:gdrive_path=expand(g:gdrive_path_)

exec "source " . g:gdrive_path . "dotfiles/vim/vimrc"

" override (use clip.exe for system clipboard)
nmap <Leader>y mpggyG:split ~/tmp/vimclip<CR>ggVGp:wq<CR>:silent !clip.exe < ~/tmp/vimclip<CR><C-L>`p
vmap <Leader>y y:split ~/tmp/vimclip<CR>ggVGp:wq<CR>:silent !clip.exe < ~/tmp/vimclip<CR><C-L>

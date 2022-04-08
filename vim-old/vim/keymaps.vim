
let mapleader=" "

map! fd <Esc>
map! jk <Esc>
map! kj <Esc>

map <C-s> :w<CR>
map! <C-s> <Esc>:w<Cr>
map <Leader>s <C-s>

" vim-fzf
map <Leader><Leader><Leader> :Commands<CR>
map <Leader><Leader>p :Commands<CR>
map  :Commands
map <Leader><Leader>c :Colors<CR>
map <Leader><Leader>f :Buffers<CR>

command! SettingsLocal vsplit ~/.vimrc
exec "command! Settings vsplit " . g:dotfile_path . "vim/vimrc"
command! Preference Settings
command Sudowrite :execute ':silent w !sudo tee % > /dev/null' | :edit!

map <Leader>pp :Preference<CR>
map <Leader>zf zfa}

" yank to system clipboard
map <Leader>y gg"+yG<C-O><C-O>
vmap <Leader>y "+y

map <Leader>bn :bn<CR>
map <Leader>bp :bp<CR>
map <Leader>bd :bp \| bd #<CR>

map <C-b>n :bn<CR>
map <C-b>p :bp<CR>
map <C-b>d :bp \| bd #<CR>

map <C-tab> :bn<CR>
map <C-S-tab> :bp<CR>
" new undo block at period
" imap . .u

nmap gh <plug>(YCMHover)

map <Leader>we :NERDTreeToggle<CR>

" <C-/>
map  <plug>NERDCommenterToggle
map <Leader>/ <plug>NERDCommenterToggle

function! ToggleTerm(termname)
    let pane = bufwinnr(a:termname)
    let buf = bufexists(a:termname)
    if pane > 0
        " pane is visible
		exe pane . "wincmd c"
    elseif buf > 0
        " buffer is not in pane
		exe "botright 12split " . a:termname
    else
        " buffer is not loaded, create
		exe "botright 12split term://zsh"
        exe "f " . a:termname
    endif
endfunction

map <Leader>wt :call ToggleTerm("toggle_term")<CR>

function FHugoNewPost(name)
	exec '!hugo new content/post/' . a:name . '.md'
	exec 'e content/post/' . a:name . '.md'
endfunc

command -nargs=1 HugoNewPost call FHugoNewPost('<args>')

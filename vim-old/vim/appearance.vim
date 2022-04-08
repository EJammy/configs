" fix color
set termguicolors

" don't highlight misspells
" set highlight-=P:SpellCap
" set highlight+=Pn

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0
colorscheme tokyonight
" colorscheme onedark
" colorscheme PaperColor

" note: background color of tokyonight is #a1a6df
let g:PaperColor_Theme_Options = {
			\   'theme': {
			\     'default': {
			\       'transparent_background': 1
			\     }
			\   }
			\ }
func! SetTransparentBackground(val)
	" let g:PaperColor_Theme_Options.theme.default.transparent_background = a:val
	" let g:tokyonight_transparent_background = a:val
	" exe "colorscheme" g:colors_name

	if a:val
		let g:neovide_transparency=0.95
	else
		let g:neovide_transparency=1
	endif
	mode
endfunc

let g:transparent_background=1
let g:neovide_transparency=0.95

command! ToggleBackground
			\ let g:transparent_background=!g:transparent_background |
			\ call SetTransparentBackground(g:transparent_background)
map <Leader>bb :ToggleBackground<CR>

" gui settings (some of these have problem in neovide
" set guifont=Cascadia\ Code:h12 " Laggy for some reason

" set guifont=Noto\ Sans\ Mono:h11 " [] misalign
set guifont=Liberation\ Mono:h11
if has('gui_running') || exists('g:GtkGuiLoaded')
	" if has('gui_gtk')
		set guifont=Cascadia\ Code:h12
	" else
	"     set guifont=Cascadia_Mono:h12:cANSI:qDRAFT,
	" endif
	set lines=40
	set columns=170
	set background=dark
	set guioptions=gm " default: egmrLtT
endif

map <Leader>f1 <cmd>set guifont=Liberation\ Mono:h11<cr>
map <Leader>f2 <cmd>set guifont=Noto\ Looped\ Lao:h12<cr>
map <Leader>f3 <cmd>set guifont=Noto\ Sans\ Mono:h11<cr>

" let g:neovide_cursor_vfx_mode = "pixiedust"
let g:neovide_cursor_vfx_mode = "railgun"
let g:neovide_cursor_vfx_particle_density=200
let g:neovide_cursor_vfx_particle_speed=10
let g:neovide_cursor_vfx_particle_lifetime=0.6

map <F11> :let g:neovide_fullscreen=!g:neovide_fullscreen<CR>
let g:neovide_remember_window_size=v:false

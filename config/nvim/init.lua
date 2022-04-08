-- util = require 'utils'

vim.g.gdrive_path='~/Files/'

vim.cmd([[
	set runtimepath^=~/.vim runtimepath+=~/.vim/after
	let &packpath = &runtimepath
	source ]] .. vim.fn.stdpath('config') .. '/' .. 'settings.vim'
)

vim.cmd('set path+=' .. vim.fn.stdpath('config'))

function Toggle_term(termname)
	local pane = vim.fn.bufwinid(termname)
	local buf = vim.fn.bufexists(termname)
	if pane > -1 then
        -- pane is visible
		vim.api.nvim_win_hide(pane)
	elseif buf > 0 then
		-- buffer loaded, not visible
		vim.cmd('botright 12split ' .. termname)
	else
		-- create buffer
		vim.cmd("botright 12split term://zsh")
        vim.cmd("file " .. termname)
		vim.opt.buflisted = false
	end
end

vim.api.nvim_set_keymap('n', '<leader>wt', '<cmd>lua Toggle_term("toggle_term")<cr>', {})

require'lsp'

require'nvim-tree'.setup()
require'feline'.setup()

-- util = require 'utils'

vim.cmd([[
	set runtimepath^=~/.vim runtimepath+=~/.vim/after
	let &packpath = &runtimepath
	source ~/.vimrc
]])

function toggle_term(termname)
	local pane = vim.fn.bufwinnr(termname)
	local buf = vim.fnbufexists(termname)
	print(pane, buf)
end

require'lsp'


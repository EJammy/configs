-- util = require 'utils'

-- plan: put everythin in one file, then seperate

vim.g.gdrive_path='~/Files/'

-- vim.cmd('source ' .. vim.fn.stdpath('config') .. '/' .. 'settings.vim')

--> Options
local options = {
	number = true,
	relativenumber = true,

	tabstop = 4,
	shiftwidth = 0, -- use value from tabstop
	smarttab = true,
	ignorecase = true,
	-- expandtab,

	-- enable mouse
	mouse = 'a',

	-- warp words
	linebreak = true,

	-- autoread on file change
	autoread = true,

	-- don't wrap search
	wrapscan = false,

	-- don't wrap lines
	wrap = false,

	scrolloff = 6,
}

print(options)
for _, i in pairs(options) do
	vim.opt[_] = i
end

vim.opt.path:append(vim.fn.stdpath('config'))
vim.opt.path:append(vim.fn.stdpath('config') .. '/lua')



--> keymaps
local map_key = vim.api.nvim_set_keymap
map_key('t', '<c-w>', '<c-\\><c-n><c-w>', {})
map_key('t', 'fd', '<c-\\><c-n>', {})


vim.cmd('command! Settings vsplit ' .. vim.fn.stdpath('config'))

vim.g.leader = ' '

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



--> Plugins
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
local packer_bootstrap
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)





-- require'lsp'

-- require'nvim-tree'.setup()
-- require'feline'.setup()

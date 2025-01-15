-- General option ------------------------------------------------ {{{
-- Set the enconding:
vim.opt.filetype = "plugin"

-- Load an indent file for the detected file type
vim.opt.filetype = "indent"

-- Turn syntax on
-- vim.opt.syntax = "on"

-- Add numbers to each line left-hand side
vim.opt.number = true

-- Highlight cursor line underneath the cursor horizontaly
vim.opt.cursorline = true

-- set shift width to 4 spaces
vim.opt.shiftwidth = 4

-- set tab width to 4 columns
vim.opt.tabstop = 4

-- User space characters intead of tabs
vim.opt.expandtab = true

-- Highlight matching characters as you type
vim.opt.incsearch = true

-- Ignore capital letters during search
vim.opt.smartcase = true

-- Show partial command you type in the last line of the screen
vim.opt.showcmd = true

-- Show mode you are on the last line
-- vim.opt.showmode = true

-- Show matching words during search
vim.opt.showmatch = true

-- Use highlighting during search
vim.opt.hlsearch = true

--  Set the commands to save in history default number is 20
vim.opt.history = 1000

-- Enable auto completion menu after pressing tab
vim.opt.wildmenu = true

-- Make wild menu behave like similar to bash completion
vim.opt.wildmode = "list:longest"

-- Set formatter option
vim.opt.formatprg =
	"java -jar /home/hvoc/.local/share/nvim/mason/packages/google-java-format/google-java-format-1.25.2-all-deps.jar --replace"

-- Set colors
vim.o.termguicolors = true

-- Set the theme
-- vim.cmd("colorscheme molokai")

-- Set map leader shortcut
-- vim.g.mapleader = ","

-- Change the current directory with
-- vim.opt.autochdir = true

-- Prevent nvim from adding comment headeds in the begginig of the line
local generalSettingsGroup = vim.api.nvim_create_augroup("General Settings", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "*" },
	callback = function()
		vim.opt.formatoptions = "ql"
	end,
	group = generalSettingsGroup,
})

-- Set the fold method
vim.opt.foldmethod = "marker"

-- }}}

-- Keym mapping ---------------------------------------{{{
function map(mode, shortcut, command)
	vim.api.nvim_set_keymap(mode, shortcut, command, { noremap = true, silent = true })
end

function nmap(shortcut, command)
	map("n", shortcut, command)
end

function imap(shortcut, command)
	map("i", shortcut, command)
end

function vmap(shortcut, command)
	map("v", shortcut, command)
end

-- navigate the split view esier
nmap("<c-j>", "<c-w>j")
nmap("<c-k>", "<c-w>k")
nmap("<c-h>", "<c-w>h")
nmap("<c-l>", "<c-w>l")

-- Resize split window
nmap("<c-up>", "<c-w>+")
nmap("<c-down>", "<c-w>-")
nmap("<c-left>", "<c-w><")
nmap("<c-right>", "<c-w>>")

-- Copy to paste to system clipboar
-- nmap("y", '"+y')
-- vmap("y", '"+y')
-- nmap("p", '"+p')
-- vmap("p", '"+p')
-- nmap("P", '"+P')
-- vmap("dd", '"+d')
-- nmap("x", '"+x')
-- vmap("y", '"+y')

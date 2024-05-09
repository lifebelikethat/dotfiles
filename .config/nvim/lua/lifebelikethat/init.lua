require("lifebelikethat.remap")
require("autoclose").setup()

vim.o.number = true
vim.o.termguicolors = true
vim.o.cursorline = true
vim.o.cursorlineopt = 'screenline'
vim.o.relativenumber = true
vim.o.guicursor = 'n-c-v-sm:block'
vim.o.laststatus = 3
vim.o.shiftwidth = 4
vim.o.tabstop = 4
vim.opt.fillchars:append { eob = " " }
vim.opt.cmdheight = 1
vim.opt.showcmd = true
vim.opt.showtabline = 0

-- indents
vim.opt.smartindent = true
vim.opt.expandtab = true

-- commandline
vim.opt.shortmess = vim.opt.shortmess + {
    c = true, -- Do not show completion messages in command line
    F = true, -- Do not show file info when editing a file, in the command line
    W = false, -- Do not show "written" in command line when writing
    I = true, -- Do not show intro message when starting Vim
}

vim.api.nvim_command('autocmd BufEnter * set cursorline')
vim.api.nvim_command('autocmd BufLeave * set nocursorline')


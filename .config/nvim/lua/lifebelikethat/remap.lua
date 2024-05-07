vim.g.mapleader = " "
-- Buffers and Netrw and Tabs
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set({"n","i", "v"}, "<c-.>", vim.cmd.bnext)
vim.keymap.set({"n", "i", "v"}, "<c-,>", vim.cmd.bprev)
vim.keymap.set("n", "<tab>", vim.cmd.tabnext)
vim.keymap.set("n", "<s-tab>", vim.cmd.tabnext)

-- Split Windows
vim.keymap.set("n", "<leader>vs", vim.cmd.vsplit)
vim.keymap.set("n", "<leader>s", vim.cmd.split)

-- switching windows
vim.keymap.set("n", "<c-l>", "<c-w>l")
vim.keymap.set("n", "<c-h>", "<c-w>h")
vim.keymap.set("n", "<c-k>", "<c-w>k")
vim.keymap.set("n", "<c-j>", "<c-w>j")

-- toggleterm
vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set("t", "<Esc>","<C-\\><C-N>", opts)

-- telescope
vim.keymap.set("n", "<space>pv", ":Telescope file_browser<CR>")
vim.keymap.set("n", "<space>pv", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")

-- vim.api.nvim_set_keymap("n", ":", [[<Cmd>Telescope cmdline<CR>]], { noremap = false, desc = "Cmdline" })
vim.api.nvim_set_keymap("n", "<leader><leader>", [[<Cmd>Telescope cmdline<CR>]], { noremap = true, desc = "Cmdline" })

-- noice
vim.keymap.set("n", "<leader>cl", [[<Cmd>NoiceDismiss<CR>]], opts)

-- lsp float
vim.keymap.set("n", "<c-k>", [[<Cmd>lua vim.diagnostic.open_float()<CR>]], opt)

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move selected items while in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- paste over without overwriting "clipboard" register
vim.keymap.set("x", "<leader>p", "\"_dP")

-- yank to system's clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

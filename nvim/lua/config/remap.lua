vim.keymap.set('n', "<leader>v", vim.cmd.Ex, { desc = "Open netrw explorer [custom]" })
vim.keymap.set('n', "<leader>b", ":b#<CR>", { desc = "Go to previous (alt) buffer [custom]" })

vim.keymap.set('v', "J", ":m '>+1<CR>gv=gv", { desc = "Move higlighted line down [custom]" })
vim.keymap.set('v', "K", ":m '<-2<CR>gv=gv", { desc = "Move higlighted line up [custom]" })

-- keeping the cursor centred during navigations
vim.keymap.set('n', "<C-d>", "<C-d>zz")
vim.keymap.set('n', "<C-u>", "<C-u>zz")
vim.keymap.set('n', "n", "nzzzv")
vim.keymap.set('n', "N", "Nzzzv")
vim.keymap.set('n', "J", "mzJ`z")
vim.keymap.set('n', "<C-j>", "mzi<CR><Esc>`z") -- break line at cursor

-- yanks to the clipboard register
vim.keymap.set('n', "<leader>y", "\"+y")
vim.keymap.set('v', "<leader>y", "\"+y")
vim.keymap.set('n', "<leader>y", "\"+Y")

-- delete to void
vim.keymap.set('n', "<leader>d", "\"_d")
vim.keymap.set('v', "<leader>d", "\"_d")

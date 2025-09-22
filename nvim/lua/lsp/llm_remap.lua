local cc = require("codecompanion")
vim.keymap.set({ "n", "v" }, "<C-a>", cc.actions, {
    noremap = true,
    silent = true,
    desc = "Open CodeCompanion Action Palette [codecompanion]",
})
vim.keymap.set({ "n", "v" }, "<leader>a", cc.toggle, {
    noremap = true,
    silent = true,
    desc = "Toggle CodeCompanion chat [codecompanion]",
})

-- Expand 'cc' into 'CodeCompanion' in the command line
vim.cmd([[cab cc CodeCompanion]])

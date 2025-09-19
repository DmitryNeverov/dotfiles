-- This is the other part that "enables LSPs" in neovim, apart from the autocompletion engine
-- Remaps are also only done for the buffer to which LSP client attaches, and not globally.
-- It could be smarter and check which capabilities a particular LSP provides, and remap those only.

local telescope_fn = require("telescope.builtin")

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local opts = { buffer = ev.buf, silent = true }

        -- Navigation
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
        vim.keymap.set("n", "gr", telescope_fn.lsp_references, opts)

        -- Editing
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set("n", "<leader>rf", vim.lsp.buf.format, opts)
        vim.keymap.set("n", "<leader>rca", vim.lsp.buf.code_action, opts)

        -- Info
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("i", "<C-k>", vim.lsp.buf.signature_help, opts)

        -- Diagnostics
        vim.keymap.set("n", "[d",
            function()
                vim.diagnostic.jump({ count = -1, float = true })
            end, opts)
        vim.keymap.set("n", "]d",
            function()
                vim.diagnostic.jump({ count = 1, float = true })
            end, opts)
        vim.keymap.set("n", "<leader>q", telescope_fn.diagnostics, opts)
    end,
})

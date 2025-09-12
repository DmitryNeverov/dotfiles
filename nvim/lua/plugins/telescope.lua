-- Fuzzy finder in directory, in git, ripgrep, etc.
-- `brew install ripgrep fd` for faster grep and find alternatives
return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function ()
        local builtin = require("telescope.builtin")

            vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Find files [telescope]" })
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Live grep [telescope]" })
    end,
}

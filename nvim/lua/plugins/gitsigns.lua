return {
    "lewis6991/gitsigns.nvim",
    config = function()
        require("gitsigns").setup {
            signcolumn = false,
            numhl = true, -- highlight the line number rather than using sign column
        }
    end
}

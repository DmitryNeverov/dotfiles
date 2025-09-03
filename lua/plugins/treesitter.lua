return {
    "nvim-treesitter/nvim-treesitter", branch = 'master',
    lazy = false,
    build = ":TSUpdate",
    config = function ()
        require("nvim-treesitter.configs").setup({
            -- parsers you care about
            ensure_installed = { "lua", "markdown", "python" },
            auto_install = true,
        })
    end,
}

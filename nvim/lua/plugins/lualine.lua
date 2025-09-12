return {
    'nvim-lualine/lualine.nvim',
    -- dependencies = { 'nvim-tree/nvim-web-devicons' }, -- don't want icons; would need a nerdfont
    config = function()
        require("lualine").setup {
            options = {
                icons_enabled = false,
                globalstatus = true,
                section_separators = { left = "", right = "" },
                component_separators = { left = "", right = "" },
            },
        }
    end,
}

-- History of undos
return {
    "mbbill/undotree",
    config = function()
        vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undo history [undotree]" })
    end,
}

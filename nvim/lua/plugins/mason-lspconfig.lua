-- Basic LSP stack
--
-- Neovim comes packed with LSP client, but language servers need to be provided.
-- mason is the manager of tooling (binaries): LSPs, debuggers, linters and formatters.
-- Note: that is different from Lazy, which manages Neovim plugins (lua or vimscript).
--
-- Since nvim v0.11, configuring LSPs is not hard, but is still required for each language.
-- We will leverage nvim-lspconfig, which brings collection of standard configs,
-- and mason-lspconfig, which adds automatic enabling of the LSP.
-- Note: language servers still need to be installed manually since automatic_installation option
-- was removed.
return {
    "mason-org/mason-lspconfig.nvim",
    opts = {
        ensure_installed = {
            "lua_ls",
            "harper_ls",
        },
    },
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
}

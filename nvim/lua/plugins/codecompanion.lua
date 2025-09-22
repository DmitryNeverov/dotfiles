-- LLM frontend for neovim, can use different models and providers using different adapters.
-- Strategies of interaction are either chat or inline, it also provides tools for agentic workflow.
return {
    "olimorris/codecompanion.nvim",
    opts = {
        strategies = {
            chat = {
                adapter = {
                    name  = "ollama",
                    model = "gpt-oss",
                }
            },
            inline = {
                adapter = {
                    name  = "ollama",
                    model = "qwen2.5-coder",
                }
            },
        },
        -- icons MUST be one character and have a trailing space, otherwise chat context will break
        display = {
            chat = {
                window = { layout = "buffer" },
                icons = {
                    buffer_pin       = "! ",
                    buffer_watch     = ". ",
                    chat_fold        = "> ",
                    tool_pending     = "… ",
                    tool_in_progress = "⏱ ",
                    tool_failure     = "✖ ",
                    tool_success     = "✔ ",
                },
            },
        },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
}

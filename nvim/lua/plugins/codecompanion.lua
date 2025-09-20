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
        }
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
}

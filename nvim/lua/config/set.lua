-- python provider
vim.g.python3_host_prog = vim.fn.expand("~/Venvs/nvim/bin/python")

-- netrw explorer settings
vim.g.netrw_banner = 0         -- disable the header at the top
vim.g.netrw_liststyle = 3      -- show a tree-style listing instead of default
vim.g.netrw_altfile = 1        -- let :b# (or C-^) go back to previous file and not to netrw listing

-- indentation
vim.opt.expandtab = true       -- spaces instead of tab characters
vim.opt.tabstop = 4            -- width of tab character display
vim.opt.softtabstop = 4        -- width of tab in insert mode
vim.opt.shiftwidth = 4         -- width of ">>" and "<<"

-- line formatting
vim.opt.list = true            -- show invisible characters
vim.opt.wrap = false           -- show long lines as is
vim.opt.number = true          -- add line numbers
vim.opt.relativenumber = true  -- line numbers relative to cursor
vim.opt.signcolumn = "yes"     -- reserve a column for signs (linting, git, etc.)
vim.opt.colorcolumn = "100"    -- highlight 100 column, anything longer is kind of too long
vim.opt.scrolloff = 8          -- keep 8 lines above or below cursor while scrolling

-- search and highlighting
vim.opt.hlsearch = true        -- highlight all matches after search
vim.opt.incsearch = true       -- incremental search as you type

-- misc
vim.opt.updatetime = 100       -- 100ms before noting cursor holding (for various context plugins)

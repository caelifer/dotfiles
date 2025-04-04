-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Set integration with system clipboard
vim.cmd("set clipboard+=unnamedplus")

-- Set theme
vim.cmd("colorscheme catppuccin")

-- Disable some providers
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_ruby_provider = 0

-- -- Set line width guidelines
-- vim.cmd("set textwidth=100")
-- -- first break on 100th column, second on 132nd
-- vim.cmd("set colorcolumn=+0,+32")
-- -- vim.cmd("highlight ColorColumn ctermbg=darkgrey guibg=lightgrey")

-- Global overrides for Go

vim.g.go_recommended_style = 0
vim.cmd("set textwidth=132")
vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set noexpandtab")

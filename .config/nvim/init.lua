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

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Template
-- vim.keymap.set("n", "", "", { desc = "" })

-- Yank to the end of line
vim.keymap.set("n", "Y", "y$", { desc = "Copy/Yank to the end of line" })

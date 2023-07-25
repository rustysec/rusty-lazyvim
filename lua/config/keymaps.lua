-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>e", require("oil").open, { desc = "Open parent directory" })
vim.keymap.set("n", "<leader><leader>", ": w<CR>", { desc = "Save" })
vim.keymap.set("n", "<leader>gb", ":Git blame<CR>", { desc = "Blame" })

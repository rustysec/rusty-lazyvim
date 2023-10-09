-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<leader>gg")
vim.keymap.del("n", "<leader>gG")

vim.keymap.set("n", "<leader>e", require("oil").open, { desc = "Open parent directory" })
vim.keymap.set("n", "<leader><leader>", ": w<cr>", { desc = "Save" })
-- vim.keymap.set("n", "<leader>gb", ":Git blame<cr>", { desc = "Blame" })
vim.keymap.set("n", "<leader>gd", ":Telescope diagnostics<cr>", { desc = "Diagnostics" })
vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<cr>", { desc = "Git reset hunk" })
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<cr>", { desc = "Git preview hunk inline" })
vim.keymap.set("n", "<leader>gP", ":Gitsigns preview_hunk<cr>", { desc = "Git preview hunk" })
vim.keymap.set("n", "<leader>gn", ":Gitsigns next_hunk<cr>", { desc = "Git next hunk" })
vim.keymap.set("n", "<leader>gl", ":Gitsigns prev_hunk<cr>", { desc = "Git previous hunk" })
vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<cr>", { desc = "Git blame line" })

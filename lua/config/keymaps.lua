-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.del("n", "<leader>gg")
vim.keymap.del("n", "<leader>gG")

vim.keymap.set("n", "<C-]>", ":w<cr>")
vim.keymap.set("i", "<C-]>", "<esc>:w<cr>")
vim.keymap.set("n", "<leader>e", require("oil").open, { desc = "Open parent directory" })
vim.keymap.set("n", "<leader><leader>", ":w<cr>", { desc = "Save" })
vim.keymap.set("n", "<leader>fd", ":Telescope diagnostics<cr>", { desc = "Diagnostics" })
vim.keymap.set("n", "<leader>fs", ":Telescope lsp_document_symbols<cr>", { desc = "Symbols" })
vim.keymap.set("n", "<leader>fS", ":Telescope lsp_dynamic_workspace_symbols<cr>", { desc = "Symbols" })
vim.keymap.set("n", "<leader>gr", ":Gitsigns reset_hunk<cr>", { desc = "Git reset hunk" })
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk_inline<cr>", { desc = "Git preview hunk inline" })
vim.keymap.set("n", "<leader>gP", ":Gitsigns preview_hunk<cr>", { desc = "Git preview hunk" })
vim.keymap.set("n", "<leader>gn", ":Gitsigns next_hunk<cr>", { desc = "Git next hunk" })
vim.keymap.set("n", "<leader>gl", ":Gitsigns prev_hunk<cr>", { desc = "Git previous hunk" })
vim.keymap.set("n", "<leader>gb", ":Gitsigns blame_line<cr>", { desc = "Git blame line" })

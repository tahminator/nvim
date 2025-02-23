-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "v", "o" }, "j", "k", { noremap = true, silent = true })
vim.keymap.set({ "n", "v", "o" }, "k", "j", { noremap = true, silent = true })
vim.keymap.set("n", "mt", "<cmd>RenderMarkdown toggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "mp", "<cmd>MarkdownPreview<CR>", { noremap = true, silent = true })

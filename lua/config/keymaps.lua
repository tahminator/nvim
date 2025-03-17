-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "v", "o" }, "j", "k", { noremap = true, silent = true })
vim.keymap.set({ "n", "v", "o" }, "k", "j", { noremap = true, silent = true })

vim.keymap.set({ "n", "v", "o" }, "<C-k>", "<C-w>j", { noremap = true, silent = true })
vim.keymap.set({ "n", "v", "o" }, "<C-j>", "<C-w>k", { noremap = true, silent = true })

vim.keymap.set("n", "mt", "<cmd>RenderMarkdown toggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "mp", "<cmd>MarkdownPreview<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>p", ":lua require('gitsigns').preview_hunk()<CR>")

vim.keymap.set("n", "c*", "*Ncgn", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>ha", function()
  require("harpoon.mark").add_file()
end, { noremap = true, silent = true })

vim.keymap.set("n", "<leader>hh", function()
  require("harpoon.ui").toggle_quick_menu()
end, { noremap = true, silent = true })

for i = 1, 9 do
  vim.keymap.set("n", "<leader>h" .. i, function()
    require("harpoon.ui").nav_file(i)
  end, { noremap = true, silent = true })
end

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local dbee = require("dbee")
vim.keymap.set({ "n", "i", "v", "x", "s", "o", "t", "c" }, "<C-n>", "<ESC>")
vim.keymap.set("n", "<leader>db", dbee.open, { noremap = true, silent = true })

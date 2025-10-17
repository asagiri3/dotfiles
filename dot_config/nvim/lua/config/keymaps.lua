-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set

-- set("x")
set("n", "x", '"_x')
set("v", "x", '"_x')
set("x", "x", '"_x')

set("v", "<leader>y", '"+y', { desc = "Copy to system clipboard" })

set("n", "<CR>", "m`o<Esc>``")
set("n", "<S-CR>", "m`O<Esc>``")

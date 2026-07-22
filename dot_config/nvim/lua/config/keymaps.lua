-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local set = vim.keymap.set

set("v", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
set("n", "<leader>tf", "<Cmd>ToggleTerm direction=float<CR>", { desc = "ToggleTerm direction=float" })
set("n", "<C-t>", "<Cmd>ToggleTerm direction=float<CR>", { desc = "ToggleTerm direction=float" })
set("t", "<C-t>", "<Cmd>ToggleTerm direction=float<CR>", { desc = "ToggleTerm direction=float" })
set("n", "!!", "<Cmd>q<CR>", { desc = "quit, nothing more ..." })
set("t", "<Esc><Esc>", "<Cmd>q<CR>", { desc = "quit when using terminal mode" })
set("n", "<Esc><Esc>", "<Cmd>q<CR>", { desc = "quit" })

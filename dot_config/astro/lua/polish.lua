-- if true then return end -- WARN: REMOVE THIS LINE TO ACTIVATE THIS FILE

-- This will run last in the setup process.
-- This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here

local set = vim.keymap.set

set("v", "<leader>y", '"+y', { desc = "Copy to system clipboard" })
set("n", "<leader>tf", "<Cmd>ToggleTerm direction=float<CR>", { desc = "ToggleTerm direction=float" })
set("n", "<C-t>", "<Cmd>ToggleTerm direction=float<CR>", { desc = "ToggleTerm direction=float" })
set("t", "<C-t>", "<Cmd>ToggleTerm direction=float<CR>", { desc = "ToggleTerm direction=float" })
set("n", "!!", "<Cmd>q<CR>", { desc = "quit, nothing more ..." })
set("t", "<Esc><Esc>", "<Cmd>q<CR>", { desc = "quit when using terminal mode" })
set("n", "<Esc><Esc>", "<Cmd>q<CR>", { desc = "quit" })

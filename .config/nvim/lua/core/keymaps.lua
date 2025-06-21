-- clear highlights on search when pressing <esc> in normal mode
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- keybinds to make split navigation easier.
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- navigate opened buffer tabs with shift + h/l
vim.keymap.set("n", "L", ":bp<CR>", { desc = "Navigate to the right tab" })
vim.keymap.set("n", "H", ":bn<CR>", { desc = "Navigate to the left tab" })

-- move selected items vertically with shift + j/k
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected item down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected item up" })

-- move selected items horizontally with </>
vim.keymap.set("v", "<", "<gv", { desc = "Move selected item left" })
vim.keymap.set("v", ">", ">gv", { desc = "Move selected item right" })

-- put next/previous search item at the center
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- -- open snacks explorer
-- vim.keymap.set("n", "<leader>e", "<Cmd>:lua Snacks.explorer()<CR>", { desc = "Open [E]xplorer" })

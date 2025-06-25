-- enable line number
vim.o.number = true

-- enable relative line number
vim.o.relativenumber = true

-- enable mouse mode
vim.o.mouse = "a"

-- don't show the mode
vim.o.showmode = false

-- sync clipboard between os and neovim.
vim.schedule(function()
	vim.o.clipboard = "unnamedplus"
end)

-- enable break indent
vim.o.breakindent = true

-- save undo history
vim.o.undofile = true

-- case-insensitive searching unless \c or one or more capital letters in the search term
vim.o.ignorecase = true
vim.o.smartcase = true

-- keep signcolumn on by default
vim.o.signcolumn = "yes"

-- decrease update time
vim.o.updatetime = 250

-- decrease mapped sequence wait time
vim.o.timeoutlen = 300

-- configure how new splits should be opened
vim.o.splitright = true
vim.o.splitbelow = true

-- preview substitutions live, as you type!
vim.o.inccommand = "split"

-- show which line your cursor is on
vim.o.cursorline = true

-- minimal number of screen lines to keep above and below the cursor.
vim.o.scrolloff = 10

-- if performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s)
-- see `:help 'confirm'`
vim.o.confirm = true

-- set <tab> to be 2 character
vim.o.tabstop = 2

-- set indentation to be 2 spaces
vim.o.shiftwidth = 2

-- set number of spaces that a tab counts for while performing editing operations
vim.o.softtabstop = 2

-- convert tabs to spaves
vim.o.expandtab = true

-- wrap lines at convenient point
vim.o.linebreak = true

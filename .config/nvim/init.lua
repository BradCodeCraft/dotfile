-- set <leader> key
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- enable/disable nerd font
vim.g.have_nerd_font = false

require("core.autocommands")
require("core.keymaps")
require("core.options")
require("core.lazy")

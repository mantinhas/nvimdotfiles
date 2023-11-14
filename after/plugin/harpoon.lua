local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local term = require("harpoon.term")

vim.keymap.set("n","<leader>a", mark.add_file)
vim.keymap.set("n","<C-e>", ui.toggle_quick_menu)

vim.keymap.set("n","<C-m>", function() ui.nav_file(1) end)
vim.keymap.set("n","<C-a>", function() ui.nav_file(2) end)
--vim.keymap.set("n","<C-t>", function() ui.nav_file(3) end)

vim.keymap.set("n","<leader>n", function() ui.nav_next() end)
vim.keymap.set("n","<leader>p", function() ui.nav_prev() end)

vim.keymap.set("n","<C-t>", function() term.gotoTerminal(1) end)
vim.keymap.set("t","<C-e>", ui.toggle_quick_menu)


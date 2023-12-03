vim.g.mapleader=" "

vim.keymap.set("n","<leader>pv", vim.cmd.Ex)
vim.keymap.set("n","<leader>w",vim.cmd.w)
vim.keymap.set('t', '<Esc>', [[<C-\><C-n>]])

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<C-h>", function()
    vim.opt.hlsearch = not(vim.opt.hlsearch:get())
end)

-- compile silent button
vim.keymap.set("n", "<leader>s", function()
    if vim.bo.filetype == "tex" then
        vim.cmd("silent !pdflatex %")
    end
end)

-- compile button
vim.keymap.set("n", "<leader>cc", function()
    if vim.bo.filetype == "tex" then
        vim.cmd("!pdflatex %")
    end
end)

-- compile button
vim.keymap.set("n", "<leader>cu", function()
    if vim.bo.filetype == "tex" then
        vim.cmd("!pdflatex -shell-escape %")
    end
end)

-- run button
vim.keymap.set("n", "<leader>r", function()
    if vim.bo.filetype == "tex" then
        vim.cmd("silent !zathura %:r.pdf &")
    end
end)

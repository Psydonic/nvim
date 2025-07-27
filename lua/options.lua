require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!


vim.opt.foldmethod = 'expr' -- use expression for foldin
vim.opt.foldexpr = 'nvim_treesitter#foldexpr()' -- use treesitter for folding
vim.opt.foldlevel = 99 -- set the fold level to a high number to keep folds open by default

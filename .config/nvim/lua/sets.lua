vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4      -- Number of spaces a <Tab> counts for
vim.opt.shiftwidth = 4   -- Size of an indent
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.softtabstop = 4  -- Number of spaces inserted when pressing <Tab>
vim.cmd("colorscheme onedark")

vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
vim.api.nvim_set_hl(0, "NormalNC", { bg = "NONE" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "NONE" })


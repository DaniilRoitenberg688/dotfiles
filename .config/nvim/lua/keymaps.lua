vim.keymap.set('n', '<C-n>', '<cmd>Ex<CR>')

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>p', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- telescope diagnostic
vim.keymap.set("n", "<leader>xx", function()
  require("telescope.builtin").diagnostics({ bufnr = 0 }) -- ошибки текущего буфера
end, { desc = "Diagnostics (buffer)" })

vim.keymap.set("n", "<leader>xa", function()
  require("telescope.builtin").diagnostics() -- весь проект
end, { desc = "Diagnostics (workspace)" })

local colors = require('themer')
vim.keymap.set('n', '<leader>tt', function() colors(require("telescope.themes").get_dropdown {}) end,
    { desc = 'Change theme' })



-- lsp
vim.keymap.set('n', '<leader>ff', function() vim.lsp.buf.format({ async = true })end, { desc = 'Format buffer' })
vim.keymap.set('n', 'ca', vim.lsp.buf.code_action, { desc = 'Code actions' })
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc = 'Code actions' })

-- harpoon
local harpoon_mark = require("harpoon.mark")
local harpoon_ui = require("harpoon.ui")
vim.keymap.set('n', '<leader>a', harpoon_mark.add_file, {desc = 'Add file to harpoon'})
vim.keymap.set('n', '<leader>s', harpoon_ui.toggle_quick_menu, {desc = 'Harpoon quick menu'})
-- harpoon windows
vim.keymap.set('n', '<leader>1', function() harpoon_ui.nav_file(1) end)
vim.keymap.set('n', '<leader>2', function() harpoon_ui.nav_file(2) end)
vim.keymap.set('n', '<leader>3', function() harpoon_ui.nav_file(3) end)
vim.keymap.set('n', '<leader>4', function() harpoon_ui.nav_file(4) end)
vim.keymap.set('n', '<leader>5', function() harpoon_ui.nav_file(5) end)
vim.keymap.set('n', '<leader>6', function() harpoon_ui.nav_file(6) end)
vim.keymap.set('n', '<leader>7', function() harpoon_ui.nav_file(7) end)
vim.keymap.set('n', '<leader>8', function() harpoon_ui.nav_file(8) end)

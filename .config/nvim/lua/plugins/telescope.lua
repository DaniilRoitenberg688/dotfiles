return {
    'nvim-telescope/telescope.nvim',
    version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    },
    -- config = function(_, opts)
    --     local trouble = require("trouble.sources.telescope")
    --     local telescope = require("telescope")
    --
    --     telescope.setup({
    --         defaults = {
    --             mappings = {
    --                 i = { ["<leader>xx"] = trouble.open },
    --                 n = { ["<leader>xx"] = trouble.open },
    --             },
    --         },
    --     })
    -- end
}

return {
    "folke/trouble.nvim",
    opts = {
        focus = true,
        modes = {
            diagnostics = {
                win = {
                    type = "float",
                    relative = "editor",
                    border = "rounded",
                    title = " Diagnostics ",
                    title_pos = "center",
                    position = { 0.3, 0.5 }, -- { row, col } в долях экрана
                    size = { width = 0.6, height = 0.5 },
                    zindex = 200,
                },
                preview = {
                    type = "float",
                    relative = "editor",
                    border = "rounded",
                    title = " Preview ",
                    title_pos = "center",
                    position = { 0.3, 0.5 },
                    size = { width = 0.6, height = 0.3 },
                    zindex = 200,
                },
            },
        },
    },
    cmd = "Trouble",
    -- keys = {
    --     {
    --         "<leader>xx",
    --         "<cmd>Trouble diagnostics toggle filter.buf=0<cr>",
    --         desc = "Diagnostics (Trouble)",
    --     },
    --     {
    --         "<leader>xa",
    --         "<cmd>Trouble diagnostics toggle<cr>",
    --         desc = "Buffer Diagnostics (Trouble)",
    --     },
    --     {
    --         "<leader>cs",
    --         "<cmd>Trouble symbols toggle focus=false<cr>",
    --         desc = "Symbols (Trouble)",
    --     },
    --     {
    --         "<leader>cl",
    --         "<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
    --         desc = "LSP Definitions / references / ... (Trouble)",
    --     },
    --     {
    --         "<leader>xL",
    --         "<cmd>Trouble loclist toggle<cr>",
    --         desc = "Location List (Trouble)",
    --     },
    --     {
    --         "<leader>xQ",
    --         "<cmd>Trouble qflist toggle<cr>",
    --         desc = "Quickfix List (Trouble)",
    --     },
    -- },
}

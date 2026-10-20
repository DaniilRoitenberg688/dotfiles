return {
  'nvim-treesitter/nvim-treesitter',
  branch = 'main',
  lazy = false,
  build = ':TSUpdate',
  config = function()
    local parsers = { 'rust', 'javascript', 'python', 'lua' }

    -- Установка парсеров (асинхронно, уже установленные пропускаются)
    require('nvim-treesitter').install(parsers)

    -- Включаем подсветку для этих типов файлов
    vim.api.nvim_create_autocmd('FileType', {
      pattern = parsers,
      callback = function()
        -- pcall, чтобы не было ошибки, если парсер ещё не установился
        pcall(vim.treesitter.start)
      end,
    })
  end,
}

local pickers = require "telescope.pickers"
local finders = require "telescope.finders"
local conf = require("telescope.config").values
local actions = require "telescope.actions"
local action_state = require "telescope.actions.state"


local path = vim.fn.expand("~/.config/theme")

local function apply()
  local f = io.open(path)
  if not f then return end
  local name = f:read("*l"); f:close()
  if name and name ~= "" then pcall(vim.cmd.colorscheme, name) end
  print(name)
end


local function save_theme(name)
  name = name or vim.g.colors_name
  if not name or name == "" then
    vim.notify("Нет активной темы", vim.log.levels.WARN)
    return false
  end

  local ok, err = pcall(vim.fn.writefile, { name }, path)
  if not ok then
    vim.notify("Не удалось записать тему: " .. tostring(err), vim.log.levels.ERROR)
    return false
  end
  return true
end

apply()


-- our picker function: colors
local colors = function(opts)
  opts = opts or {}
  pickers.new(opts, {
    prompt_title = "theme",
    finder = finders.new_table {

        results = vim.fn.getcompletion('', 'color')
        -- results = { "a" },
        -- entry_maker = function(entry)
        --     return {
        --       value = entry,
        --       display = entry[1],
        --       ordinal = entry[1],
        --     }
        -- end

    },
    sorter = conf.generic_sorter(opts),
    attach_mappings = function(prompt_bufnr, map)
      actions.select_default:replace(function()
        actions.close(prompt_bufnr)
        local selection = action_state.get_selected_entry()
        -- vim.api.nvim_put({ selection.value }, "", true, true)
        print(vim.inspect(selection[1]))
        save_theme(selection[1])
        apply()
        vim.cmd.restart()
      end)
      return true
    end,
  }):find()
end

-- to execute the function
-- colors(require("telescope.themes").get_dropdown{})
return colors

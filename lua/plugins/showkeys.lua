return {
  "nvzone/showkeys",
  cmd = "ShowkeysToggle",
  config = function()
    -- Настройка showkeys с защитой от конфликтов с окнами автодополнения
    require("showkeys").setup({
      timeout = 1,
      maxkeys = 5,
      position = "bottom-right",
      winopts = {
        relative = "editor",
        style = "minimal",
        border = "single",
        height = 1,
        row = 1,
        col = 0,
        zindex = 200, -- Увеличено для избежания конфликта с окнами автодополнения
      },
    })

    -- Защита от ошибок при конфликте с окнами автодополнения
    -- Перехватываем ошибки обновления окна в функции redraw
    local ok, utils = pcall(require, "showkeys.utils")
    if ok and utils and utils.redraw then
      local original_redraw = utils.redraw
      utils.redraw = function(...)
        local success, err = pcall(original_redraw, ...)
        if not success and err and err:match("Invalid 'window'") then
          -- Игнорируем ошибку, если окно не существует
          return
        end
        if not success then
          error(err)
        end
      end
    end
  end,
}

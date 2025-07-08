return {
  "nvzone/showkeys",
  cmd = "ShowkeysToggle",
  opts = {
    timeout = 1,
    maxkeys = 5,
    -- more opts
    position = "bottom-right",
    winopts = {
      -- focusable = false,
      relative = "editor",
      style = "minimal",
      border = "single",
      height = 1,
      row = 1,
      col = 0,
      zindex = 100,
    },
  }
}

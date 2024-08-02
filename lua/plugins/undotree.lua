return {
  {
    "mbbill/undotree",
    config = function()
      vim.keymap.set("n", "<M-u>", vim.cmd.UndotreeToggle)
    end,
  },
}

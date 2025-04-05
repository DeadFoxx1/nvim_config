return {
  "ribru17/bamboo.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("bamboo").setup()
    vim.cmd.colorscheme 'bamboo'
    require("bamboo").load()
  end,
}

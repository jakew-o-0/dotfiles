return {
  'mellow-theme/mellow.nvim',
  priority = 1000,
  config = function()
    vim.g.mellow_transparent = true
    vim.cmd("colorscheme mellow")
  end,
}

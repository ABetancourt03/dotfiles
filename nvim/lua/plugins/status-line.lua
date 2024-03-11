return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require('lualine').setup({
      options = {
        theme = 'gruvbox_dark',
        section_separators = '',
        component_separators = '|'
      }
    })
  end
}

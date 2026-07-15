return {
  'nvim-telescope/telescope.nvim', version = '*',
  requires = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-fzf-native.nvim', build = 'make',
  }
}
